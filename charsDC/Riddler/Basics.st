;---------------------------------------------------------------------------
; Basics CNS File
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Lose by Time Over

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


;---------------------------------------------------------------------------
; Lose

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

[State 172]
type = CtrlSet
trigger1 = Time = 120
value = 1

;--------------------------------------------------------------------------------------------------------

[Statedef 173]
type = S
ctrl = 0
velset = 0,0
anim = 9800



[State 173]
type = PosSet
trigger1 = Time = 0
y = 0


[State 173]
type = PlaySnd
trigger1 = Time = 0
value = 170,0

[State 173]
type = NotHitBy
trigger1 = 1
value = SCA

[State 173]
type = CtrlSet
trigger1 = Time = 120
value = 1


;---------------------------------------------------------------------------
; DRAWGAME (Time over)
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


;---------------------------------------------------------------------------
; Win state decider
[Statedef 180]
type = S
ctrl = 0

[state 180]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 0, VarAdd]
type = VarSet
trigger1 = !time
v = 50
value = 1


[State 180, intro]
type = ChangeState
trigger1 = !time
value = 18000+random%4*100

;---------------------------------------------------------------------------
; win  1
[Statedef 18000]
type = S
ctrl = 0
anim = 18000
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S18000,0+random%2

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = Time <240
flag = roundnotover


;---------------------------------------------------------------------------
; win  2
[Statedef 18100]
type = S
ctrl = 0
anim = 18100
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S18100,0+random%2

;---------------------------------------------------------------------------
; win  3
[Statedef 18200]
type = S
ctrl = 0
anim = 18200
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S18200,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S8400,2




;---------------------------------------------------------------------------
; win 4
[Statedef 18300]
type = S
ctrl = 0
anim = 100
velset = 0,0

[State 0, Turn]
type = Turn
trigger1 = FrontEdgeDist <100 && !Time

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S195,0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S9,5
volume = 255
channel = 0
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S9,4
volume = 255
channel = 0
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = Time <240
flag = roundnotover

[State 100, snd]
type = PlaySnd
trigger1 = time = 1
value = 1100,1
channel = 0

[State 0, Dust]
type = Explod
trigger1 = Time%12=0
anim = 104
ID = 104
pos = -20,0
postype = p1  ;p2,front,back,left,right
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1

[State 0, Dust]
type = Explod
trigger1 = Time%4=0 && pos Y =0
anim = 102
ID = 102
pos = -20,-random%90
postype = p1  ;p2,front,back,left,right
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1


[State 100, 2]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)*1.5

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Anim =100 && FrontEdgeDist <70
value = 640

[State 100, 2]
type = VelSet
trigger1 = FrontEdgeDist <70
y=-4

[State 0, Glass]
type = Explod
trigger1 = FrontEdgeDist <40 && NumExplod(18300)<12
anim = 18301+random%3
ID = 18300
pos = 0,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vel = -3-random%8,-3-random%6
accel = 0,.25
random = 0,70
removetime = 90

[State 0, Helper]
type = Helper
trigger1 = Time = 5
helpertype = normal ;player
name = "holo"
ID = 18310
stateno = 18310
pos = 0,-25
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = FrontEdgeDist <40
value = S18300,0
persistent = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = FrontEdgeDist <40
time = 15
ampl = 10
persistent = 0
;---------------------------------------------------------------------------
[Statedef 18310]
type = S
ctrl = 0
anim = 18300
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S19400,1

[State 191, 3]
type = ChangeState
trigger1 = Time = 514
value = 0

;---------------------------------------------------------------------------
; Intro Decision
[Statedef 190]
type = S
ctrl = 0

[State 190, Croc]
type = ChangeState
triggerall = !time
trigger1 = p2name="Killer Croc" || p4name="Killer Croc"
value = 19100

[State 190, Elektra and ladies]
type = ChangeState
triggerall = !time
trigger1 = p2name="Electro" || p4name="Electro"
value = 19200


[State 190, intro]
type = ChangeState
trigger1 = !time
value = 19000+random%5*100

;---------------------------------------------------------------------------
; Intro  1 - normal
[Statedef 19000]
type = S
ctrl = 0
anim = 19000
velset = 0,0

