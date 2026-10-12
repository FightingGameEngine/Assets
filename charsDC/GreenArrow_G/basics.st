 ;---------------------- Integer variable list ----------------------

; var(1):= -2, 200, 1060, 10600
; var(2):= -2, 230
; var(3):= -2, 400
; var(4):= -2, 440
; var(5):= -2, 450
; var(6):= -2, 600, 2530, 18010
; var(7):= -2, 620, 2530, 18010
; var(8):= -2, 640
; var(9):= -2, 1800
;var(11):= -2
;var(12):= -2, 3156
;var(13):= 800, 810
;var(14):= 190, 191, 5900, 2600, 2601, 2602
;var(15):= -2, 640
;var(16):= 1311, -2
;var(17):= 45, -2
;var(21):= -1
;var(23):= -2
;var(24):= -2
;var(30):= 13200, 13210
;var(31):= -2
;var(32):= 1300, 1310, 1311, 1320, 1500, 1510, 1520, 3300, 3301, 200, 210, 220, 230, 240, 400, 410, 440, 450, 600, 610, 620, 640, 2520
;var(33):= 1500, 1510, 1520, -2
;var(34):= 1300, 1310, 1311, 1320, 1500, 1510, 1520, 3300, 3301, -2, 200, 210, 220, 230, 240, 400, 410, 440, 450, 600, 610, 620, 640, 2520
;var(35):= 1300, 1310, 1311, 1320, 1500, 1510, 1520, 3300, 3301, 200, 210, 220, 230, 240, 400, 410, 440, 450, 600, 610, 620, 640, 2520
;var(36):= 1300, 1310, 1311, 1320, 1500, 1510, 1520, 3300, 3301, 200, 210, 220, 230, 240, 400, 410, 440, 450, 600, 610, 620, 640, 2520
;var(41):= 1020
;var(47):= 190, 195
;var(50):= -3
;var(59):= -1

;---------------------- Float variable list ----------------------

; fvar(5):= -2
;fvar(10):= -2, 3156, 3001, 1530, 2520, 1251112


; Lose (on timeover)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0


