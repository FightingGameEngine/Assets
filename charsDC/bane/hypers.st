; States file for {character} -- Hypers
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Hyper Attacks
;
; Hyper 1 (QCF + PP) -- state 3000
;   hyper 1

;---------------------------------------------------------------------------
; COMBO BACKBREAKER!!!!!
;---------------------------------------------------------------------------
[Statedef 888]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 900
ctrl = 0
sprpriority = 2

; Notes: The '-' symbol in the hitflag field means that it only affects
;   players who are not in a hit state. This prevents KFM from combo-ing
;   into the throw. The priority should be set to a low number, such as
;   1 or 2, so that the throw does not take precedence over normal attacks.
;   The type of priority must always be set to "Miss" or "Dodge" for throws,
;   otherwise strange behavior can result.
[State 800, 1]
type = HitDef
Trigger1 = AnimElem=1
attr = S, HA          ;Attributes: Standing, Normal Throw
hitflag = M-        ;Affect only ground people who are not being hit
hitsound   = s30,2
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
sprpriority = 1       ;Draw in front of p2
p2facing = 1          ;Force p2 to face KFM
p1stateno = 781      ;On success, KFM changes to state 810
p2stateno = 782       ;If hit, p2 changes to state 820 in KFM's cns



[State 800, superpause]
type = SuperPause
trigger1 = AnimElem = 1
anim = -1
time = 33
sound = S10,1
pos = 20,-70
darken = 1
poweradd = -1000




