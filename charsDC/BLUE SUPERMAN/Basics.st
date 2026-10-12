;-------------------------------------------------------------------------------
; Basics CNS File
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
; Lose by Time Over
;-------------------------------------------------------------------------------
[Statedef 170]
type = S
ctrl = 0
anim = 171
velset = 0,0

[State 170]
type = PosSet
trigger1 = Time = 0
y = 0

[State 170]
type = NotHitBy
trigger1 = 1
value = SCA
;-------------------------------------------------------------------------------
; Lose
;-------------------------------------------------------------------------------
[Statedef 172]
type = S
ctrl = 0
velset = 0,0
anim = 172


[State 172]
type = PosSet
trigger1 = Time = 0
y = 0


[State 172]
type = NotHitBy
trigger1 = 1
value = SCA
;-------------------------------------------------------------------------------
; DRAWGAME (Time over)
;-------------------------------------------------------------------------------
[Statedef 175]
type = S
ctrl = 0
velset = 0,0

[State 175, 1] ; If no anim, use go to lose state.
type = ChangeState
trigger1 = Time = 0
trigger1 = !SelfAnimExist(175)
value = 170

[State 175, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 175

[State 175, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
;-------------------------------------------------------------------------------
; Winposes
[Statedef 180]  ; winpose selector
type = S
ctrl = 0
velset = 0,0

[State 180,Winpose decider]
type = ChangeState
trigger1 = Time = 0
value = 181 + ((Random * 3) / 1000)     ; change the 1 to however many winposes you have


;-------------------------------------------------------------------------------
; Win pose 1- Win KO
;-------------------------------------------------------------------------------
[Statedef 181]
type = S
ctrl = 0
physics = N
anim = 181
sprpriority = 0
;facep2 = 1
velset = 0,0

[State 181]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 181]
type = varset
trigger1 = Time = 0
var(1) = random%2

[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem =2
value = 43,0
volume = 100






[State 181, 3]
type = AssertSpecial
trigger1 = Time < 0
flag = roundnotover
;------------------------------------------------------------
; Win pose 2- Win KO
;-------------------------------------------------------------------------------
[Statedef 182]
type = S
ctrl = 0
physics = N
anim = 182
sprpriority = 0
;facep2 = 1
velset = 0,0

[State 182]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 182]
type = varset
trigger1 = Time = 0
var(1) = random%2

[State 0, PlaySnd]
type = PlaySnd
triggerall = time > 22
triggerall = time < 1192
trigger1 = timemod = 4,1
value = 58




[State 182]
type = AssertSpecial
trigger1 = Time < 0
flag = roundnotover
;-------------------------------------------------------------------------------
; Win pose 1 - Time Over
;-------------------------------------------------------------------------------
[Statedef 189]
type = S
ctrl = 0
anim = 181
velset = 0,0
sprpriority = 0

[State 189]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay


[State 189]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1540, 2

[State 189]
type = AssertSpecial
trigger1 = Time < 90
flag = roundnotover
;---------------------------------------------------------------------------
; Introduction
;---------------------------------------------------------------------------
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
[Statedef 192]
type = A
ctrl = 0
anim = 1
velset = 0,0

[State 192, VarSet]
type = VarSet
trigger1 = !var(5)
v = 5
value = ceil(pos x)

[State 192, AssertSpecial Intro] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 192, velset]
type = posadd
trigger1 = anim = 1
trigger1 = backedgedist > -50
x = -10
y = -10