[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 19000

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S19000,0

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = !AnimTime
value = 0

;---------------------------------------------------------------------------
; Intro  2
[Statedef 19100]
type = S
ctrl = 0
anim = 19100
velset = 0,0

[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 19100

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S19100,0

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = !AnimTime
value = 0

;---------------------------------------------------------------------------
; Intro  3
[Statedef 19200]
type = S
ctrl = 0
anim = 19200
velset = 0,0

[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 19200


[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S1000,4

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = !AnimTime
value = 0

;---------------------------------------------------------------------------
; Intro  4
[Statedef 19300]
type = S
ctrl = 0
anim = 19300
velset = 0,0

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S19000,1


[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = !AnimTime
value = 0

;---------------------------------------------------------------------------
; Intro  5
[Statedef 19400]
type = S
ctrl = 0
anim = 19400
velset = 0,0

[State 0, ChangeState]
type = ChangeState
trigger1 = p2name = "Elektra" || p4name = "Elektra"
trigger2 = p2name = "Bullseye" || p4name = "Bulseye"
value = 19000
ctrl = 0

[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 19400

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem= 2
value = S19400,0
channel = 1





[State 0, EnvShake]
type = EnvShake
trigger1 = AnimElem= 43
time = 7
ampl = -4


; Adapted from POTS
[State -2, Sparks]
type=helper
trigger1 = AnimElem= 43
helpertype=normal
stateno=8052
ID=8000
name="Blood"
postype=p1
pos=49,-92
facing= -1
ownpal=1
size.xscale=.5
size.yscale=.5
pausemovetime=65535
supermovetime=65535
ignorehitpause=1
persistent = 0

[State -2, Sparks]
type=helper
trigger1 = AnimElem= 44
helpertype=normal
stateno=8051
ID=8000
name="Blood"
postype=p1
pos=49,-92
facing= -1
ownpal=1
size.xscale=.5
size.yscale=.5
pausemovetime=65535
supermovetime=65535
ignorehitpause=1
persistent = 0

[State 0, Helper]
type = Helper
trigger1 = !Time
helpertype = normal ;player
name = "elektra"
ID = 19404
stateno = 19404
pos = 0,-25
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1


[State 0, Helper]
type = Helper
trigger1 = AnimElem= 43
helpertype = normal ;player
name = "elektra"
ID = 19405
stateno = 19405
pos = 0,-25
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1


[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = !AnimTime
value = 0

;---------------------------------------------------------------------------
[Statedef 19404]
type = S
ctrl = 0
anim = 19407
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S19400,1

[State 191, 3]
type = ChangeState
trigger1 = Time = 514
value = 19407
;---------------------------------------------------------------------------
; Dog fall
[Statedef 19405]
type = S
ctrl = 0
anim = 19405
velset = 0,0

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.25

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=2
value = S15,7


[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S15,9

[State 191, 3]
type = ChangeState
trigger1 = Pos Y>=0 && Vel Y>0
value = 19406

;---------------------------------------------------------------------------
;Dog dies
[Statedef 19406]
type = S
ctrl = 0
anim = 19406
velset = 0,0

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = !time
time = 5
ampl = -2

[state 1051, land explod]
type = helper
trigger1 = time = 0 & numhelper(8010) = 0
name = "land explod"
id = 77010
stateno = 77010
postype = p1
pos = 35,0
sprpriority = -1
bindtime = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S11,3


;---------------------------------------------------------------------------
[Statedef 19407]
type = S
ctrl = 0
anim = 19408
velset = 0,0

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0

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

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S1000,3

[State 195, End]
type = ChangeState
trigger1 = !AnimTime
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
trigger1 = Time = 6
value = 8400, 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S1,0

[State 200, HitDef]
type = HitDef
trigger1 = !time
attr = S,NA
damage = 28,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8000,6
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,3
envshake.time = 1
envshake.ampl = 1

[State 200, End]
type = ChangeState
trigger1 = !AnimTime
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
trigger1 = Time = 6
value = 8400, 1

[State 210, HitDef]
type = HitDef
trigger1 = !time
attr = S,NA
damage = 52,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -15,-60
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1

[State 210, End]
type = ChangeState
trigger1 = !AnimTime
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
poweradd = 15
sprpriority = 2

[State 220, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S1,0

[State 0, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 10
ignorehitpause = 1

[State 220, HitDef]
type = HitDef
trigger1 = time=0
attr = S,NA
damage = 30
animtype = High
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = s8222
sparkxy = -15, -95
hitsound = s8000,2
guardsound = 6,0
guard.sparkno = s8001
ground.type = High
ground.slidetime = 4
ground.hittime  = 11
ground.velocity = -8
air.type = Low
air.hittime = 20
air.velocity = -3,-2

[State 220, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Kick

[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim=250
poweradd= 60
sprpriority = 2

[State 230, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 4
ignorehitpause =1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S1,0


[State 230, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 28,1
animtype = Light
hitflag = MAF
guardflag = L
priority = 7, Hit
pausetime = 6,8
sparkno = s8002
sparkxy = -15,-10
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8000,6
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.type = Low
air.hittime = 3
air.velocity = -5,0

[State 230, End]
type = ChangeState
trigger1 = !AnimTime
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
anim = 230
poweradd = 20
sprpriority = 2

[State 240, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S1,0


[State 240, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 28,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -15,-65
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8000,6
ground.type = Low
ground.slidetime = 10
ground.hittime = 12
ground.velocity = -5,0
air.type = Low
air.hittime = 3
air.velocity = -5,0

[State 240, End]
type = ChangeState
trigger1 = !AnimTime
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
anim = 240
poweradd = 40
sprpriority = 2

[State 250, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 0, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 10
ignorehitpause = 1

[State 250, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 52,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -15,-62
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0

[State 250, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Kick
;---------------------------------------------------------------------------
; Crouching Light Punch
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
trigger1 = Time = 6
value = 8400, 0

[State 400, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 28,1
animtype = Light
guardflag = L
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -15,-65
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8000,6
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.velocity = -5,0
air.type = Low
air.hittime = 3
air.velocity = -5,0

[State 400, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Punch
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
trigger1 = Time = 6
value = 8400, 1

[State 410, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 52,1
animtype = Medium
guardflag = L
hitflag = MAF
priority = 5, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = Low
ground.slidetime = 30
ground.hittime  = 14
ground.velocity = -4,0
air.velocity = -5,0
airguard.velocity = -6,0

[State 410, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Punch
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
trigger1 = Time = 6
value = 8400, 2

;[State 0, PosAdd]
;type = PosAdd
;trigger1 = AnimElem = 3
;x = 10
;ignorehitpause = 1

[State 0, Width]
type = Width
trigger1 = 1
value = 15,0

[State 420, HitDef]
type = HitDef
trigger1 = !time
attr = C, NA
damage = 72,1
priority = 7, Hit
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s8223
sparkxy = -15,-70
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -1,-12
guard.velocity = -5
air.velocity = -1,-12
envshake.time = 7
envshake.ampl = 4


[State 420, End]
type = ChangeState
trigger1 = !AnimTime
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
trigger1 = Time = 6
value = 8400, 0

[State 430, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 28,1
animtype = Light
hitflag = MAF
guardflag = L
priority = 7, Hit
pausetime = 6,8
sparkno = s8002
sparkxy = -15,-10
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8000,6
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.type = Low
air.hittime = 3
air.velocity = -5,0

[State 430, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Kick
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 450
poweradd = 60
sprpriority = 2

[State 440, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 0, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = 10
ignorehitpause = 1

[State 440, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 50
guardflag = L
pausetime = 9,9
hitsound = S8000,2
guard.sparkno = s8001
guardsound = 6,0
sparkno = S8022
sparkxy = -15,-10
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -2
guard.velocity = -3
air.velocity = -6,-6


[State 440, End]
type = ChangeState
trigger1 = !AnimTime
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
anim = 440
poweradd = 40
sprpriority = 2

[State 450, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 450, 1.1]
type = Velset
trigger1 = AnimElem = 3
x = 30

[State 450, 1.2]
type = VelAdd
trigger1 = AnimElem = 3, = [0,20)
x = -0.3

[State 450, 1.3]
type = Velset
trigger1 = AnimElem = 3, > 0 && Vel X <= 0
x = 0

[State 0, MakeDust]
type = MakeDust
trigger1 = Vel X !=0
pos = 0,0
spacing = 2

[State 450, HitDef]
type = HitDef
triggerall = Prevstateno != 1201
trigger1 = !time
attr = C,NA
damage = 52,1
animtype = Medium
hitflag = MAFD
guardflag = L
priority = 5, Hit
pausetime = 10,5
sparkno = s8022
sparkxy = -15,-5
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0

[State 450, HitDef]
type = HitDef
triggerall = Prevstateno = 1201
trigger1 = !time
attr = C,SA
damage = 80,1
animtype = Medium
hitflag = MAFD
guardflag = L
priority = 7, Hit
pausetime = 10,5
sparkno = s8022
sparkxy = -15,-5
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = trip
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -5,-5
air.type = Low
air.hittime = 5
air.velocity = -5,-5
envshake.time = 7
envshake.ampl = 4
fall = 1

[State 450, End]
type = ChangeState
trigger1 = !AnimTime
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
trigger1 = Time = 6
value = 8400, 0

[State 600, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 28,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity = 0,((vel y)-.2)

[State 600, End]
type = ChangeState
trigger1 = !AnimTime
value = 70

;---------------------------------------------------------------------------
; Jumping Medium Punch
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
trigger1 = Time = 6
value = 8400, 1

[State 610, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 52,1
animtype = medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
priority = 2, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = 0,((vel y)-.2)

[State 610, End]
type = ChangeState
trigger1 = !AnimTime
value = 70

;---------------------------------------------------------------------------
; Jumping Strong Punch
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
trigger1 = Time = 6
value = 8400, 2

[State 620, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 72,1
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = s8222
sparkxy = 0,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 20
air.hittime = 25
ground.velocity = -9
air.velocity = -12,17
fall = (enemynear,statetype = A)
air.fall = 1
fall.recover =0
envshake.time = 7
envshake.ampl = 4

[State 620, End]
type = ChangeState
trigger1 = !AnimTime
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
trigger1 = Time = 6
value = 8400, 0

[State 630, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 28,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity = 0,((vel y)-.2)

[State 630, End]
type = ChangeState
trigger1 = !AnimTime
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
trigger1 = Time = 6
value = 8400, 1

[State 640, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 52,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -15,-69
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = 0,((vel y)-.2)

[State 640, End]
type = ChangeState
trigger1 = !AnimTime
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
trigger1 = Time = 6
value = 8400, 2

[State 650, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 72,1
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = s8222
sparkxy = -15,-40
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -9
air.velocity = -17,7
air.fall = 1
fall.recover =0
envshake.time = 7
envshake.ampl = 4

[State 650, End]
type = ChangeState
trigger1 = !AnimTime
value = 70

;---------------------------------------------------------------------------
; Throws
;---------------------------------------------------------------------------
[Statedef 800]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 800

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = ifelse (command = "holdfwd", -1, 1)
p2facing = 1
p1stateno = 810
p2stateno = 820
fall = 1

[State 800, 2]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;----------------------------------------------------------------------
;success
[Statedef 810]
type = S
movetype= A
physics = N
anim = 810
poweradd = 60

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S8600,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1,7

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 60, 0
[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 50, 0
[State 810, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 20, -12

[State 810, Bind 3]
type = TargetBind
trigger1 = AnimElem = 4
pos = -34, -12

[State 810, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = 6, -6

[State 810, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 6
value = -78

[State 810, Throw]
type = TargetState
trigger1 = AnimElem = 6
value = 821

[State 810, State End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;----------------------------------------------------------------------
;custom anim
[Statedef 820]
type = A
movetype = H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

;----------------------------------------------------------------------
;beeing thrown
[Statedef 821]
type = A
movetype = H
physics = N
velset = 10,6
poweradd = 40

[State 0, PosSet]
type = PosAdd
trigger1 =  !time
x = 20
y = -25

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 0, Turn]
type = Turn
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0

[State 0, EnvShake]
type = EnvShake
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
time = 5
freq = 30
ampl = -15

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