[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 4
anim = 112
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 111
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 110
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 4010
ID = 4010
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
anim = 4011
ID = 4011
name = "Right Arrow"
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
anim = 115
ID = 115
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



[State 3000,CS]
type=ChangeState
Trigger1 = AnimElem = 8
value = 889

[State 888, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; jump with p2
[Statedef 781]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 781
sprpriority = 2

[State 0, explod]
type = Explod
trigger1 = animelem = 9
trigger2 = animelem = 21
anim = 8400
sprpriority = 2
postype = p2
pos = 50,5
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 1,1
vel = 0,0
ownpal = 1
supermove = 0

[State -2, FX]
type = Afterimage
trigger1 = time  = 1
time=120
trans = add
PalContrast =  200, 200, 200
PalBright = 0,0,0
length  = 15
TimeGap = 2
FrameGap = 1

[State 781, 6]
type = PlaySnd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 21
value = S72,1

[State 781, Envshake]
type = Envshake
trigger1 = AnimElem = 9
trigger2 = AnimElem = 21
time = 16
freq = 120
ampl = -8

[State 0, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 1,1

[State 0, PosAdd]
type = PosAdd
triggerall =backedgebodydist < 20
trigger1 = animelem = 1
x = 20
persistent = 0
[State 0, PosAdd]
type = PosAdd
triggerall =backedgebodydist = [21,40]
trigger1 = animelem = 1
x = 40
persistent = 0
[State 0, PosAdd]
type = PosAdd
triggerall =backedgebodydist < 20
trigger1 = animelem = 10
x = 20
persistent = 0
[State 0, PosAdd]
type = PosAdd
triggerall =backedgebodydist = [21,40]
trigger1 = animelem = 10
x = 40


[State 781, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 9
value = -42

[State 781, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 21
value = -42


[State 781, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 781, VelSet]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State -2, Playerpush]
type = Playerpush
trigger1 = 1
value = 0

[State 240, 2]
type = PlaySnd
trigger1 = animelem = 1
value = s60,7

[State 781, HyperBg]
type = Explod
trigger1 = animelem = 1
anim = 10010
id = 10010
pos = 0,-10
postype = left
bindtime = -1
removetime = 400
removeongethit = 1
removeongethit = 1
sprpriority = -2
ownpal = 1
scale = 1.1,1.1


[State 781, TargetBind 1]
type = TargetBind
trigger1 = (AnimElem = 1)
pos = 0,0

[State 781, TargetBind 2]
type = TargetBind
trigger1 = (AnimElem = 2)
pos = 0,0

[State 3000, TargetBind 3]
type = TargetBind
trigger1 = (AnimElem = 3)
pos = 0,0

[State 3000, TargetBind 4]
type = TargetBind
trigger1 = (AnimElem = 4)
pos = 0,0

[State 3000, TargetBind 5]
type = TargetBind
trigger1 = (AnimElem = 5)
pos = 0,0

[State 3000, TargetBind 6]
type = TargetBind
trigger1 = (AnimElem = 6)
pos = 0,0


[State 3000, TargetBind 7]
type = TargetBind
trigger1 = (AnimElem = 7)
pos = 0,0

[State 3000, TargetBind 8]
type = TargetBind
trigger1 = (AnimElem = 8)
pos = 0,0

[State 3000, TargetBind 9]
type = TargetBind
trigger1 = (AnimElem = 9)
pos = 0,0


[State 3000, TargetBind 10]
type = TargetBind
trigger1 = (AnimElem = 10)
pos = 0,0

[State 3000, TargetBind 11]
type = TargetBind
trigger1 = (AnimElem = 11)
pos = 0,0

[State 3000, TargetBind 12]
type = TargetBind
trigger1 = (AnimElem = 12)
pos = 0,0

[State 3000, TargetBind 13]
type = TargetBind
trigger1 = (AnimElem = 13)
pos = 0,0

[State 3000, TargetBind 14]
type = TargetBind
trigger1 = (AnimElem = 14)
pos = 0,0

[State 3000, TargetBind 15]
type = TargetBind
trigger1 = (AnimElem = 15)
pos = 0,0

[State 3000, TargetBind 16]
type = TargetBind
trigger1 = (AnimElem = 16)
pos = 0,0

[State 3000, TargetBind 17]
type = TargetBind
trigger1 = (AnimElem = 17)
pos = 0,0

[State 3000, TargetBind 18]
type = TargetBind
trigger1 = (AnimElem = 18)
pos = 0,0

[State 3000, TargetBind 19]
type = TargetBind
trigger1 = (AnimElem = 19)
pos = 0,0

[State 3000, TargetBind 20]
type = TargetBind
trigger1 = (AnimElem = 20)
pos = 0,0

[State 3000, TargetBind 21]
type = TargetBind
trigger1 = (AnimElem = 21)
pos = 0,0

[State 3000, TargetBind 22]
type = TargetBind
trigger1 = (AnimElem = 22)
pos = 0,0

[State 3000, TargetBind 23]
type = TargetBind
trigger1 = (AnimElem = 23)
pos = 0,0

[State 3000, TargetBind 24]
type = TargetBind
trigger1 = (AnimElem = 24)
pos = 0,0

[State 3000, TargetBind 25]
type = TargetBind
trigger1 = (AnimElem = 25)
pos = 0,0

[State 3000, TargetBind 26]
type = TargetBind
trigger1 = (AnimElem = 26)
pos = 0,0

[State 3000, ScreenBound]
type = ScreenBound
trigger1 =1
value = 0
movecamera = 0,0



[State 3000,CS]
type=ChangeState
Trigger1 = AnimElem = 26
value = 889

; drop p2
[Statedef 889]
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 784
sprpriority = -1

[State 781, 6]
type = PlaySnd
trigger1 = AnimElem = 4
value = S100,4


[State 781, 6]
type = PlaySnd
trigger1 = AnimElem = 6
value = S8,0

[State 781, 6]
type = PlaySnd
trigger1 = AnimElem = 8
value = S3,1



[State 781, Envshake]
type = Envshake
trigger1 = AnimElem = 10
time = 16
freq = 120
ampl = -8

[State 3000, goup]
type = VelSet
trigger1 = AnimElem = 6
y = -9

[State 3000, gouptarget]
type = TargetVelSet
trigger1 = AnimElem = 6
Y = -10

[State 3000, goup]
type = VelSet
trigger1 = AnimElem = 9
y = 9

[State 3000, gouptarget]
type = TargetVelSet
trigger1 = AnimElem = 9
Y = 10

[State 105, End]
type = posset
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
y = 0

[State 105, End]
type = velset
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
y = 0
x = 0



[State 810, crack Sound]
type = PlaySnd
trigger1 = AnimElem = 10
value = 30, 1

[State 3000, TargetBind 1]
type = TargetBind
trigger1 = (AnimElem = 1)
pos = 0,0

[State 3000, TargetBind 2]
type = TargetBind
trigger1 = (AnimElem = 2)
pos = 0,0

[State 3000, TargetBind 3]
type = TargetBind
trigger1 = (AnimElem = 3)
pos = 0,0

[State 3000, TargetBind 4]
type = TargetBind
trigger1 = (AnimElem = 4)
pos = 0,0

[State 3000, TargetBind 5]
type = TargetBind
trigger1 = (AnimElem = 5)
pos = 0,-10

[State 3000, TargetBind 6]
type = TargetBind
trigger1 = (AnimElem = 6)
pos = 0,-10

[State 3000, TargetBind 7]
type = TargetBind
trigger1 = (AnimElem = 7)
pos = 0,-10

[State 3000, TargetBind 8]
type = TargetBind
trigger1 = (AnimElem = 8)
pos = 0,-10

[State 3000, TargetBind 9]
type = TargetBind
trigger1 = (AnimElem = 9)
pos = 0,-10

[State 3000, TargetBind 9]
type = TargetBind
trigger1 = (AnimElem = 10)
pos = 0,20




[State 3001, godowntarget]
type = TargetVelSet
trigger1 = AnimElem = 11
X = -4
Y = -5






[State 3001, flash_screen]
type = envcolor
trigger1 = animelem = 10
time = 4
under = 1
value = 255,255,255

[State 3001, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 10
value = -100


[State 3001,1]
type=ChangeState
Trigger1 = AnimElem = 12
value = 0
ctrl = 1



[Statedef 782]
type    = A
movetype= H
physics = N
velset = 0,0


[State 782, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 782

[State 782, 2]
type = ChangeAnim2
Trigger1 = AnimElem = 26
value = 783

[State 782, ScreenBound]
type = ScreenBound
trigger1 = Time = 275
value = 1
movecamera = 1,1

[State 882, SelfState]
type = SelfState
trigger1 = Time >= 322
value = 5050
ctrl = 0




;---------------------------------------------------------------------------
; Overdose State
[Statedef 3002]
type = U
movetype = H

[State -3, 17]
type = NotHitBy
trigger1 = alive = 1
value = , NT,ST,HT
time = 1;2

[State 9000, VarSet]
type = VarSet
trigger1 = time = 0
var(51) = facing

[State 9000, VarSet]
type = turn
trigger1 = var(51) != facing
facing = var(51)


[State 9000, a]
type = VarSet
trigger1 = time = 0
v = 52
value = 1

[State 9000, b]
type = VarSet
trigger1 = time <= 0
v = 53
value = AnimElemNo(0)
ignorehitpause = 1

[State 9000, 1]
type = VarSet
trigger1 = time = 0
v = 50
value = var(59)

[State 9000, 2]
type = VarSet
trigger1 = time = 0
v = 59
value = 0

[State 9000, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 9000, ChangeState];Dead
type = ChangeState
trigger1 = Life <= 0
value = ifelse(StateType = A, 5020,5000)

[State 9000, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = Anim
elem = var(53)

[State 9000, End]
type = ChangeState
trigger1 = (time >= floor(gethitvar(hittime) * 0.8)) && (Life > 0)
value = var(54)
ctrl = var(55)



; TRANSFORMATION
[Statedef 3500]
type = S
movetype = A
physics = S
anim = 4442
ctrl = 0

[State 3000, 1]
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -5



[State 2200, juice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 60, 4


[State 2200,8]
type = SuperPause
trigger1 = AnimElem = 2
anim = -1
time = 55
movetime = 55
pos = -20,-70
sound = S10,1
poweradd = -3000
sprpriority = 5

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 4
anim = 112
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 111
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 110
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
ignorehitpause = 1
anim = 4010
ID = 4010
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
anim = 4011
ID = 4011
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
anim = 115
ID = 115
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

 [State 2811, superBG]
type = Helper
trigger1 = AnimElem = 5
name = "Super BG"
ID = 8008
stateno = 8008
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1

;--------------------------------------------
[State 170, 1]
type = NotHitBy
trigger1 = animelemtime(1)>=0 && animelemtime(1)<81 && anim=4442
trigger1 = 1
value = SCA
time = 1

[State 170, 1]
type = NotHitBy
trigger1 = time>=81
trigger1 = 1
value = SCA, AT
time = 1;60

[State 170, 1]
type = HitBy
trigger1 = time>=81
trigger1 = 1
value = SCA, NP,SP,HP
time = 1;60



[State 182, 4]
type = EnvShake
trigger1 = time = 94
trigger2 = time = 114
;trigger1 = animelemtime(1) = 24;movecontact
time = 10
freq = 75;25
ampl = 10
ignorehitpause=1

[State 4000, 2]
type = HitDef
trigger1 = TIME = 94;149
attr = S, HA
animtype  = back               ;Make p2 use "Up" type animation on hit
damage    = 36, 18
getpower  = 0,0
givepower =0,0
;priority  = 5
hitflag = MAFD
guardflag = MA
pausetime = 1,18
sparkno= s9992
sparkxy = 0,-110; + 60 * ((Time % 20)= 0)
guard.sparkno = s9993
hitsound   = S2,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 1
ground.hittime  = 1
ground.velocity = -1.3,-10
guard.velocity = -11
air.velocity = -1.3,-10
airguard.velocity = -4.5,-5
;envshake.time = 25           ;Parameters for shaking the screen on hit
;envshake.ampl = 7
;envshake.freq = 176
p2facing = 1                 ;Force p2 to face p1 on hit
fall = 1
fall.recover = 0             ;Prevent p2 from recovering
;fall.damage = 70             ;p2 will take 70 damage on hitting the ground
;fall.envshake.ampl = 6       ;Parameters for shaking the screen on fall
;fall.envshake.freq = 178
;fall.envshake.time = 15
down.velocity = -1,-5
down.hittime = 20
down.cornerpush.veloff = -20
ignorehitpause=1
sprpriority = -1
air.fall = 1



[State 1200, ]
type = Varset
trigger1 = time = 110
var(9)=1000

[State 1200, ]
type = Varset
trigger1 = time = 110
var(12)=2400

[State 3005, 1]
type = ChangeState
trigger1 = time = 110
value = 4001


;--------------------------------------------
;walk/attack
[StateDef 4001]
type    = S
movetype= A
physics = S
ctrl = 0
;anim = 4050;4001



[State -3, 17]
type = NotHitBy
trigger1 = 1
value =  SCA,AT
time = 1

[State 4001, NotHitBy]
type = hitBy
trigger1 = 1
value = SCA, AA, AP
time = 1

[State 8160, Width]
type = Width
trigger1 = 1
value = 27,30;
;ground.back = 30      ;60 atrás
;ground.front = 18     ;45 frente

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 3002
trigger1 = time = 0
value = 4001;4050

[State 3005, 1]
type = ChangeAnim
triggerALL = var(20)=0
trigger1 = (anim = 4050 || anim = 4053) && command="holdfwd"
trigger2 = (anim = 4050 || anim = 4052) && command="holdback"
value = 4052 + (command="holdback")

[State 3005, avançar]
type = ChangeAnim
trigger1 = (anim = 4050 || anim = 4053)
triggerall = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)
trigger1 = var(20) = 1 && P2BodyDist X > 165
trigger1 = random > life && time % 4; && ctrl
;trigger1 = P2Movetype != A; && P2StateType != A
;trigger2 = P2Movetype = A && P2StateType = S
;trigger2 = P2life < life
value = 4052; + (command="holdback")

[State 4500, 1]
type = changeanim
trigger1 = p2dist X < -5 && anim = 4050
value=4055

[State 4500, 1]
type = Turn
trigger1 = anim = 4055;stand
trigger1 = animelemtime(1) = 0
;persistent = 0
;trigger1 = p2dist X < -5

[State 3005, 1]
type = ChangeAnim
trigger1 = (anim = 4052 || anim = 4053)
trigger1 = command!="holdfwd" && command!="holdback"
trigger2 = anim = 4055 && animTime = 0
trigger3 = (anim = 4062 || anim = 4060 ) && animTime = 0
trigger4 = anim = 4001 && animtime=0
value = 4050

[State 3005, 1]
type = velset
trigger1 = anim = 4052 && animelemtime(2)>= 0 && animelemtime(6)<0
trigger3 = anim = 4052 && animelemtime(9)>= 0
trigger2 = anim = 4053 && animelemtime(2)>= 0 && animelemtime(6)<0
trigger4 = anim = 4053 && animelemtime(9)>= 0
;trigger2 = command="holdfwd" || command="holdback"
x = 2 - 4 * (anim = 4053);(command="holdback")

[State 3005, 1]
type = playsnd
trigger1 = anim = 4052 && (animelemtime(4) = 0 || animelemtime(8)=0)
trigger2 = anim = 4053 && (animelemtime(4) = 0 || animelemtime(8)=0)
value= S2000,8

[State 3005, 1]
type = playsnd
trigger1 = anim = 4060 || anim = 4062
triggerall = animelemtime(1)<=1
value= S10,11
channel = 0


[State 100, 4]
type = Varset
trigger1 = command = "a" ^^ command = "b" ^^ command = "c" ^^ command = "x"
var(21) = (command = "c" & command = "x") + 2* (command != "a" && command != "b")

[State 100, 4]
type = changeanim
trigger1 = command = "a" ^^ command = "b" ^^ command = "c" ^^ command = "x"
triggerALL = anim= 4055 || anim= 4050 || anim= 4052 || anim= 4053
value = 4060 + 2*(command != "a" && command != "b")
triggerALL = var(20)=0

[State 4001, golpes]
type = ChangeAnim
value = 4062 - 2 * (P2StateType = A || P2BodyDist X > 95)
triggerALL = var(20)=1
triggerall = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)
triggerall = var(20) = 1 && P2BodyDist X = [0,145]
triggerall = random > life && time % 4; && ctrl
triggerALL = anim= 4055 || anim= 4050 || anim= 4052 || anim= 4053
trigger1 = P2Movetype != A && P2StateType != A
trigger2 = P2Movetype = A && P2StateType = S
trigger2 = P2life < life

[State 1200, ChangeAnim]
type = Varset
trigger1 = var(12) < 600
var(12)=var(12)+2

[State 4000, 2]
type = HitDef
triggerall = anim = 4060
trigger1 = !movecontact
attr = S,NA
damage = 50
getpower = 0,0
givepower = 0,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,13
sparkxy = -10, -60
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
guard.sparkno = s9993
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -11
air.velocity = -4.5,-6.5
fall = 1
yaccel = 0.5
ground.cornerpush.veloff = -10
guard.cornerpush.veloff = -10
envshake.time = 10
envshake.ampl = 5
envshake.freq = 150

[State 4000, 2]
type = HitDef
triggerall = anim = 4062
trigger1 = !movecontact
attr = S,NA
damage = 50
getpower = 0,0
givepower = 0,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,13
sparkxy = -10, -60
guard.sparkno = s9993
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -11
air.velocity = -4.5,-6.5
fall = 2
yaccel = 0.5
ground.cornerpush.veloff = -10
guard.cornerpush.veloff = -10
envshake.time = 10
envshake.ampl = 5
envshake.freq = 150

[State 0, MoveHitReset]
type = MoveHitReset
trigger1 = anim=4050 ;animtime = 0
trigger2 = animtime = 0
;ignorehitpause =
;persistent =


[State 100, 4]
type = ChangeState
triggerall = var(12)>600 && anim != [4055,4065]
trigger1 = var(20)=1 && ((var(12)-600)>var(9)+life)
trigger1 = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)
value = 3502

[State 100, 4]
type = ChangeState
trigger1 = command = "y"
value = 4002

[State 100, 4]
type = ChangeState
trigger1 = command = "z"
value = 8999

[State 3005, 1]
type = ChangeState
trigger1 = var(9)=0 && (anim=4050 || anim=4052 || anim=4053 || anim=4001)
value = 4005

;---------------------------------------------------------------------------
;BACKBREAKER!!!!!
;---------------------------------------------------------------------------
[Statedef 4002]
type    = S
movetype= A
ctrl = 0
sprpriority=0
velset=0,0
anim = 999


; Notes: The '-' symbol in the hitflag field means that it only affects
;   players who are not in a hit state. This prevents KFM from combo-ing
;   into the throw. The priority should be set to a low number, such as
;   1 or 2, so that the throw does not take precedence over normal attacks.
;   The type of priority must always be set to "Miss" or "Dodge" for throws,
;   otherwise strange behavior can result.
[State 800, 1]
type = HitDef
Trigger1 = AnimElem=1
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
hitsound   = s30,2
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
sprpriority = 1       ;Draw in front of p2
p2facing = 1          ;Force p2 to face KFM
p1stateno = 39912       ;On success, KFM changes to state 810
p2stateno = 29912       ;If hit, p2 changes to state 820 in KFM's cns

[State 200, a]
type = ChangeAnim
triggerall = PrevStateNo != 3002
trigger1 = time = 110
value = 4001




[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 4001
ctrl = 1

; jump with p2
[Statedef 39912]
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 998
sprpriority = 2

[State 29912, broken]
type = PlaySnd
trigger1 = AnimElem = 1
value = 60, 6


[State 3000, puttoback]
type = SprPriority
trigger1 = AnimElem = 2
value = -1

[State 3000, TargetBind2]
type = TargetBind
trigger1 = (AnimElem = 1)
pos = 230,0


[State 3000, TargetBind2]
type = TargetBind
trigger1 = (AnimElem = 2)
pos = 190,0

[State 3000, TargetBind2]
type = TargetBind
trigger1 = (AnimElem = 3)
pos = 145,0



[State 3000, TargetBind2]
type = TargetBind
trigger1 = (AnimElem = 4)
pos = 190,0

[State 3000, TargetBind2]
type = TargetBind
trigger1 = (AnimElem = 5)
pos = 55,45



[State 3000, gouptarget]
type = TargetVelSet
trigger1 = AnimElem = 5
Y = 0

[State 3000,CS]
type=ChangeState
Trigger1 = AnimElem = 6
value = 28812

; drop p2
[Statedef 28812]
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 28812
sprpriority = -1

[State 29912, 4]
type = Explod
trigger1 = Time = 0
anim = 7999
pos = 10,130
facing = 1
postype = back
sprpriority = -1
bindtime = -1





[State 28812, crack Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 30, 1

[State 28812, TargetBind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 0,0


[State 28812, TargetBind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 0,-53

[State 28812, TargetBind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = 0,0


[State 28812, godowntarget]
type = TargetVelSet
trigger1 = AnimElem = 5
X = -4
Y = -8

[State 28812,1]
type=ChangeState
Trigger1 = AnimElem = 5
value = 4001
ctrl = 1




[State 28812, flash_screen]
type = envcolor
trigger1 = animelem = 3
time = 4
under = 1
value = 255,255,255

[State 28812, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 3
value = -175

[Statedef 29912]
type    = A
movetype= H
physics = N
velset = 0,0

[State 29912, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 28813


[State 29912, 2]
type = ChangeAnim2
Trigger1 = AnimElem = 5
value = 29913

[State 29912, SelfState]
type = SelfState
trigger1 = Time >= 80
value = 5050
ctrl = 0




;OD Chokeslam ------------------------------------------------------------------
[Statedef 8999]
type    = S
movetype= A
ctrl = 0
sprpriority=0
velset=0,0
anim = 999




; Notes: The '-' symbol in the hitflag field means that it only affects
;   players who are not in a hit state. This prevents from combo-ing
;   into the throw. The priority should be set to a low number, such as
;   1 or 2, so that the throw does not take precedence over normal attacks.
;   The type of priority must always be set to "Miss" or "Dodge" for throws,
;   otherwise strange behavior can result.
[State 8999]
type = HitDef
trigger1 = hitcount < 1
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1sprpriority = 1     ;Draw p1's sprite in front of p2
                      ;p2's sprite priority is set to 0 by default
p1facing = 1
p2facing = 1          ;Force p2 to face p`
p1stateno = 837       ;On success, changes to state 810
p2stateno = 829       ;If hit, p2 changes to state 820
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down
hitsound = S1,9
id = 8999


[State 800]
type = null;VarSet
trigger1 = AnimElem = 5
var(9) = 1
persistent = 0

[State 810]
type = PlaySnd
trigger1 = AnimElem = 3
value = 10,11

[State 8999]
type = ChangeAnim
triggerall = PrevStateNo != 3002
trigger1 = time = 110
value = 4001

[State 8999, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 4001
ctrl = 1

;---------------------------------------------------------------------------
; Throw

[Statedef 837]
type    = S
movetype= A
physics = N
anim = 837
poweradd = 0
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0




[State 837]
type = null;PlayerPush
trigger1 = 1
value = 0

[State 837]
type = null;NotHitBy
trigger1 = 1
value = SCA



[State 837]
type = null;ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 837];Bind 1
type = TargetBind
trigger1 = AnimElemNo(0) = 1
pos = 150,0


[State 837];Bind 2
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos = 200,-20


[State 837];Bind 3
type = TargetBind
trigger1 = AnimElemNo(0) = 3
pos = 200,-20


[State 837];Bind 4
type = TargetBind
trigger1 = AnimElemNo(0) = 4
pos = 66,20


[State 810];Bind 5
type = TargetBind
trigger1 = AnimElemNo(0) = 5
pos = 0,0



[State 810];Bind 5
type = TargetBind
trigger1 = AnimElemNo(0) = 6
pos = 10,0

[State 810]
type = PlaySnd
trigger1 = AnimElem = 6
value = 72,1


[State 810]
type = EnvShake
trigger1 = AnimElem = 7
time = 12





[State 837, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 3
value = -175


[State 810]
type = TargetState
trigger1 = AnimElem = 7
value = 823




[State 817]
type = ChangeState
trigger1 = AnimElem = 11
value = 4001
ctrl = 1




;---------------------------------------------------------------------------
; Throw End

[Statedef 813]
type    = S
movetype= I
physics = S
;anim = 813
;poweradd = 60
juggle  = 0
;velset = -3,-7
velset = 0,0
ctrl = 0
sprpriority = 0

[State 813]
type = null;PlayerPush
trigger1 = Time < 20
value = 0



[State 813]
type = null;ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 1

[State 813]
type = ChangeState
trigger1 = AnimTime = 0
value = 4001
ctrl = 1


;---------------------------------------------------------------------------
;Thrown

[Statedef 829]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 829]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 829]
type = ChangeAnim2
trigger1 = Time = 0
value = 829

[State 829]
type = null;Turn
trigger1 = facing = enemynear,facing


[State 829]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 829]
type = DestroySelf
trigger1 = ishelper


;---------------------------------------------------------------------------
;Thrown

[Statedef 823]
type    = A
movetype= H
physics = N
;velset = -7,-7

[State 823]
type = null;Turn
trigger1 = Time = 0

[State 823]
type = VelSet
trigger1 = Time = 0
x = -13
y = -9

[State 823] ;Gravity
type = VelAdd
trigger1 = 1
y = .4


[State 823]
type = null;ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 1,0


[State 823]
type = ChangeState
;triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 10
trigger2 = FrontEdgeBodyDist <= 10
value = 9027


[State 823]
type = null;SelfState
trigger1 = BackEdgeBodyDist <= 15
trigger2 = FrontEdgeBodyDist <= 15
value = 5040


[State 823]
type = null;SelfState
trigger1 = Vel Y > 2
value = 5040

[State 823] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground



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


;---------------------------------------------------------------------------
; End
[Statedef 4005]
type = S
movetype = I
physics = S
anim = 4005
ctrl = 0

[State 1200, durar]
type = Varset
trigger1 = time = 0
var(9)=0

[State 1200, atirar]
type = Varset
trigger1 = time = 0
var(12)=0



[State 4000, 1]; som diminui
type = PlaySnd
trigger1 = time = 0
value = 60,4
channel = 1

[State 3005, 1]
type = ChangeState
trigger1 = anim = 4005 && animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;JUMP BACKBREAKER!!!!!
;---------------------------------------------------------------------------
[Statedef 800]
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3000
sprpriority = 2
poweradd = 80

[State 100, Explod]
type = Explod
trigger1 = animelem = 3
anim = 918
ID = 918
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 1,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .8,.8
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

; Notes: The '-' symbol in the hitflag field means that it only affects
;   players who are not in a hit state. This prevents KFM from combo-ing
;   into the throw. The priority should be set to a low number, such as
;   1 or 2, so that the throw does not take precedence over normal attacks.
;   The type of priority must always be set to "Miss" or "Dodge" for throws,
;   otherwise strange behavior can result.

[State 100, 2]
type = VelSet
;trigger1 = 1
trigger1 = time = 10
x = 10
y = 0

[State 100, 2]
type = VelSet
;trigger1 = 1
trigger1 = MoveContact
x = 0
y = 0

[State 100, 2]
type = posset
;trigger1 = 1
trigger1 = MoveContact
x = 0
y = 0



[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, HA
guardflag = MA
hitflag = MAF         ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
guard.sparkno = -1
p1sprpriority = 1
p2sprpriority = 2    ;Draw p1's sprite in front of p2
hitsound = S8600,0                      ;p2's sprite priority is set to 0 by default
p1facing = 1
p2facing = 1          ;Force p2 to face KFM
p1stateno = 3000       ;On success, KFM changes to state 810
p2stateno = 3099       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down

[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 9993
scale = 0.5,0.5

[State 800, superpause]
type = SuperPause
trigger1 = AnimElem = 1
anim = -1
time = 33
sound = S10,1
pos = 20,-70
darken = 1
poweradd = -1000




[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 4
anim = 112
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 111
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 110
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 4010
ID = 4010
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
anim = 4011
ID = 4011
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
anim = 115
ID = 115
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
[Statedef 3000]
type    = S
movetype= A
physics = N
anim = 3001
poweradd = 60

[State 100, 2]
type = VelSet
;trigger1 = 1
trigger1 = time = 0
x = 0


[State 73300, HyperBg]
type = Explod
trigger1 = animelem = 1
anim = 10010
id = 10010
pos = 0,-10
postype = left
bindtime = -1
removetime = 175
removeongethit = 1
removeongethit = 1
sprpriority = -2
ownpal = 1
scale = 1.1,1.1


; Here a variable, var(2), is used to remember whether or not the
; player was holding forward at the start of the state. This variable
; is checked later on to turn KFM around if necessary.


[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3, 1

[State 450, 1]
type = PlaySnd
trigger1 = AnimElem = 8
value = 10, 11

[State 700, 1]
type = VelSet
trigger1 = AnimElem = 8
y = const(velocity.jump.y)*1.50

[State 0,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 8,0

[State 0,super jump]
type = Explod
trigger1 = AnimElem = 8
anim = 8004
ID = 8004
pos = 0,20
postype = p1
bindtime = 1
removetime = 26
supermove = 26
pausemovetime = 26
removeongethit = 1
sprpriority = 3
ownpal = 1

[state 700,blur]
type = afterimage
trigger1 = time = 39 ;AnimElem = 8
length = 30;100
PalBright   =  0,0,0;320, 320, 320
PalContrast =  120,120,220;0, 0, 0
PalAdd      =  0,0,0;80,80,100
PalMul      = 1,1,1;.50,.50,.50
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 20
ignorehitpause = 1

[State 810, Bind 6]
type = veladd
trigger1 = AnimElem = 8, >= 0
trigger1 = AnimElem = 10, < 0
y = 0.4

[State 105, End]
type = Changeanim
trigger1 = AnimElem = 8, >= 0
trigger1 = AnimElem = 9, < 0
trigger1 = Vel Y >= 0
value = 3001
elem = 9

[State 105, End]
type = posset
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
y = 0
x = 0

[State 105, End]
type = velset
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
y = 0
x = 0

[State 105, End]
type = Changeanim
trigger1 = AnimElem = 9, >= 0
trigger1 = AnimElem = 10, < 0
trigger1 = Vel Y >= 0
trigger1 = Pos Y >= 0
value = 3001
elem = 10


[State 810, Bind 6]
type = TargetBind
trigger1 = AnimElem = 1
pos = 75, 0
time = 10

[State 810, Bind 7]
type = TargetBind
trigger1 = AnimElem = 2
pos = 70, -20
time = 10

[State 810, Bind 8]
type = TargetBind
trigger1 = AnimElem = 3
pos = 70, -20
time = 10

[State 810, Bind 9]
type = TargetBind
trigger1 = AnimElem = 4
pos = 70, -20
time = 10

[State 810, Bind 10]
type = TargetBind
trigger1 = AnimElem = 5
pos = 57, -34
time = 10

[State 810, Bind 11]
type = TargetBind
trigger1 = AnimElem = 6
pos = 8, -82
time = 10

[State 810, Bind 11]
type = TargetBind
trigger1 = AnimElem = 7
pos = 8, -78
time = 20

[State 810, Bind 11]
type = TargetBind
trigger1 = AnimElem = 8
pos = 8, -82
time = 200

[State 810, Bind 11]
type = TargetBind
trigger1 = AnimElem = 9
pos = 8, -12
time = 200

[State 810, Bind 11]
type = TargetBind
trigger1 = AnimElem = 10
pos = 8, -2
time = 1



[State 810, Land Sound]
type = PlaySnd
trigger1 = AnimElem = 10
value = 8, 1

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 10
value = 30, 1

[State 810, Hurt 11]
type = TargetLifeAdd
trigger1 = AnimElem = 10
value = -180

[state 1051, land explod]
type = helper
trigger1 = AnimElem = 10 & numhelper(8010) = 0
name = "land explod"
id = 77010
stateno = 77010
postype = p1
pos = 0,0
sprpriority = -1
bindtime = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 810, Throw 11]
type = TargetState
trigger1 = AnimElem = 10
value = 3111

; [State 810, Turn 12]
; type = Turn
; trigger1 = AnimElem = 12
;
; [State 810, Pos 15]
; type = PosAdd
; trigger1 = AnimElem = 15
; x = -10
;
[State 810, State End]
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
;     own AIR file. Look at Action 820 in kfm.air for some extra
;     comments.
[Statedef 3099]
type    = A
movetype= H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3101

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 820, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw - thrown into the air
; (a custom gethit state)
; Description: This state has the opponent flying through the air and
;     falling down onto the ground. The SelfState controller sets the
;     opponent back using to his own state file when he his the ground.
;     Controllers 821,2 and 821,3 allow the opponent to recover by
;     hitting his recovery command when he is falling.
[Statedef 3111]
type    = A
movetype= H
physics = N
;velset = 2.8,-7

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3101
elem = 10

[State 821, 1] ;Gravity
type = turn
Trigger1 = animelem = 12

[State 821, 1] ;Gravity
type = VelSet
Trigger1 = time = 0
x = -4.8
y = -7

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
;car smash
;-------------------------------------------------------------------------------
; Stand Hard Punch
[StateDef 2798]
anim = 220
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0



[State 800, superpause]
type = SuperPause
trigger1 = AnimElem = 1
anim = -1
time = 33
movetime = 33
pos = -20,-70
sound = S10,1
poweradd = -1000
sprpriority = 5




[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 4
anim = 112
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 111
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 110
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 4010
ID = 4010
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
anim = 4011
ID = 4011
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
anim = 115
ID = 115
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

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2

[State 220, HitDef]
type = null;HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 35,10
getpower = 0,0
givepower = 0,0
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-96
guard.sparkno = s9993
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
p2stateno = 10210

[State 800, 1]
type = HitDef
Trigger1 = AnimElem=1
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-
pausetime = 11,11
getpower = 0,0
givepower = 0,0      ;Affect only ground people who are not being hit
hitsound   = S2,1
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = S2601
guard.sparkno = s9993
sparkxy = 0,-100       ;No spark
sprpriority = 1       ;Draw in front of p2
p2facing = 1          ;Force p2 to face KFM
p1stateno = 2799     ;On success, KFM changes to state 810
p2stateno = 10210   ;If hit, p2 changes to state 820 in KFM's cns


[State 800, 1]
type = null;ChangeState
trigger1 = Movehit = 1
value = 2799
ctrl = 1

[State 800, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
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

 [State 2811, superBG]
type = Helper
trigger1 = AnimElem = 1
name = "Super BG"
ID = 8008
stateno = 8008
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1


[State 2799, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 100,4


[State 2799, next]
type = ChangeState
trigger1 =  time = 75
value = 2800
ctrl = 1
;-------------------------------------------------------------------------------
[Statedef 2800]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 2801
ctrl = 0
sprpriority = 2

[State 820, Spark]
type = Explod
trigger1 = Time = 0
anim = 2802
ID = 2802
pos = 0,0
postype = p1
shadow = -1
bindtime = 999
removeongethit = 1
pausemovetime = -1
supermove = 1
sprpriority = 2
ownpal = 1




; Notes: The '-' symbol in the hitflag field means that it only affects
;   players who are not in a hit state. This prevents KFM from combo-ing
;   into the throw. The priority should be set to a low number, such as
;   1 or 2, so that the throw does not take precedence over normal attacks.
;   The type of priority must always be set to "Miss" or "Dodge" for throws,
;   otherwise strange behavior can result.
[State 800, 1]
type = HitDef
trigger1 = time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = MAFD          ;Affect only ground people who are not being hit
hitsound   = s8,2
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
sprpriority = 1       ;Draw in front of p2
p2facing = 1          ;Force p2 to face KFM
p1stateno = 2811      ;On success, KFM changes to state 810
p2stateno = 2912      ;If hit, p2 changes to state 820 in KFM's cns



[State 300, 1]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; Push p2
[Statedef 2811]
type    = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 2800


[State 2811, CallHelper]
type = helper
trigger1 = animelem = 1
ID = 2804
pos = 0,0
postype = p1
stateno = 2804
helpertype = normal
ownpal = 0
keyctrl = 0


[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = s100,4
channel = 4

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = s52,0
channel = 5

[State 1100, Velocity]
type = VelSet
trigger1 = Time = 0
x = 8;13.5

[State 0, Explod]
type = Explod
trigger1 = time =0
anim = 7103
ID = 7103
pos = -15,-5
postype = p1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 901,1]
type = TargetBind
trigger1 = time = 0
pos = 175, -45
postype = P1


[State 901,1]
type = TargetBind
trigger1 = time = 5
pos = 172, -45
postype = P1

[State 810, Throw 11]
type = TargetState
trigger1 = FrontEdgeBodyDist <= 100;10
trigger2 = Time = 150
value = 2944


[State 1205, ChangeState]
type = ChangeState
trigger1 = FrontEdgeBodyDist <= 100;10
trigger2 = Time = 150
value = 2913

[Statedef 2913]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 2913

[State 2811, CallHelper]
type = helper
trigger1 = animelem = 6
ID = 2806
pos = -145,0
postype = p1
stateno = 2806
helpertype = normal
ownpal = 0
keyctrl = 0

[State 3001, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 10
value = -250

[State 2799, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2


[State 2913, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 51
ctrl = 1


[Statedef 2804]
type = S
anim = 2803
velset = 0, 0
movetype = A
physics = N
sprpriority = 1

[State 1100, Velocity]
type = VelSet
trigger1 = Time = 0
x = 8;13.5

[State 12200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1,0

[State 1205, ChangeState]
type = ChangeState
trigger1 = FrontEdgeBodyDist <= 100;10
trigger2 = Time = 150
value = 2805

[Statedef 2805]
type = S
anim = 2805
velset = 0, 0
movetype = A
physics = N
sprpriority = 1


[State 2805, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S2000,1


[State 0, boom]
type = ChangeState
trigger1 = Time = 200
value = 2807


[Statedef 2806]
type = S
anim = 2806
velset = 0, 0
movetype = A
physics = N
sprpriority = 1

[State 2805, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 11
value = S60,13

[State 2805, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = S8,1

;shooting spark
[State 0, Explod]
type = Explod
trigger1 = animelem =11
anim = 8125
ID = 8125
pos = 55,-37
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


[State 2806, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1,0


[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 200

[Statedef 2807]
type = S
anim = 2807
velset = 0, 0
movetype = A
physics = N
sprpriority = 1

[State 2805, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S60,14


[State 4002, 3]
type = Explod
trigger1 = time = 0
anim = 4007
ID = 4002
pos =  275, 200
facing = -1
postype = back
bindtime = 999
removetime = 58
;supermovetime = 50
;pausemovetime = 50
sprpriority = -3
ownpal = 1

[State 4002, 3]
type = Explod
trigger1 = time = 0
anim = 4008
ID = 4002
pos = 275, 200
facing = -1
postype = back
bindtime = 999
removetime = 58
;supermovetime = 50
;pausemovetime = 50
sprpriority = 5
ownpal = 1




[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 100
;-------------------------------------------------------------------------------

;p2grabbed, dashing
[Statedef 2912]
type    = A
movetype= H
physics = N
velset = 0,0


[State 2912,1]
type = changeanim2
trigger1 = time = 0
value = 2811







[Statedef 2944]
type    = A
movetype= H
physics = N
velset = 0,0

[State 7697, Blue_FX]
type = PalFX
trigger1 = Time = 200
time = 90
add = 210,10,-200
mul = 200,200,200
sinadd = 60,40,50,20
color = 0
invertall = 1


[State 2944,1]
type = changeanim2
trigger1 = time = 0
value = 2811

[State 2944, SelfState]
type = SelfState
trigger1 = Time >= 200
value = 5050
ctrl = 0

;;----------------
[Statedef 10210]
type    = S
movetype= H
physics = S
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
trigger1 = time = 108
value = 5070
ctrl = 1

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = roundstate = 3
trigger1 = time = 120
value = 5050
ctrl = 1



;Power Geyser Rock attack---------------------------------------------------------------------------
[Statedef 3201]
type    = S
movetype = A
physics = S
ctrl = 0
velset=0,0
anim = 3201


[State 3201, superpause]
type = SuperPause
trigger1 = AnimElem = 1
anim = -1
time = 33
sound = S10,1
pos = 20,-70
darken = 1
poweradd = -1000




[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 4
anim = 112
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 111
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 110
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 4010
ID = 4010
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
anim = 4011
ID = 4011
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
anim = 115
ID = 115
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




[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3001, Width]
type = Width
trigger1 = 1
edge = 20,0
player = 20,15




[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 72,1



[State 903, EnvShake]
type = EnvShake
trigger1 = AnimElem = 4
time = 15
ampl = 8



[State 1000, Spark]
type = Explod
trigger1 = AnimElem = 4
Anim = 60
pos = 0,0
postype = p1
ownpal = 1
bindtime = 1
pausemovetime = -1
supermove = 1
ignorehitpause = 1
sprpriority = -2

[State 1000, Spark]
type = Explod
trigger1 = AnimElem = 4
Anim = 61
pos = 0,5
postype = p1
ownpal = 1
bindtime = 1
pausemovetime = -1
supermove = 1
ignorehitpause = 1
sprpriority = -2



[State 820, Spark]
type = Explod
trigger1 = AnimElem = 4
anim = 7400
pos = 70,0
postype = p1
ownpal = 1
bindtime = -1
removeongethit = 1
pausemovetime = -1
supermove = 1
ID = 7400
sprpriority = 2






[State 1000, Proj]
type = Projectile
trigger1 = AnimElem = 4
projanim = 7453
Projhitanim = -1
projremanim = -1
projcancelanim = -1
projremovetime = 7
offset = 70, 0
projpriority = 7
projsprpriority = 4
velocity = 0
attr = S, HP
damage= 50,7
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = -1
sparkxy = 0,-40
animtype = Heavy
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
air.hittime = 18
guard.ctrltime = 18
ground.velocity = -2.5, -7.5
guard.velocity = -10.5
air.velocity = -1.5, -6.5
envshake.time = 15
envshake.ampl = 5
ProjID = 3201
getpower = 0,0
givepower = 0, 0
p1stateno = 3203
forcestand = 1






[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;Power Geyser Rock attack---------------------------------------------------------------------------
[Statedef 3203]
type    = S
movetype = A
physics = S
ctrl = 0
velset=0,0
anim = 32011



[State 8005, hyperBG2]
type = Explod
trigger1 = AnimElem = 1
anim = 10010
ID = 10010
supermovetime = 999999
pausemovetime = 999999
removetime = 120
removeongethit = 0
vel = 0, 0
postype = back
pos = 0, 0
sprpriority = -999995
bindtime = -1
ownpal = 1


[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3001, Width]
type = Width
trigger1 = 1
edge = 20,0
player = 20,15




[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
value = 72,1



[State 903, EnvShake]
type = EnvShake
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
time = 15
ampl = 8



[State 1000, Spark]
type = Explod
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
Anim = 60
pos = 0,0
postype = p1
ownpal = 1
bindtime = 1
pausemovetime = -1
supermove = 1
ignorehitpause = 1
sprpriority = -2

[State 1000, Spark]
type = Explod
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
Anim = 61
pos = 0,5
postype = p1
ownpal = 1
bindtime = 1
pausemovetime = -1
supermove = 1
ignorehitpause = 1
sprpriority = -2





[State 820, Spark]
type = Explod
trigger1 = AnimElem = 4
anim = 7400
pos = 100,0
postype = p1
ownpal = 1
bindtime = -1
removeongethit = 1
pausemovetime = -1
supermove = 1
ID = 7400
sprpriority = 2


[State 820, Spark]
type = Explod
trigger1 = AnimElem = 8
anim = 7400
pos = 130,0
postype = p1
ownpal = 1
bindtime = -1
removeongethit = 1
pausemovetime = -1
supermove = 1
ID = 7400
sprpriority = 2



[State 1000, Proj]
type = Projectile
trigger1 = AnimElem = 4
projanim = 7453
Projhitanim = -1
projremanim = -1
projcancelanim = -1
projremovetime = 7
offset = 70, 0
projpriority = 7
projsprpriority = 4
velocity = 0
attr = S, HP
damage= 60
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = -1
sparkxy = 0,-40
animtype = Heavy
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
air.hittime = 18
guard.ctrltime = 18
ground.velocity = -2.5, -7.5
guard.velocity = -10.5
air.velocity = -.9, -6.5
envshake.time = 15
envshake.ampl = 5
air.fall = 1
fall.recover =0
ProjID = 3203
getpower = 0,0
givepower = 0, 0
forcestand = 1

[State 1000, Proj]
type = Projectile
trigger1 = AnimElem = 8
projanim = 7453
Projhitanim = -1
projremanim = -1
projcancelanim = -1
projremovetime = 7
offset = 100, 0
projpriority = 7
projsprpriority = 4
velocity = 0
attr = S, HP
damage= 60
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = -1
sparkxy = 0,-40
animtype = Heavy
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
air.hittime = 18
guard.ctrltime = 18
ground.velocity = -2.5, -7.5
guard.velocity = -10.5
air.velocity = -2.5, -6.5
envshake.time = 15
envshake.ampl = 5
ProjID = 3203
air.fall = 1
fall.recover =0
getpower = 0,0
givepower = 0, 0
forcestand = 1




[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1






;-------------------------------------------------------------------------------
;-------------- Generated by Fighter Factory -------------

;--------------------- Variable List ----------------------

; Var(1) - StateDef 190
; Var(2) - StateDef 820, -3
; Var(7) - StateDef 811
; Var(9) - StateDef 3320
; Var(10) - StateDef 1200, 1210, 1220, 900
; Var(11) - StateDef 900
; Var(21) - StateDef 3320
; Var(29) - StateDef 3320
; Var(33) - StateDef 1200
; Var(34) - StateDef 1200
; Var(35) - StateDef 1200, 1210, 1220, 1206
; Var(50) - StateDef -3

;--------------------- Float Variable List ----------------------