[State 192, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 1
trigger1 = backedgedist <= -50
value = 191

[State 192, VelSet]
type = VelSet
trigger1 = anim = 191
trigger1 = animelem = 2
x = 0.5
y = 0.5

[State 192, Veladd]
type = Veladd
trigger1 = anim = 191
trigger1 = animelem = 3
x = 10.0
y = 10.0

[State 192, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 191
trigger1 = vel y > 0 && pos y >= 0
value = 192

[State 192, VelSet]
type = VelSet
trigger1 = anim = 192
x = 0
y = 0

[State 192, PosSet]
type = PosSet
trigger1 = anim = 192
x = var(5)
y = 0

[State 192, EnvShake]
type = EnvShake
trigger1 = anim = 192
trigger1 = animelem = 1
time = 20
freq = 180
ampl = -4
phase = 90

[State 192, b1] ;explod
type = Explod
trigger1 = !numexplod(6011)
trigger1 = anim = 192
trigger1 = animelem = 1
anim = 6011
postype = p1
pos = 0, 17
sprpriority = -3
removetime = -2
persistent = 0

[State 192, 3]
type = PlaySnd
trigger1 = anim = 191
trigger1 = AnimElem = 1
value = 31

[State 192, 3] ;Change to stand state when done
type = ChangeState
trigger1 = anim = 192
trigger1 = AnimTime = 0
value = 12

[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 193, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 193

[State 193, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = Time = [0,355]
flag = Intro

[State 193, Explod]
type = Explod
triggerall = NumExplod(1970) = 0
trigger1 = Time = 0
anim = 1970
ID = 1970
pos = -60,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 0
pausemovetime = 0
sprpriority = 9
ownpal = 1

[State 193, Explod]
type = Explod
triggerall = NumExplod(1971) = 0
trigger1 = Time = 200
anim = 1971
ID = 1971
pos = -60,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 3,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 0
pausemovetime = 0
sprpriority = 9
ownpal = 1

[State 193, Explod]
type = Explod
triggerall = NumExplod(1972) = 0
trigger1 = Time = 260
anim = 1972
ID = 1972
pos = 140,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 6,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 0
pausemovetime = 0
sprpriority = 9
ownpal = 1

[State 193, Explod]
type = Explod
triggerall = NumExplod(1305) = 0
trigger1 = Time = 260 || NumExplod(1972) != 0
anim = 1305
ID = 1305
pos = 140,-85
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -2,0
accel = 0,0
random = 0,0
scale = 0.5,0.5
removetime = -2
supermovetime = 0
pausemovetime = 0
sprpriority = 10
ownpal = 1
persistent = 0

[State 193, PlaySnd]
type = PlaySnd
trigger1 = Time = 260 || NumExplod(1972) != 0
value = 25, 0
persistent = 0

[State 193, Explod]
type = Explod
triggerall = NumExplod(1980) = 0
trigger1 = Time = 0
anim = 1980
ID = 1980
pos = 20,-25
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 0
pausemovetime = 0
sprpriority = -6
ownpal = 1

[State 193, Explod]
type = Explod
triggerall = NumExplod(1981) = 0
trigger1 = Time = 210
anim = 1981
ID = 1981
pos = 20,-25
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-1
accel = 0,-1.5
random = 0,0
removetime = -2
supermovetime = 0
pausemovetime = 0
sprpriority = -6
ownpal = 1

[State 193, Explod]
type = Explod
triggerall = NumExplod(8004) = 0
trigger1 = Time = 210 || NumExplod(1981) != 0
anim = 8004
ID = 8004
pos = 20,0
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
sprpriority = -6
ownpal = 1
persistent = 0

[State 193, PlaySnd]
type = PlaySnd
trigger1 = Time = 210 || NumExplod(1981) != 0 || NumExplod(8004) != 0
value = 9999,7
persistent = 0

[State 193, Explod]
type = Explod
triggerall = NumExplod(1990) = 0
trigger1 = Time = 0
anim = 1990
ID = 1990
pos = 20,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 0
pausemovetime = 0
sprpriority = 6
ownpal = 1

[State 193, Explod]
type = Explod
triggerall = NumExplod(1991) = 0
trigger1 = Time = 272
anim = 1991
ID = 1991
pos = 20,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 0
pausemovetime = 0
sprpriority = 6
ownpal = 1

[State 193, Explod]
type = Explod
triggerall = NumExplod(1992) = 0
trigger1 = Time = 302
anim = 1992
ID = 1992
pos = 20,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-2
accel = 0,-1
random = 0,0
removetime = -2
supermovetime = 0
pausemovetime = 0
sprpriority = 6
ownpal = 1

[State 193, Explod]
type = Explod
triggerall = NumExplod(8005) = 0 || NumExplod(1992) != 0
trigger1 = Time = 302
anim = 8004
ID = 8005
pos = 20,0
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
sprpriority = 9
ownpal = 1
persistent = 0

[State 193, PlaySnd]
type = PlaySnd
trigger1 = Time = 302 || NumExplod(1992) != 0 || NumExplod(8005) != 0
value = 9999,7
persistent = 0

[State 193, Explod]
type = Explod
triggerall = NumExplod(1993) = 0
trigger1 = Time = 0
anim = 1993
ID = 1993
pos = 20,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 0
pausemovetime = 0
sprpriority = 7
ownpal = 1

[State 193, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Taunt
;---------------------------------------------------------------------------
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 195, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Punch
;---------------------------------------------------------------------------
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 200
poweradd = 20
sprpriority = 2

[State 200, 1]
type = PlaySnd
trigger1 = Time = 2
value = 50


[State 200, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 200, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 28,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = -1
hitsound = s8000,0
guardsound = S8500,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 200]
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

[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Punch
;---------------------------------------------------------------------------
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 210
poweradd = 40
sprpriority = 2

[State 210, 1]
type = PlaySnd
trigger1 = Time = 2
value = 51
volume = 100

[State 210, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 210, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 52,0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = -1
hitsound = s8000,1
guardsound = S8500,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
id = 210

[State 210]
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

[State 210, statetypeset]
type = statetypeset
trigger1 = NumTarget(220) != 0
trigger1 = Target(220), StateType = A
trigger2 = NumTarget(250) != 0
trigger2 = Target(250), StateType = A
trigger3 = NumTarget(450) != 0
trigger3 = Target(450), StateType = A
trigger4 = NumTarget(210) != 0
trigger4 = Target(210), StateType = A
trigger5 = NumTarget(410) != 0
trigger5 = Target(410), StateType = A
trigger6 = NumTarget(240) != 0
trigger6 = Target(240), StateType = A
trigger7 = NumTarget(440) != 0
trigger7 = Target(440), StateType = A
movetype = I
ignorehitpause = 1
persistent = 1

[State 210, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Punch
;---------------------------------------------------------------------------
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 220
poweradd = 60
sprpriority = 2

[State 220, 1]
type = PlaySnd
trigger1 = Time = 2
value = 52


[State 220, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 220, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 72,0
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = s8222
sparkxy = -30,-79
guard.sparkno = -1
hitsound = s8000,2
guardsound = S8500,0
ground.type = High
yaccel = 0.35 + (0.25 * (NumTarget(220) || NumTarget(250)))
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -10,-4
air.type = Low
air.hittime = 18
air.velocity = -6,-7
envshake.time = 7
envshake.ampl = 4
fall=1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 220

[State 220, statetypeset]
type = statetypeset
trigger1 = NumTarget(220) != 0
trigger1 = Target(220), StateType = A
trigger2 = NumTarget(250) != 0
trigger2 = Target(250), StateType = A
trigger3 = NumTarget(450) != 0
trigger3 = Target(450), StateType = A
movetype = I
ignorehitpause = 1
persistent = 1

[State 220]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -30),floor(p2dist y - 79)
anim = 8001
scale = 0.5,0.5

[State 220, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Kick
;---------------------------------------------------------------------------
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 230
poweradd = 20
sprpriority = 2

[State 230, 1]
type = PlaySnd
trigger1 = Time = 2
value = 50

[State 230, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 230, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 28,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -15,-65
guard.sparkno = -1;s8001
hitsound = s8000,0
guardsound = S8500,0
ground.type = low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4
airguard.velocity = -10,-.8
air.type = high
air.velocity = -4,-3
air.hittime = 15
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 230]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 65)
anim = 8001
scale = 0.5,0.5

[State 230, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Kick
;---------------------------------------------------------------------------
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 240
poweradd = 40
sprpriority = 2

[State 240, 1]
type = PlaySnd
trigger1 = Time = 2
value = 51

[State 240, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 240, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 52,0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = -1
hitsound = s8000,1
guardsound = S8500,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
id = 240

[State 240]
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

[State 240, statetypeset]
type = statetypeset
trigger1 = NumTarget(220) != 0
trigger1 = Target(220), StateType = A
trigger2 = NumTarget(250) != 0
trigger2 = Target(250), StateType = A
trigger3 = NumTarget(450) != 0
trigger3 = Target(450), StateType = A
trigger4 = NumTarget(210) != 0
trigger4 = Target(210), StateType = A
trigger5 = NumTarget(410) != 0
trigger5 = Target(410), StateType = A
trigger6 = NumTarget(240) != 0
trigger6 = Target(240), StateType = A
trigger7 = NumTarget(440) != 0
trigger7 = Target(440), StateType = A
movetype = I
ignorehitpause = 1
persistent = 1

[State 240, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Kick
;---------------------------------------------------------------------------
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim=250
poweradd= 60
sprpriority = 2


[State 250, 1]
type = PlaySnd
trigger1 = Time = 2
value = 52


[State 250, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 250, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 72,0
animtype = High
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12,12
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = -1;s8001
hitsound = s8000,2
guardsound = S8500,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
yaccel = 0.35 + (0.25 * (NumTarget(220) || NumTarget(250)))
ground.velocity = -10,-4
air.type = Low
air.hittime = 18
air.velocity = -6,-7
envshake.time = 7
envshake.ampl = 4
fall=1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 250

[State 250, HitDef]
type = Null;HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 72,0
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = s8222
sparkxy = -15,-79
guard.sparkno = -1
hitsound = s8000,2
guardsound = S8500,0
ground.type = High
ground.slidetime = 13
ground.hittime  = 10
ground.velocity = -10,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 250

[State 250, statetypeset]
type = statetypeset
trigger1 = NumTarget(220) != 0
trigger1 = Target(220), StateType = A
trigger2 = NumTarget(250) != 0
trigger2 = Target(250), StateType = A
trigger3 = NumTarget(450) != 0
trigger3 = Target(450), StateType = A
movetype = I
ignorehitpause = 1
persistent = 1

[State 250]
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

[State 250, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Punch
;---------------------------------------------------------------------------
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 400
poweradd = 20
sprpriority = 2


[State 400, 1]
type = PlaySnd
trigger1 = Time = 2
value = 50

[State 400, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 400, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 28,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -15,-59
guard.sparkno = -1;s8001
hitsound = s8000,0
guardsound = S8500,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.velocity = -5,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 400]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 59)
anim = 8001
scale = 0.5,0.5

[State 400, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Punch
;---------------------------------------------------------------------------
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 410
poweradd = 40
sprpriority = 2

[State 410, 1]
type = PlaySnd
trigger1 = Time = 2
value = 51

[State 410, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 410, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 52,0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -15,-59
guard.sparkno = -1
hitsound = s8000,1
guardsound = S8500,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4,0
air.velocity = -5,0
airguard.velocity = -6,0
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
id = 410

[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 59)
anim = 8001
scale = 0.5,0.5

[State 410, statetypeset]
type = statetypeset
trigger1 = NumTarget(220) != 0
trigger1 = Target(220), StateType = A
trigger2 = NumTarget(250) != 0
trigger2 = Target(250), StateType = A
trigger3 = NumTarget(450) != 0
trigger3 = Target(450), StateType = A
trigger4 = NumTarget(210) != 0
trigger4 = Target(210), StateType = A
trigger5 = NumTarget(410) != 0
trigger5 = Target(410), StateType = A
trigger6 = NumTarget(240) != 0
trigger6 = Target(240), StateType = A
trigger7 = NumTarget(440) != 0
trigger7 = Target(440), StateType = A
movetype = I
ignorehitpause = 1
persistent = 1

[State 410, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Crouching Strong Punch
;---------------------------------------------------------------------------
[StateDef 420]
anim = 420
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
juggle = 1
poweradd = 60

[State 420, 1]
type = PlaySnd
trigger1 = Time = 2
value = 52


[State 420, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 420, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C, NA
animtype = Hard
damage = 55
priority = 4, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,11
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = -1;s8001
hitsound = s8000,2
guardsound = S8500,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1,-16+((NumHelper(3302)||NumHelper(3304))*-6)
guard.velocity = -5
air.velocity = -1,-16+((NumHelper(3302)||NumHelper(3304))*-6)
air.hittime = 17
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
;ground.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;air.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0
;down.cornerpush.veloff = 0
fall = 1
fall.recover = 0
ID = 420

[State 420]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 59)
anim = 8001
scale = 0.5,0.5

[State 420, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Kick
;---------------------------------------------------------------------------
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 430
poweradd = 20
sprpriority = 2

[State 430, 1]
type = PlaySnd
trigger1 = Time = 2
value = 50

[State 430, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 430, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 28,0
animtype = Light
hitflag = MAF
guardflag = LA
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -15,-10
guard.sparkno = -1
hitsound = s8000,0
guardsound = S8500,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 10)
anim = 8001
scale = 0.5,0.5

[State 430, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Kick
;---------------------------------------------------------------------------
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 440
poweradd = 40
sprpriority = 2

[State 440, 1]
type = PlaySnd
trigger1 = Time = 2
value = 51
volume = 100

[State 440, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 440, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 52,0
animtype = Medium
hitflag = MAF
guardflag = LA
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -15,-10
guard.sparkno = -1;s8001
hitsound = s8000,1
guardsound = S8500,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
id = 440

[State 410]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 10)
anim = 8001
scale = 0.5,0.5

[State 440, statetypeset]
type = statetypeset
trigger1 = NumTarget(220) != 0
trigger1 = Target(220), StateType = A
trigger2 = NumTarget(250) != 0
trigger2 = Target(250), StateType = A
trigger3 = NumTarget(450) != 0
trigger3 = Target(450), StateType = A
trigger4 = NumTarget(210) != 0
trigger4 = Target(210), StateType = A
trigger5 = NumTarget(410) != 0
trigger5 = Target(410), StateType = A
trigger6 = NumTarget(240) != 0
trigger6 = Target(240), StateType = A
trigger7 = NumTarget(440) != 0
trigger7 = Target(440), StateType = A
movetype = I
ignorehitpause = 1
persistent = 1

[State 440, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Kick
;---------------------------------------------------------------------------
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 450
poweradd = 60
sprpriority = 2

[State 450, 1]
type = PlaySnd
trigger1 = Time = 2
value = 52



[State 450, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 450, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 72,0
animtype = High
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12,12
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = -1;s8001
hitsound = s8000,2
guardsound = S8500,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -10,-4
air.type = Low
air.hittime = 18
air.velocity = -6,-7
envshake.time = 7
envshake.ampl = 4
fall=1
ID = 450
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 450]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 59)
anim = 8001
scale = 0.5,0.5

[State 450, statetypeset]
type = statetypeset
trigger1 = NumTarget(220) != 0
trigger1 = Target(220), StateType = A
trigger2 = NumTarget(250) != 0
trigger2 = Target(250), StateType = A
trigger3 = NumTarget(450) != 0
trigger3 = Target(450), StateType = A
movetype = I
ignorehitpause = 1
persistent = 1

[State 450, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Jumping Light Punch
;---------------------------------------------------------------------------
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 600
poweradd = 20
sprpriority = 2

[State 600, 1]
type = PlaySnd
trigger1 = Time = 2
value = 50


[State 600, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 600, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 28,0
animtype = Light
guardflag = HA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = -1;s8001
hitsound = s8000,0
guardsound = S8500,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity = 0,((vel y)-.2)
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 49)
anim = 8001
scale = 0.5,0.5

[State 600, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Medium Punch
;---------------------------------------------------------------------------
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 610
poweradd = 40
sprpriority = 2

[State 610, 1]
type = PlaySnd
trigger1 = Time = 2
value = 51
volume = 100

[State 610, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 610, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 52,0
animtype = medium
guardflag = HA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -15,-49
guard.sparkno = -1;s8001
hitsound = s8000,1
guardsound = S8500,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
air.velocity = 0,((vel y)-.2)
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 610]
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

[State 610, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Strong Punch
;---------------------------------------------------------------------------
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 620
poweradd=60
sprpriority = 2

[State 620, 1]
type = PlaySnd
trigger1 = Time = 2
value = 52


[State 620, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 620, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 72,0
animtype = High
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = s8222
sparkxy = 0,-59
guard.sparkno = -1
hitsound = s8000,2
guardsound = S8500,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -9
air.velocity = -7,17
fall = (enemynear,statetype = A)
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

[State 620]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -10),floor(p2dist y - 65)
anim = 8001
scale = 0.5,0.5

[State 620, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Light Kick
;---------------------------------------------------------------------------
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 630
poweradd = 20
sprpriority = 2

[State 630, 1]
type = PlaySnd
trigger1 = Time = 2
value = 50


[State 630, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 630, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 28,0
animtype = Light
guardflag = HA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -15,-49+(-19*P2StateType=A)
guard.sparkno = -1;s8001
hitsound = s8000,0
guardsound = S8500,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity = 0,((vel y)-.2)
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 630]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -10),floor(p2dist y - 65)
anim = 8001
scale = 0.5,0.5

[State 630, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Medium Kick
;---------------------------------------------------------------------------
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 640
poweradd = 40
sprpriority = 2

[State 640, 1]
type = PlaySnd
trigger1 = Time = 2
value = 51
volume = 100

[State 640, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 640, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 52,0
animtype = Medium
guardflag = HA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -15,-49
guard.sparkno = -1;s8001
hitsound = s8000,1
guardsound = S8500,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
air.velocity = 0,((vel y)-.2)
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 640]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -10),floor(p2dist y - 65)
anim = 8001
scale = 0.5,0.5

[State 640, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Strong Kick
;---------------------------------------------------------------------------
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 650
poweradd=60
sprpriority = 2

[State 650, 1]
type = PlaySnd
trigger1 = Time = 2
value = 52



[State 650, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 650, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 72,0
animtype = High
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = -1;s8001
hitsound = s8000,2
guardsound = S8500,0
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

[State 650]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -10),floor(p2dist y - 65)
anim = 8001
scale = 0.5,0.5

[State 650, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

; out of screen state by mouser
[Statedef 740]
type    = S
movetype = A
physics = S
anim = 9889
sprpriority = 1
velset = 0,0
ctrl = 0

[State 740, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 740, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,1

[State 740, PosSet]
type = PosSet
trigger1 = 1
x = -180 * facing
y = 0

[State 740, ChangeState]
type = ChangeState
trigger1 = !numtarget
trigger2 = numtarget
trigger2 = target,stateno = 5110
value = 107
ctrl = 0

;---------------------------------------------------------------------------
; Throws
;---------------------------------------------------------------------------
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

; Notes: The '-' symbol in the hitflag field means that it only affects
;   players who are not in a hit state. This prevents KFM from combo-ing
;   into the throw. The priority should be set to a low number, such as
;   1 or 2, so that the throw does not take precedence over normal attacks.
;   The type of priority must always be set to "Miss" or "Dodge" for throws,
;   otherwise strange behavior can result.
[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1sprpriority = 1     ;Draw p1's sprite in front of p2
hitsound = S8600,0                      ;p2's sprite priority is set to 0 by default
p1facing = 1
p2facing = 1          ;Force p2 to face KFM
p1stateno = 810       ;On success, KFM changes to state 810
p2stateno = 820       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down

[State 800, TargetState]
type = TargetState
triggerall = NumTarget
trigger1 = MoveHit
value = 820
ignorehitpause = 1

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
[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810
poweradd = 60

; Here a variable, var(2), is used to remember whether or not the
; player was holding forward at the start of the state. This variable
; is checked later on to turn KFM around if necessary.
[State 810, Holding fwd?]
type = Null;VarSet
trigger1 = Time = 0
var(2) = command = "holdfwd"

[State 810, Width]
type = Width
trigger1 = 1
value = 0,0

[State 810, Add]
type = PosAdd
trigger1 = AnimElemTime(4) >= 0
trigger1 = AnimElemTime(5) < 2
x = 9
y = -9
persistent = 1

[State 810, Add]
type = PosAdd
trigger1 = AnimElemTime(5) >= 2
trigger1 = AnimElemTime(5) < 8
x = 6
y = -6
persistent = 1

[State 810, Add]
type = PosAdd
trigger1 = AnimElemTime(5) >= 8
trigger1 = AnimElemTime(5) < 20
x = 4
y = -4
persistent = 1

[State 810, Add]
type = PosAdd
trigger1 = AnimElemTime(5) >= 20
trigger1 = AnimElemTime(6) < 0
x = 2
y = -2
persistent = 1

[State 810, AfterImage]
type = Null;AfterImage
trigger1 = AnimElemTime(5) >= 0
trigger1 = AnimElemTime(6) < 0
time 		= 15
timegap		= 2
framegap 	= 2
length 		= 10
paladd 		= 0, 0, 0
palmul 		= .50, 0, .50
palcontrast 	= 100,50,150
trans 		= add

[State 810, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0
trigger1 = AnimElemTime(10) <= 10
edge = 40,0
persistent = 1

[State 810, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 810, ScreenBound]
type = Null;ScreenBound
trigger1 = AnimElemTime(8) < 0
value = 1
movecamera = 0,0

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 8400,1 ;1, 1

[State 810, Throw Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 8400,2 ;800, 0

[state 810, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(8) < 0
value = 2

[state 810, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(8) >= 0
value = 3

[State 810, TargetBind]
type = TargetBind
triggerall = NumTarget
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 20, -18

[State 810, TargetBind]
type = TargetBind
triggerall = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 52, -138

[State 810, TargetBind]
type = TargetBind
triggerall = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 51, -139

[State 810, TargetBind]
type = TargetBind
triggerall = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = 47, -140

[State 810, TargetBind]
type = TargetBind
triggerall = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = 43, -137

[State 810, TargetBind]
type = TargetBind
triggerall = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = 6, -141

[State 810, TargetBind]
type = TargetBind
triggerall = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = 7, -141

[State 810, TargetBind]
type = TargetBind
triggerall = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(8) < 1
pos = 50, -66

[State 810, Turn] ;If was holding fwd before, turn now
type = Turn
;trigger1 = var(2)
trigger1 = AnimElemTime(8) = 0

[State 810, TargetFacing] ;If was holding fwd before, turn target too
type = TargetFacing
triggerall = NumTarget
;trigger1 = var(2)
trigger1 = AnimElemTime(8) = 0
value = -1

[State 810, TargetLifeAdd]
type = TargetLifeAdd
triggerall = NumTarget
trigger1 = AnimElem = 8
value = -78;+((NumHelper(3302)||NumHelper(3304)) * -78)

[State 810, TargetState]
type = TargetState
triggerall = NumTarget
trigger1 = AnimElemTime(8) = 1
value = 821

[State 810, Turn]
type = Null;Turn
trigger1 = AnimElemTime(8) = 0

[State 810, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y <= -50
value = 50
ctrl = 0

[State 810, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y > -50
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw
; (a custom gethit state)
; Description: This is the state that the opponent changes to after being
;     hit by KFM's throw HitDef. The important thing here is to use a
;     ChangeAnim2 controller. The difference between ChangeAnim2 and
;     ChangeAnim is that ChangeAnim2 changes the player's animation to
;     an action in the AIR file of the attacker (in this case, kfm.air),
;     whereas ChangeAnim always changes the player to an action in his
;     own AIR file. Look at Action 820 in kfm.air for some extra
;     comments.
[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0

[State 820, Width]
type = Width
trigger1 = 1
value = 0,0

[State 820, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 820, ScreenBound]
type = ScreenBound
trigger1 = AnimElemTime(8) < 0
value = 1
movecamera = 0,0

[State 820, ChangeAnim2]
type = ChangeAnim2
triggerall = Name != "Superman Beyond"
triggerall = AuthorName != "Angelus_Silverhead and JARRO77"
Trigger1 = Time = 0
value = 820

[State 820, ChangeAnim]
type = ChangeAnim
triggerall = Name = "Superman Beyond"
triggerall = AuthorName = "Angelus_Silverhead and JARRO77"
Trigger1 = Time = 0
value = 827

[state 820, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(8) < 0
value = 3

[state 820, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(8) >= 0
value = 2

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 820, 2]
type = SelfState
trigger1 = !GetHitVar(isbound)
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
velset = -15,7

[state 821, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(1) >= 0
value = 2

[State 821, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820
elem = 8

[State 821, 2] ; Recover near ground (use ChangeState)
type = Null;ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 821, 3] ; Recover in mid air (use SelfState)
type = Null;SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 821, SelfState] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -8;0
value = 5100 ;Hit ground
;END

[Statedef 806]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

; Notes: The '-' symbol in the hitflag field means that it only affects
;   players who are not in a hit state. This prevents KFM from combo-ing
;   into the throw. The priority should be set to a low number, such as
;   1 or 2, so that the throw does not take precedence over normal attacks.
;   The type of priority must always be set to "Miss" or "Dodge" for throws,
;   otherwise strange behavior can result.
[State 806, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1sprpriority = 1     ;Draw p1's sprite in front of p2
hitsound = S8600,0                      ;p2's sprite priority is set to 0 by default
p1facing = 1
p2facing = 1          ;Force p2 to face KFM
p1stateno = 816       ;On success, KFM changes to state 810
p2stateno = 826       ;If hit, p2 changes to state 826 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down

[State 806, TargetState]
type = TargetState
triggerall = NumTarget
trigger1 = MoveHit
value = 826
ignorehitpause = 1

[State 806, 2]
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
[Statedef 816]
type    = S
movetype= A
physics = N
anim = 816
poweradd = 60

; Here a variable, var(2), is used to remember whether or not the
; player was holding forward at the start of the state. This variable
; is checked later on to turn KFM around if necessary.
[State 816, Holding fwd?]
type = VarSet
trigger1 = Time = 0
var(2) = command = "holdfwd"

[State 816, Width]
type = Width
trigger1 = 1
value = 0,0

[State 816, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 816, ScreenBound]
type = ScreenBound
trigger1 = AnimElemTime(8) < 0
value = 1
movecamera = 0,0

[State 816, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 8400,1 ;1, 1

[State 816, Throw Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 8400,2 ;800, 0

[state 816, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(6) < 0
value = 2

[state 816, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(6) >= 0
value = 3

[State 816, TargetBind]
type = TargetBind
triggerall = NumTarget
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 20, -18

[State 816, TargetBind]
type = TargetBind
triggerall = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 52, -81

[State 816, TargetBind]
type = TargetBind
triggerall = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 60, -82

[State 816, TargetBind]
type = TargetBind
triggerall = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = 80, -80

[State 816, TargetBind]
type = TargetBind
triggerall = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = 79, -80

[State 816, TargetBind]
type = TargetBind
triggerall = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = 6, -80

[State 816, TargetBind]
type = TargetBind
triggerall = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = 6, -80

[State 816, TargetBind]
type = TargetBind
triggerall = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(8) < 1
pos = 60, -85

[State 816, Turn] ;If was holding fwd before, turn now
type = Turn
trigger1 = var(2)
trigger1 = AnimElemTime(8) = 0

[State 816, TargetFacing] ;If was holding fwd before, turn target too
type = TargetFacing
triggerall = NumTarget
trigger1 = var(2)
trigger1 = AnimElemTime(8) = 0
value = -1

[State 816, TargetLifeAdd]
type = TargetLifeAdd
triggerall = NumTarget
trigger1 = AnimElem = 8
value = -48;+((NumHelper(3302)||NumHelper(3304)) * -48)

[State 816, TargetState]
type = TargetState
triggerall = NumTarget
trigger1 = AnimElemTime(8) = 1
value = 827

[State 816, Turn]
type = Null;Turn
trigger1 = AnimElemTime(8) = 0

[State 816, PlaySnd]
type = PlaySnd
trigger1 = NumEnemy
trigger1 = EnemyNear, MoveType = H || P2MoveType = H
trigger1 = EnemyNear, StateNo = 1027 || P2StateNo = 1027
trigger1 = EnemyNear, Time = 1
value = 8000,5

[state 816, Explod]
type = Explod
triggerall = NumEnemy
triggerall = NumExplod(886) = 0
trigger1 = AnimElemTime(4) < 0
anim = 886
id = 886
pos = 60,-10
postype = p1
sprpriority = 4
bindtime = -1
scale = 0.80*Ceil(EnemyNear, Const(size.xscale)),0.80*Ceil(EnemyNear, Const(size.yscale))
removetime = -1
ownpal = 1

[state 816, ModifyExplod]
type = ModifyExplod
triggerall = NumEnemy
triggerall = NumExplod(886) != 0
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(6) < 0
anim = 886
id = 886
pos = 78,-10
postype = p1
sprpriority = 4
bindtime = -1
scale = 0.80*Ceil(EnemyNear, Const(size.xscale)),0.80*Ceil(EnemyNear, Const(size.yscale))
removetime = -1
ownpal = 1

[state 816, ModifyExplod]
type = ModifyExplod
triggerall = NumEnemy
triggerall = NumExplod(886) != 0
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(8) < 0
anim = 886
id = 886
pos = 6,-10
postype = p1
sprpriority = 3
bindtime = -1
scale = 0.80*Ceil(EnemyNear, Const(size.xscale)),0.80*Ceil(EnemyNear, Const(size.yscale))
removetime = -1
ownpal = 1

[State 816, PlaySnd]
type = PlaySnd
triggerall = NumEnemy
triggerall = NumExplod(886) != 0
trigger1 = Time = 19
value = 35,0

[state 816, RemoveExplod]
type = RemoveExplod
triggerall = NumEnemy
triggerall = NumExplod(886) != 0
trigger1 = AnimElemTime(8) >= 0
id = 886
ignorehitpause = 1
persistent = 1

[State 816, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw
; (a custom gethit state)
; Description: This is the state that the opponent changes to after being
;     hit by KFM's throw HitDef. The important thing here is to use a
;     ChangeAnim2 controller. The difference between ChangeAnim2 and
;     ChangeAnim is that ChangeAnim2 changes the player's animation to
;     an action in the AIR file of the attacker (in this case, kfm.air),
;     whereas ChangeAnim always changes the player to an action in his
;     own AIR file. Look at Action 826 in kfm.air for some extra
;     comments.
[Statedef 826]
type    = A
movetype= H
physics = N
velset = 0,0

[State 826, Width]
type = Width
trigger1 = 1
value = 0,0

[State 826, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 826, ScreenBound]
type = ScreenBound
trigger1 = AnimElemTime(8) < 0
value = 1
movecamera = 0,0

[State 826, ChangeAnim2]
type = ChangeAnim2
triggerall = Name != "Superman Beyond"
triggerall = AuthorName != "Angelus_Silverhead and JARRO77"
Trigger1 = Time = 0
value = 826

[State 826, ChangeAnim2]
type = ChangeAnim2
triggerall = Name = "Superman Beyond"
triggerall = AuthorName = "Angelus_Silverhead and JARRO77"
Trigger1 = Time = 0
value = 827

[state 816, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(6) < 0
value = 3

[state 816, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(6) >= 0
value = 2

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 826, 2]
type = SelfState
trigger1 = !GetHitVar(isbound)
value = 5050

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw - thrown into the air
; (a custom gethit state)
; Description: This state has the opponent flying through the air and
;     falling down onto the ground. The SelfState controller sets the
;     opponent back using to his own state file when he his the ground.
;     Controllers 827,2 and 827,3 allow the opponent to recover by
;     hitting his recovery command when he is falling.
[Statedef 827]
type    = A
movetype= H
physics = N
velset = -15,0

[state 827, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(1) >= 0
value = 2

[State 827, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 826
elem = 8

[State 827, 2] ; Recover near ground (use ChangeState)
type = Null;ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 827, 3] ; Recover in mid air (use SelfState)
type = Null;SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 827, ScreenBound]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 827, ChangeState]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 1027

[State 827, SelfState] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -8;0
value = 5100 ;Hit ground
;END

[Statedef 828]
type    = A
movetype= H
physics = N
velset = -15,-4
ctrl = 0

[state 828, PosAdd]
type = PosAdd
trigger1 = Time = 0
trigger1 = Pos Y > -40
y = -40

[state 828, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(1) >= 0
value = 2

[State 828, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 826
elem = 8

[State 828, 2] ; Recover near ground (use ChangeState)
type = Null;ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 828, 3] ; Recover in mid air (use SelfState)
type = Null;SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 828, ScreenBound]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 828, ChangeState]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 1027

[State 828, SelfState] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -8;0
value = 5100 ;Hit ground
;END

;------------------
; Hit by Fast Kung Fu Palm - hit wall
; (a custom gethit state)
[Statedef 1027]
type    = A
movetype= H
physics = N

[State 1027, EnvShake]
type = EnvShake
trigger1 = Time = 1
time = 20
freq = 180
ampl = -4
phase = 90

[State 816, LifeAdd]
type = LifeAdd
triggerall = NumEnemy
trigger1 = Time = 1
value = -30+((EnemyNear, NumHelper(3302) || EnemyNear, NumHelper(3304))* -30)

[State 1027, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 1027, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist
y = 24

[State 1027, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1027, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1027, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 1027

[State 1027, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 1028

;------------------
; Hit by Fast Kung Fu Palm - bounce off wall
; (a custom gethit state)
[Statedef 1028]
type    = A
movetype= H
physics = N

[State 1028, 1]
type = NotHitBy
trigger1 = 1
value = , NA, NP

[State 1028, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -6

[State 1028, Vel X]
type = VelSet
trigger1 = Time = 0
x = 1.6

[State 1028, Turn]
type = Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 1028, Gravity]
type = VelAdd
trigger1 = 1
y = .35

[State 1028, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 1028, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 1028, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 1028, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 1028, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

[Statedef 9900] ; by mouser
type = A
movetype = H
physics = N

[State 9900, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 9900, SelfState]
type = SelfState
trigger1 = 1
value = ifelse(alive,5040,5050)

[Statedef 9910] ; by mouser
type = A
movetype = H
physics = N
velset = 0.0, GetHitVar(yvel)
ctrl = 0

[State 9910, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1
persistent = 1

[State 9910, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 9910, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod > 0
;ID =
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State 9910, VelSet]
type = VelSet
trigger1 = Pos Y <= IfElse(ScreenPos Y <= 15, -1120.0, -1920.0)
x = 0.0
y = 0.0

[State 9910, PosFreeze]
type = PosFreeze
trigger1 = Pos Y <= IfElse(ScreenPos Y <= 15, -1120.0, -1920.0)

[State 9910, ChangeAnim2]
type = Null;ChangeAnim2
trigger1 = Time = 0
value = 5035

[State 9910, VelAdd]
type = Null;VelAdd
trigger1 = Pos Y <= IfElse(ScreenPos Y <= 15, -1120.0, -1920.0)
y = GetHitVar(yaccel)

[State 9910, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1
persistent = 1

[State 9910, AssertSpecial]
type = AssertSpecial
trigger1 = Pos Y <= IfElse(ScreenPos Y <= 15, -1120.0, -1920.0)
flag = invisible
ignorehitpause = 1
persistent = 1

[State 9910, ChangeState]
type = ChangeState
triggerall = NumEnemy
trigger1 = Enemy, Name = "Superman Beyond"
trigger1 = EnemyNear, StateNo != [4000,4200]
trigger2 = Time >= 140;5000
value = 9920

[State 9910, SelfState]
type = SelfState
trigger1 = Time >= 5000
value = 5050

[Statedef 9920] ; by mouser
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0

[State 9920, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1
persistent = 1

[State 9920, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 9920, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 9920

[State 9920, PosSet]
type = PosSet
triggerall = Anim = 9920
trigger1 = Time = 0
x = 0
y = IfElse(ScreenPos Y <= 15, 80, 50)
ignorehitpause = 1

[State 9920, PosAdd]
type = PosAdd
triggerall = Anim = 9920
trigger1 = Time = [1,40]
x = 0
y = -4
ignorehitpause = 1

[State 9920, PosAdd]
type = PosAdd
triggerall = Anim = 9920
trigger1 = Time = [41,50]
x = 0
y = -3
ignorehitpause = 1

[State 9920, PosAdd]
type = PosAdd
triggerall = Anim = 9920
trigger1 = Time = [51,70]
x = 0
y = -2
ignorehitpause = 1

[State 9920, PosAdd]
type = PosAdd
triggerall = Anim = 9920
trigger1 = Time = [2500,2600]
x = 0
y = 1
ignorehitpause = 1

[State 9920, PosAdd]
type = PosAdd
triggerall = Anim = 9920
trigger1 = Time = [2601,2700]
x = 0
y = 1
ignorehitpause = 1

[State 9920, PosAdd]
type = PosAdd
triggerall = Anim = 9920
trigger1 = Time = [2701,2800]
x = 0
y = 2
ignorehitpause = 1

[State 9920, SprPriority]
type = SprPriority
triggerall = Anim = 9920
trigger1 = 1
value = 999
ignorehitpause = 1

[State 9920, AngleDraw]
type = AngleDraw
triggerall = Anim = 9920
trigger1 = Time < 2500
value = -90
scale = 0.35,0.35;Const(size.xscale),Const(size.yscale)
ignorehitpause = 1

[State 9920, AngleDraw]
type = AngleDraw
triggerall = Anim = 9920
trigger1 = Time >= 2500
value = 90
scale = 0.35,0.35;Const(size.xscale),Const(size.yscale)
ignorehitpause = 1

[State 9920, Trans]
type = Trans
triggerall = Anim = 9920
trigger1 = Time = [155,160]
trans = addalpha
alpha = 256,20

[State 9920, Trans]
type = Trans
triggerall = Anim = 9920
trigger1 = Time = [161,165]
trans = addalpha
alpha = 256,40

[State 9920, Trans]
type = Trans
triggerall = Anim = 9920
trigger1 = Time = [166,170]
trans = addalpha
alpha = 256,80

[State 9920, Trans]
type = Trans
triggerall = Anim = 9920
trigger1 = Time = [171,175]
trans = addalpha
alpha = 256,120

[State 9920, Trans]
type = Trans
triggerall = Anim = 9920
trigger1 = Time = [176,180]
trans = addalpha
alpha = 256,150

[State 9920, Trans]
type = Trans
triggerall = Anim = 9920
trigger1 = Time = [181,185]
trans = addalpha
alpha = 256,180

[State 9920, Trans]
type = Trans
triggerall = Anim = 9920
trigger1 = Time = [186,190]
trans = addalpha
alpha = 256,210

[State 9920, Trans]
type = Trans
triggerall = Anim = 9920
trigger1 = Time = [191,195]
trans = addalpha
alpha = 256,240

[State 9920, Trans]
type = Trans
triggerall = Anim = 9920
trigger1 = Time = [191,195]
trans = addalpha
alpha = 256,256

[State 9920, Trans]
type = Trans
triggerall = Anim = 9920
trigger1 = Time = [196,200]
trans = addalpha
alpha = 220,256

[State 9920, Trans]
type = Trans
triggerall = Anim = 9920
trigger1 = Time = [201,205]
trans = addalpha
alpha = 180,256

[State 9920, Trans]
type = Trans
triggerall = Anim = 9920
trigger1 = Time = [206,210]
trans = addalpha
alpha = 120,256

[State 9920, Trans]
type = Trans
triggerall = Anim = 9920
trigger1 = Time = [211,215]
trans = addalpha
alpha = 90,256

[State 9920, Trans]
type = Trans
triggerall = Anim = 9920
trigger1 = Time = [216,220]
trans = addalpha
alpha = 50,256

[State 9920, Trans]
type = Trans
triggerall = Anim = 9920
trigger1 = Time = [221,1849]
trans = addalpha
alpha = 0,256

[State 9920, Trans]
type = Trans
triggerall = Anim = 9920
trigger1 = Time = [1850,2500]
trans = addalpha
alpha = 256,0

[State 9920, AssertSpecial]
type = Null;AssertSpecial
triggerall = Anim = 9920
trigger1 = Time >= 2500
flag = invisible
ignorehitpause = 1
persistent = 1

[State 9920, VelAdd]
type = Null;VelAdd
trigger1 = Time > 0
y = GetHitVar(yaccel)

[State 9920, ChangeState]
type = ChangeState
triggerall = NumEnemy
trigger1 = Enemy, Name = "Superman Beyond"
trigger1 = EnemyNear, StateNo != [4000,4200]
trigger2 = Time >= 3695;5000
value = 9930

[State 9920, SelfState]
type = SelfState
trigger1 = Time >= 3695;5000
value = 5050

[State 9920, SelfState]
type = Null;SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5100 ;HIT_BOUNCE

[Statedef 9930] ; by mouser
type = A
movetype = H
physics = N
velset = 0,16
ctrl = 0

[State 9930, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1
persistent = 1

[State 9930, PosSet]
type = PosSet
trigger1 = Time = [0,1]
x = 0
y = -720
ignorehitpause = 1

[State 9930, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 9930, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 5050
trigger1 = SelfAnimExist(5050)
value = 5050
persistent = 0

[State 9930, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yaccel)

[State 9930, LifeAdd]
type = LifeAdd
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = -25
kill = 1
absolute = 1
ignorehitpause = 1
persistent = 0

[State 9930, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5100 ;HIT_BOUNCE