[State 170,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Draw game (on timeover)
[Statedef 175]
type = S
ctrl = 0
anim = 170
velset = 0,0



[State 175,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Winposes
[Statedef 180]  ; winpose selector
type = S
ctrl = 0
velset = 0,0

[State 180,Winpose decider]
type = ChangeState
trigger1 = Time = 0
value = 181 + ((Random * 3) / 1000)     ; change the 1 to however many winposes you have

;-----------------------
; Winpose #1 - do better
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = 172,0


[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,150]
flag = RoundNotOver

[Statedef 182]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = 172,4


[State 181,1]
type = AssertSpecial
trigger1 = Time = [0,150]
flag = RoundNotOver

[Statedef 183]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = 172,2


[State 181,1]
type = AssertSpecial
trigger1 = Time = [0,150]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v =  47
range = 0,4
;ignorehitpause =
;persistent =



[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
value = 191 + ((Random * 1) / 1000)     ; change the 1 to however many intros you have

;-----------------------
; Intro #1
[Statedef 191]
type = A
ctrl = 0
anim = 191
velset = 0,0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = -110






[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 192
ID = 192
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = -50
ownpal = 1
removeongethit = 1

[State 3000, BGPalfx]
Type = BGPalfx
Trigger1 = 1 ;time = [0, 170]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 192, 2]             
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 100
value = 0,0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 100
value = 1910
ctrl = 0

[StateDef 1910]
type    = A
movetype= I
physics = N
ctrl = 0
anim = 193
sprpriority = 2
velset = 0,-6

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.3

[State 3000, BGPalfx]
Type = BGPalfx
Trigger1 = 1 ;time = [0, 170]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 192, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y > 0
value = 1912
ctrl = 0

[StateDef 1912]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 194
sprpriority = 2
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 8,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = 172,3

[State 0, PosSet]
type = PosSet
trigger1 =  time = 0
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animtime = 0
trigger1 = anim != 0
value = 0

[State 192, 2]
type = AssertSpecial
trigger1 = time < 100
flag = Intro


 
;---------------------------------------------------------------------------
 

  
;---------------------------------------------------------------------------
 

 
 

;---------------------------------------------------------------------------
 

;---------------------------------------------------------------------------
 
 

 

;---------------------------------------------------------------------------
 


;---------------------------------------------------------------------------
 


;---------------------------------------------------------------------------
 


;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 630]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 630
poweradd = 15
sprpriority = 2

[State 630, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 630, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = A,NA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9;8,8
sparkno = 0
sparkxy = -10, -73
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.fall = 0
air.velocity = 0, -5.5
air.hittime = 25

[State 630, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
 


;---------------------------------------------------------------------------
; Air Hard Kick
 
 
[StateDef 8101 - Enemy Tech State]
type = S
physics = N
moveType = H
ctrl = 0
velSet = 0,0
sprPriority = 0

[State 895, PS]
type = PosSet
trigger1 = time = 0
y = 0

[State 895, CA]
type = ChangeAnim
trigger1 = time = 0
value = ifElse(SelfAnimExist(5940), 5940, 130)

[State 895, CA]
type = ChangeAnim
trigger1 = time = 0
trigger1 = !selfanimexist(5945)
trigger1 = selfanimexist(5940)
value = 5940

[State 895, CA]
type = ChangeAnim
trigger1 = time = 0
trigger1 = !selfanimexist(5945)
trigger1 = !selfanimexist(5940)
trigger1 = selfanimexist(5910)
value = 5910

[State 895, CA]
type = ChangeAnim
trigger1 = time >= 20
trigger1 = anim = 130
value = 140

[State 895, NHB]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 895, PP]
type = PlayerPush
trigger1 = 1
value = 0

[State 890, VS]
type = VelSet
trigger1 = time = 0
x = -8;-6.14
y = 0

[State 890, VM]
type = veladd;mul
trigger1 = time>=0
trigger1 = vel x < 0
x = 0.5;85

[State 895, CS]
type = SelfState
trigger1 = Time >= 27
value = 0
ctrl = 1

 ;Throw
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2
 

[State 800, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 0,0

[State 800, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 2
p1facing = 1
p2facing = -1
p1stateno = 810
p2stateno = 820
guard.dist = 0
fall.xvelocity = 0
fall.yvelocity = 0
fall = 0
fall.recover = 0 

[State 800, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 81000 - Tech success]
type = S
physics = N
movetype = A;I
anim = 5945
ctrl = 0
velset = 0,0
sprPriority = 1

[State 890, PSND]
type = StopSnd
trigger1 = time = 0
channel = 0

[State 890, PSND]
type = PlaySnd
trigger1= time = 0
value = 174,4

[State 890, PSND]
type = PlaySnd
trigger1= time = 0
value = 2,0

[State 890, T]
type = null;turn
trigger1 = time = 0

[State 890, PA]
type = PosAdd
trigger1 = time = 0
x = 24

[State 890, PS]
type = PosSet
trigger1 = time = 0
y = 0

[State 890, TB]
type = TargetBind
trigger1 = time = 0
trigger1 = numtarget
pos = 0,0

[State 890, TS]
type = TargetState
trigger1 = time = 0
trigger1 = numtarget
value = 8101

[State 890, TF]
type = TargetFacing
trigger1 = time = 0
trigger1 = numtarget
value = -1

[State 890, NHB]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 890, PP]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
persistent = 4
anim = 18100
ID = 8000
pos = 0,-70
postype = p1  ;p2,front,back,left,right
facing = 1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 0
pausemovetime = 999999
supermovetime = 999999

[State 890, VS]
type = VelSet
trigger1 = time = 0
x = -8;-6.14
y = 0

[State 890, VM]
type = veladd;mul
trigger1 = time>=0
trigger1 = vel x < 0
x = 0.5;85

[State 890, PA]
type = posadd
triggerall = numtarget
trigger1 = target,frontedgebodydist <= abs(target,vel x + target,const(size.ground.front))
trigger1 = target,vel x > 0.0
trigger2 = target,backedgebodydist <= abs(target,vel x - target,const(size.ground.back))
trigger2 = target,vel x < 0.0
x = cond((target,pos x - pos x) * facing > 0, -abs(target,vel x), abs(target,vel x))


[State 890, CS]
type = ChangeState
trigger1 = time >= 27
value = 0
ctrl = 1

[Statedef 810 - Throw state]
type    = S
movetype= A
physics = N
anim = 810
sprpriority = 2

[State 801, Tech Success]
type = ChangeState
triggerall = NumTarget
triggerall = time <= 7
trigger1 = (target,command = "holdfwd" || target,command = "holdback") && target,command != "holdup" && target,command != "holddown"
trigger1 = (target,AILevel=0)&&(target,command = "x" || target,command = "y" || target,command = "z")
trigger2 = (target,command = "holdfwd" || target,command = "holdback") && target,command != "holdup" && target,command != "holddown"
trigger2 = (target,AILevel=0)&&(target,command = "a" || target,command = "b" || target,command = "c")
value = 81000
 

[State 890, PSND]
type = PlaySnd
trigger1= time = 0
value = 800,0
channel = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = -2
y = -4

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 13
y = 0.4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 8,0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 70,0

[State 810, TargetBind]
type = TargetBind
trigger1 = time > 11
trigger1 = time < 23
pos = 30,-70

[State 810, TargetBind]
type = TargetBind
trigger1 = time > 22
pos = 0,-85

[State 801, ChangeState]
type = ChangeState
triggerall = time > 15
trigger1 =  pos y > 10
value = 811
ctrl = 0

[Statedef 811]
type    = S
movetype= A
physics = S
anim = 811
velset = 0,0
sprpriority = 2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8,2

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 0
value = -80

[State 0, TargetState]
type = TargetState
trigger1 = time = 0
value = 830

[State 810, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 1
value = 80

[State 0, ChangeState]
type = ChangeState
trigger1 = command = "c"
value = 1200
ctrl = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1




[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1


[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 820


[Statedef 830]
type    = A
movetype= H
physics = N
velset = -11,-8
poweradd = 40


[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 830

[State 816, PosAdd]
type = PosAdd
trigger1 = Time = 0
Y = 50
x = -10

[State 816, VelAdd]
type = VelAdd
trigger1 = Time >= 1
Y = 0.4

[State 816, SelfState]
type = SelfState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 5100
ctrl = 0

;throw cabeçada

 ;Throw 1
[Statedef 850]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,0

[State 800, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 2
p1facing = ifelse(Command = "holdfwd",1,-1)
p2facing = 1
p1stateno = 860
p2stateno = 870
guard.dist = 0
fall.xvelocity = 0
fall.yvelocity = 0
fall = 0
fall.recover = 0
fall.damage = 80


[State 800, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 800, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 860]
type    = S
movetype= A
physics = N
anim = 860
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,1

[State 250, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 80
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -20, -70
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -8,-4
air.type = Low
air.hittime = 5
air.velocity = -4,-2
fall= 1
air.fall = 1



[State 801, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 870]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 815, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 870


[State 801, ChangeState]
type = selfState
trigger1 = Time >= 100
value = 0
ctrl = 1


;-----------------------
; Safe fall (from superjump, or jumping attack)
[StateDef 948]
type = A
movetype = I
physics = A
ctrl = 1

; neutral
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X = 0)
value = 48

; forwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X > 0)
value = 49

; backwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X < 0)
value = 50


;hyper coisas
;----- begin of Hyper Effects Helpers-----
;;;;;###################################################################################
 
 

[Statedef 832]
type    = C
movetype= I
physics = N
juggle  = 0
poweradd= 0
velset = 8,0
ctrl = 0
anim = 888
sprpriority = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,2


[State 832, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 832, 2]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 832, 3]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 832, 4]
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 832, 5]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 10

[State 832, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[State 831, Dead]
type = ChangeState
trigger1 = alive = 0
value = 5150
ctrl = 0

;---------------------------------------------------------------------------
; Medium Backward Recovery Roll

[Statedef 855]
type    = C
movetype= I
physics = N
juggle  = 0
poweradd= 0
velset = -8,0
ctrl = 0
anim = 889
sprpriority = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,2


[State 855, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 855, 2]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 855, 3]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 855, 4]
type = MakeDust
trigger1 = Time >= 0
pos = 16,0
spacing = 6

[State 855, 5]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 10

[State 855, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[State 831, Dead]
type = ChangeState
trigger1 = alive = 0
value = 5150
ctrl = 0

[Statedef 40005]
anim = 9999

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 3000, BGPalfx]
Type = BGPalfx
Trigger1 = 1 ;time = [0, 170]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1


[State 40001, Tile #1-7]
type = Explod
trigger1 = time = 0
;trigger1 = numexplod(15601) = 0
anim = 15600
ID = 15601
pos = 0,0
postype = left  ;p2,front,back,left,right
removetime = 60
pausemovetime = -1
supermovetime = -1
scale = 1.2,0.7
sprpriority = -9999
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 40001, Glass Break]
type = ChangeState
;trigger1 = root, stateno != 3300 && root, stateno != 3350
;trigger2 = root, stateno = 3300 && root,animelemtime(61) = 1  || root, stateno = 3350 && root,animelemtime(50) = 1
trigger1 = root,movetype!=A;root, stateno !=[3000,4999]
;trigger2 = root, NumHelper(8400) !=0|| root, NumHelper(8420) !=0
value = stateno+1

;3005

;[State 40001, Comic]
;type = ChangeState
;trigger1 = root, stateno =3005
;value = stateno+1

[Statedef 40006]
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
volume = 200

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;--------------------------[2002 UM MAX2 PORTRAIT]------------------------------
[Statedef 40007]
anim = 9999

[State 40003, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 41550;15605
ID = 15650
pos = 0,abs((240*var(0))-61)
postype = left
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1
removeongethit = 1

[State 40003, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 41551;15606
ID = 15651
pos = 0,abs((240*var(0))-61)
postype = right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1
removeongethit = 1

[State 40003, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 156070
ID = 15660
pos = 0,abs((240*var(0))-61)
postype = left
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1
removeongethit = 1

[State 40003, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 156070
ID = 15661
pos = 0,abs((240*var(0))-61)
postype = right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1
removeongethit = 1

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

[State 40003, DestroySelf]
type = DestroySelf
trigger1 = time = 60

[Statedef 40008]
anim = 9999

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1