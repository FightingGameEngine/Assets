


;---------------------------------------------------------------------------
; Lose (on timeover)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 189,((Random * 3) / 1000)

[State 170,1]
type = AssertSpecial     
trigger1 = Time = [0,200]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Draw game (on timeover)
[Statedef 175]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 189,((Random * 3) / 1000)

[State 175,1]
type = AssertSpecial     
trigger1 = Time = [0,200]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Winposes
[Statedef 180]  ; winpose selector
type = S
ctrl = 0
velset = 0,0

[State 0, VarRandom]
type = VarRandom
triggerall = random < 400
trigger1 = p2name = "Robin"
v = 38
range = 1,2

[State 0, VarRandom]
type = VarRandom
triggerall = random < 500
trigger1 = p2name = "Joker"||p2name = "The Joker"
v = 38
range = 3,4

[State 0, VarRandom]
type = VarRandom
triggerall = random < 500
trigger1 = p2name = "Harley Quinn"||p2name = "HarleyQuinn"
v = 38
range = 5,8

[State 0, ChangeState]
type = ChangeState
trigger1 = p2name = "Catwoman"
value = 189

[State 180,Winpose decider]
type = ChangeState
trigger1 = time = 0
value = 181 + ((Random * 5) / 1000)     ; change the 1 to however many winposes you have

;-----------------------
; Winpose #1 - do better
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
triggerall = Var(38) != 0
trigger1 = time = 0
value = 199, Var(38)

[State 0, PlaySnd]
type = PlaySnd
triggerall = Var(38) = 0
trigger1 = time = 0
value = 190,((Random * 6) / 1000)

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,360]
flag = RoundNotOver

[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
triggerall = Var(38) != 0
trigger1 = time = 0
value = 199,var(38)

[State 0, PlaySnd]
type = PlaySnd
triggerall = Var(38) = 0
trigger1 = time = 0
value = 191,((Random * 6) / 1000)

[State 0, Explod]
type = Explod
triggerall = numexplod(31)<15
triggerall = time > 48
trigger1 =  timemod = 2,1
;trigger4 =  animelem = 8
;trigger5 =  animelem = 9
;trigger6 =  animelem = 3
;trigger7 =  animelem = 5
;trigger8 =  animelem = 7
anim = 30 + ((Random * 6) / 1000)
ID = 31
pos = 25-(Random/25),4-(Random/500)
postype = p1;
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 15
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 181,1]
type = AssertSpecial
trigger1 = Time = [0,160]
flag = RoundNotOver

[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
triggerall = Var(38) != 0
trigger1 = time = 0
value = 199,var(38)

[State 0, PlaySnd]
type = PlaySnd
triggerall = Var(38) = 0
trigger1 = time = 0
value = 192,((Random * 5) / 1000)

[State 0, Explod]
type = Explod
triggerall = time > 18
trigger1 =  timemod = 4,1
anim = 36 + ((Random * 4) / 1000)
ID = 39
pos = 53 ,-72
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 1, -1 -(random/100)*0.1
accel = 0,0.05
random = 0,0
removetime = 88
scale = .25,.25
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Explod]
type = Explod
triggerall = time > 18
trigger1 =  timemod = 4,1
anim = 36 + ((Random * 4) / 1000)
ID = 39
pos = 53 ,-72
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -1, -1 -(random/100)*0.1
accel = 0,0.05
random = 0,0
removetime = 88
scale = .25,.25
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Explod]
type = Explod
triggerall = time > 18
trigger1 =  timemod = 4,1
anim = 36 + ((Random * 4) / 1000)
ID = 39
pos = 53 ,-72
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -1 + (random/500), -2 -(random/100)*0.1
accel = 0,0.05
random = 0,0
removetime = 99
scale = .25,.25
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 181,1]
type = AssertSpecial
trigger1 = Time = [0,160]
flag = RoundNotOver

[Statedef 184]
type = S
ctrl = 0
anim = 184
velset = 0,0
sprpriority = -5

[State 0, PlaySnd]
type = PlaySnd
triggerall = Var(38) != 0
trigger1 = time = 0
value = 199,var(38)

[State 0, PlaySnd]
type = PlaySnd
triggerall = Var(38) = 0
trigger1 = time = 0
value = 193,((Random * 7) / 1000)

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 185
ID = 185
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -7
ontop = 0
shadow = 111,111,111
ownpal = 0
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = animelem= 6
anim = 186
ID = 186
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -3
ontop = 0
shadow = 111,111,111
ownpal = 0
removeongethit = 1


[State 181,1]
type = AssertSpecial
trigger1 = Time = [0,160]
flag = RoundNotOver


[Statedef 185]
type = S
ctrl = 0
anim = 187
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 194,1

[State 181,1]
type = AssertSpecial
trigger1 = Time = [0,140]
flag = RoundNotOver

[Statedef 189]
type = S
ctrl = 0
anim = 189
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 199, 9 + ((random*2) / 1000)

[State 181,1]
type = AssertSpecial
trigger1 = Time = [0,140]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[State 0, Varset]
type = varset
triggerall = random < 400
trigger1 = p2name = "Superman"
v = 38
value = 28

[State 0, Varset]
type = varset
triggerall = random < 400
trigger1 = p2name = "Scarecrow"
v = 38
value = 1

[State 0, VarRandom]
type = VarRandom
triggerall = random < 400
trigger1 = p2name = "Robin"
v = 38
range = 2,3

[State 0, Varset]
type = varset
triggerall = random < 400
trigger1 = p2name = "Nightwing"
v = 38
value = 4

[State 0, VarRandom]
type = VarRandom
triggerall = random < 500
trigger1 = p2name = "Joker"||p2name = "The Joker"
v = 38
range = 5,7

[State 0, VarRandom]
type = VarRandom
triggerall = random < 500
trigger1 = p2name = "Jason Todd"||p2name = "Red Hood"
v = 38
range = 8,9

[State 0, VarRandom]
type = VarRandom
triggerall = random < 250
trigger1 = p2name = "Poison Ivy"||p2name = "PoisonIvy"
v = 38
range = 10,11

[State 0, VarRandom]
type = VarRandom
triggerall = random < 500
trigger1 = p2name = "Harley Quinn"||p2name = "HarleyQuinn"
v = 38
range = 12,15

[State 0, Varset]
type = varset
triggerall = random < 400
trigger1 = p2name = "Damian Wayne"||p2name = "DamianWayne"
v = 38
value = 16

[State 0, Varset]
type = varset
triggerall = random < 400
trigger1 = p2name = "Cyborg"
v = 38
value = 17

[State 0, VarRandom]
type = VarRandom
triggerall = random < 500
trigger1 = p2name = "Batman"||p2name = "The Batman"
v = 38
range = 24,25

[State 0, VarRandom]
type = VarRandom
triggerall = random < 500
trigger1 = p2name = "Batgirl"
v = 38
range = 26,27

[State 0, ChangeState]
type = ChangeState
triggerall =  random < 500
trigger1 = p2name = "Catwoman"
value = 199

[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
value = 191 + ((Random * 5) / 1000)     ; change the 1 to however many intros you have

;---------------------------
; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0
sprpriority = 8

[State 0, PlaySnd]
type = PlaySnd
triggerall = Var(38) != 0
trigger1 = time = 0
value = 185,var(38)

[State 0, PlaySnd]
type = PlaySnd
triggerall = Var(38) = 0
trigger1 = time = 0
value = 180,((Random * 8) / 1000)

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 191
ID = 191
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 117
scale = 1,1
sprpriority = 7
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 90
value = 111,33

;----------------------

[State 192, 2]             
type = AssertSpecial
trigger1 = time < 222
flag = Intro

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 0
trigger1 = animtime = 0
value = 0

[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0
sprpriority = 4

[State 0, PlaySnd]
type = PlaySnd
triggerall = Var(38) != 0
trigger1 = time = 0
value = 185,var(38)

[State 0, PlaySnd]
type = PlaySnd
triggerall = Var(38) = 0
trigger1 = time = 0
value = 181,((Random * 6) / 1000)

[State 0, Explod]
type = Explod
triggerall = anim != 0
trigger1 = animelem = 8
anim = 193
ID = 193
pos = 0,0
postype = p1  ;p2,front,back,left,right
vel = 2,-5
accel = 0,0.15
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 7
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 89
value = 196,0

[State 192, 2]
type = AssertSpecial
trigger1 = time < 222
flag = Intro

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 0
trigger1 = animtime = 0
value = 0

[Statedef 193]
type = S
ctrl = 0
anim = 194
velset = 0,0
sprpriority = -3

[State 0, PlaySnd]
type = PlaySnd
triggerall = Var(38) != 0
trigger1 = time = 75
value = 185,var(38)

[State 0, PlaySnd]
type = PlaySnd
triggerall = Var(38) = 0
trigger1 = time = 75
value = 183,((Random * 7) / 1000)

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 196
ID = 196
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 111,111,111
ownpal = 0
removeongethit = 1


[State 0, Explod]
type = Explod
trigger1 = time = 61
anim = 1113
ID =1113
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = .5,.5
sprpriority = 99
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 20
value = 111,64

[State 0, SprPriority]
type = SprPriority
trigger1 = animelem = 3
value = 3

[State 192, 2]
type = AssertSpecial
trigger1 = time < 222
flag = Intro

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 0
trigger1 = animtime = 0
value = 0

[Statedef 194]
type = S
ctrl = 0
anim = 197
velset = 0,0
sprpriority = -3

[State 0, PlaySnd]
type = PlaySnd
triggerall = Var(38) != 0
trigger1 = time = 0
value = 185,var(38)

[State 0, PlaySnd]
type = PlaySnd
triggerall = Var(38) = 0
trigger1 = time = 0
value = 184,((Random * 6) / 1000)

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1971
ID = 1971
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 111,111,111
ownpal = 0
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 100
value = 111,6

[State 192, 2]
type = AssertSpecial
trigger1 = time < 222
flag = Intro

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 0
trigger1 = animtime = 0
value = 0

[Statedef 195]
type = S
ctrl = 0
anim = 199
velset = 0,0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
triggerall = Var(38) != 0
trigger1 = time = 77
value = 185,var(38)

[State 0, PlaySnd]
type = PlaySnd
triggerall = Var(38) = 0
trigger1 = time = 77
value = 182,0 + ((Random * 6) / 1000)

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1900 + ((Random * 14)/1000)
ID = 1900
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 77
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = time = 57
anim = 198
ID = 198
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,.65
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 57
value = 111,11

[State 192, 2]
type = AssertSpecial
trigger1 = time < 222
flag = Intro

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 0
trigger1 = animtime = 0
value = 0

; Stand Light Punch
[StateDef 199]
type = S
ctrl = 0
anim = 1887
velset = 0,0
sprpriority = 8

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 41
range = 0,5

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(41) = 0
trigger1 = time = 0
value = 185,23

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(41) = 1
trigger1 = time = 0
value = 185,22

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(41) = 2
trigger1 = time = 0
value = 185,21

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(41) = 3
trigger1 = time = 0
value = 185,20

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(41) = 4
trigger1 = time = 0
value = 185,19

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(41) = 5
trigger1 = time = 0
value = 185,18

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 187
value = 111,54

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 187
value = 199,0

[State 0, Explod]
type = Explod
trigger1 =  time = 190
anim = 1889
ID = 1889
pos = 80,0
postype = p1;
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 88
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "gato"
ID = 1998
stateno = 1998
pos = 460,0
postype = p1    ;p2,front,back,left,right
bindtime = 1
size.shadowoffset =0
supermovetime = 999999999999
pausemovetime = 999999999999

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "plantaC"
ID = 1999
stateno = 1999
pos = 25,0
postype = p1    ;p2,front,back,left,right
bindtime = 1
size.shadowoffset =0
supermovetime = 999999999999
pausemovetime = 999999999999

[State 192, 2]
type = AssertSpecial
trigger1 = time < 222
flag = Intro

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 0
trigger1 = animtime = 0
value = 0

[Statedef 1998]
type = A
movetype = A
physics = N
anim = 1888
velset = -2,0
sprpriority = 55

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  time = 193

[Statedef 1999]
type = A
movetype = A
physics = N
anim = 188
velset = 0,0
sprpriority = -20


[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0

[Statedef 196]
type = S
ctrl = 0
anim = 195
velset = 0,0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 195,((Random * 6) / 1000)

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Punch
[StateDef 200]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 200
poweradd = 15
sprpriority = 2

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 42
range = 0,1

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = time = 0
value = 200,0

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 1
trigger1 = time = 0
value = 200,1

[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,NA
damage = 30
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -15, -75
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 11
ground.velocity = -8
air.type = Low
air.hittime = 20
air.velocity = -3,-2
kill = !var(58) || 1*p2stateno = 003

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Medium Punch
[StateDef 210]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 210
poweradd = 35
sprpriority = 2

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 42
range = 0,1

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = time = 0
value = 200,2

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 1
trigger1 = time = 0
value = 200,3


[State 210, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 50
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10,-75
;guard.sparkno = 8430
hitsound = s2,1
guardsound = s3,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.type = Low
air.hittime = 15
air.velocity = -3,-2
kill = !var(58) || 1*p2stateno = 003


[State 210, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Punch
[StateDef 220]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 220
poweradd = 55
sprpriority = 2

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 42
range = 0,1

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = time = 0
value = 200,4

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 1
trigger1 = time = 0
value = 200,5

[State 0, Explod]
type = Explod
trigger1 =  animelem = 4
anim = 221
ID = 221
pos = 22,-22
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
scale = .5,.5
vel = 0,0
removetime = -2
scale = 1,1
sprpriority = 99
removeongethit = 0

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
sparkxy = -10, -75
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -2,-8
air.type = Low
air.hittime = 5
air.velocity = -3,-8
envshake.time = 7
envshake.ampl = 4
palfx.time = 10
palfx.add = 100,-1,100
palfx.sinadd = 111,10,115,30
Palfx.color = 0
fall= 1
air.fall = 1
kill = !var(58) || 1*p2stateno = 003

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 111,53

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = movehit
value = 220, 0 + ((Random * 6) / 1000)

[State 0, VarSet]
type = VarSet
triggerall = var(42) = 0
trigger1 = movehit
v = 42
value = 1

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Stand Hard Punch
[StateDef 225]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 222
poweradd = 55
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 111,52

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
sparkxy = -10, -75
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -2,-8
air.type = Low
air.hittime = 5
air.velocity = -3,-8
envshake.time = 7
envshake.ampl = 4
fall= 1
air.fall = 1
kill = !var(58) || 1*p2stateno = 003

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1




;---------------------------------------------------------------------------
; Stand Light Kick
[StateDef 230]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 230
poweradd = 15
sprpriority = 2

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 42
range = 0,1

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = time = 0
value = 200,6

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 1
trigger1 = time = 0
value = 200,7

[State 230, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 25
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
sparkno = 0
sparkxy = -15, -55
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -2,0
air.type = Low
air.hittime = 3
air.velocity = -2,-2
kill = !var(58) || 1*p2stateno = 003

[State 230, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Kick
[StateDef 240]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 240
poweradd = 40
sprpriority = -10

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 42
range = 0,1

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = time = 0
value = 200,8

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 1
trigger1 = time = 0
value = 200,9

[State 240, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 50
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10,-55
hitsound = s2,1
guardsound = s3,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4,0
air.type = Low
air.hittime = 5
air.velocity = -2,-2
kill = !var(58) || 1*p2stateno = 003


[State 240, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Kick
[StateDef 250]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 250
poweradd = 55
sprpriority = -10
velset = 0,0

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 42
range = 0,1

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = time = 0
value = 200,10

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 1
trigger1 = time = 0
value = 200,11


[State 250, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 70
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10, -67
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -2,-8
air.type = Low
air.hittime = 5
air.velocity = -3,-8
envshake.time = 7
envshake.ampl = 4
fall= 1
air.fall = 1
kill = !var(58) || 1*p2stateno = 003

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Crouch Hard Punch
[StateDef 255]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 255
poweradd = 55
sprpriority = 6

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = random < 500
trigger1 = time = 0
value = 255, 0 + ((Random * 2) / 1000)

[State 0, VarSet]
type = VarSet
triggerall = var(42) = 0
trigger1 = time = 0
v = 42
value = 1

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 42
range = 0,1

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = time = 0
value = 200,11

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 1
trigger1 = time = 0
value = 200,12

[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "plant4"
ID = 256
stateno = 256
pos = 80,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermove
pausemove


[State 400, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 256]
type    = C                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 256                     ;Change animation (Def: no change)
poweradd = 0
velset = 0,0                   ;Power to add (Def: 0)
sprpriority = 30

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 111,18

[State 400, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 85
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10, -50
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -2,-6
air.type = Low
air.hittime = 5
air.velocity = -3,-6
envshake.time = 7
envshake.ampl = 4
fall= 1
air.fall = 1
kill = !var(58) || 1*p2stateno = 003

[State 0, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0



;---------------------------------------------------------------------------
; Crouch Light Punch
[StateDef 400]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 400
poweradd = 15
sprpriority = 2

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 42
range = 0,1

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = time = 0
value = 200,0

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 1
trigger1 = time = 0
value = 200,1


[State 0, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal ;player
name = "plant1"
ID = 401
stateno = 401
pos = 40,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermove
pausemove


[State 400, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[Statedef 401]
type    = C                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 401                     ;Change animation (Def: no change)
poweradd = 0
velset = 0,0                   ;Power to add (Def: 0)
sprpriority = 30

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 111,19

           ;Animation type: Light, Medium, Heavy, Back (def: Light)                  ;Flags on how move is to be guarded against
[State 400, HitDef]
type = HitDef
trigger1 = time =0
attr = C,NA
damage = 25
animtype = Light
hitflag = MAFD                  ;Flags of conditions that move can hit
guardflag = MA
priority = 3, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -10, -30
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -2,0
air.type = Low
air.hittime = 3
air.velocity = -5,0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; Crouch Medium Punch
[StateDef 410]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 410
poweradd = 35
sprpriority = 2

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 42
range = 0,1

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = time = 0
value = 200,2

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 1
trigger1 = time = 0
value = 200,3

[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "plant2"
ID = 411
stateno = 411
pos = 48,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermove
pausemove


[State 400, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[Statedef 411]
type    = C                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 411                     ;Change animation (Def: no change)
poweradd = 0
velset = 0,0                   ;Power to add (Def: 0)
sprpriority = 30

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 111,37

           ;Animation type: Light, Medium, Heavy, Back (def: Light)                  ;Flags on how move is to be guarded against
[State 400, HitDef]
type = HitDef
trigger1 = time =0
attr = C,NA
damage = 35
animtype = Light
hitflag = MAFD                  ;Flags of conditions that move can hit
guardflag = MA
priority = 3, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -10, -50
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -2,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
kill = !var(58) || 1*p2stateno = 003

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 410,0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0


;---------------------------------------------------------------------------
; Crouch Hard Punch
[StateDef 420]
type    = C
movetype= A
physics = C
juggle  = 2
ctrl = 0
anim = 420
poweradd = 55
sprpriority = 6

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 42
range = 0,1

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = time = 0
value = 200,4

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 1
trigger1 = time = 0
value = 200,5

[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "plant3"
ID = 421
stateno = 421
pos = 50,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermove
pausemove

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = movehit
value = 400, 0 + ((Random * 6) / 1000)

[State 0, VarSet]
type = VarSet
triggerall = var(42) = 0
trigger1 = movehit
v = 42
value = 1

[State 400, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[Statedef 421]
type    = C                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 421                     ;Change animation (Def: no change)
poweradd = 0
velset = 0,0                   ;Power to add (Def: 0)
sprpriority = 30

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 111,11

[State 400, HitDef]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage = 65
priority = 3, hit
guardflag = L
pausetime = 9,9
sparkno = 2
sparkxy = -5, -90
hitsound = 5,2
guardsound = 6,0
animtype = Up
ground.type = Hard
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = -2,-12
fall = 1
kill = !var(58) || 1*p2stateno = 003

[State 0, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0


;---------------------------------------------------------------------------
; Crouch Light Kick
[StateDef 430]
type    = C
movetype= A
physics = C
juggle  = 2
ctrl = 0
anim = 430
poweradd = 15
sprpriority = 2

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 42
range = 0,1

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = time = 0
value = 200,6

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 1
trigger1 = time = 0
value = 200,7

[State 430, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 20
animtype = Light
hitflag = MAFD
guardflag = L
priority = 3, Hit
pausetime = 9,9
sparkno = 0
sparkxy = -10, -5
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -1
air.type = Low
air.hittime = 3
air.velocity = -1,1
kill = !var(58) || 1*p2stateno = 003


[State 430, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[StateDef 440]
type    = C
movetype= A
physics = C
juggle  = 2
ctrl = 0
anim = 440
poweradd = 35
sprpriority = 2

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 42
range = 0,1

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = time = 0
value = 200,8

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 1
trigger1 = time = 0
value = 200,9


[State 440, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 35
animtype = Medium
hitflag = MAFD
guardflag = L
priority = 3, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10,-20
;guard.sparkno = 8430
hitsound = s2,1
guardsound = s3,0
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -2,-2
air.type = Low
air.hittime = 15
air.velocity = -1,-2.5
kill = !var(58) || 1*p2stateno = 003

[State 440, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Kick
[StateDef 450]
type    = C
movetype= A
physics = N
juggle  = 2
ctrl = 0
anim = 450
poweradd = 55
sprpriority = 0

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 42
range = 0,1

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = time = 0
value = 200,10

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 1
trigger1 = time = 0
value = 200,11

[State 0, Explod]
type = null;Explod
triggerall = vel x != 0
trigger1 = timemod = 4,1
anim = 62
ID = 62
pos = -5,-4
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0


[State 450, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
hitflag = M
damage = 70
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = 2
sparkxy = 0,-5
animtype = Back
ground.type = Trip
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6,-2
guard.velocity = -3
air.velocity = -6,-6
fall= 1
kill = !var(58) || 1*p2stateno = 003

[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Punch
[StateDef 600]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 600
poweradd = 15
sprpriority = 2

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 42
range = 0,1

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = time = 0
value = 200,0

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 1
trigger1 = time = 0
value = 200,1


[State 600, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 10
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 0
sparkxy = -10, -55
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 25
ground.velocity = -6
air.fall = 0
air.velocity = 0, -6.5
kill = !var(58) || 1*p2stateno = 003

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Punch
[StateDef 610]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 610
poweradd = 35
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 610,0

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1001
ID =1001
pos = 25,-75
postype = p1  ;p2,front,back,left,right
removetime = -2
bindtime = 10
scale = 1,1
sprpriority = 10
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 610, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 35
animtype = medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12,12
sparkno = -1
sparkxy = -10,-80
;guard.sparkno = 8430
hitsound = -1;s2,1
guardsound = s3,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 20
ground.velocity = -8
air.fall = 0
air.velocity = 0, -4.5
air.hittime = 25
palfx.time = 10
palfx.add = 100,-1,100
palfx.sinadd = 111,10,115,30
Palfx.color = 0
kill = !var(58) || 1*p2stateno = 003

[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Punch
[StateDef 620]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 620
poweradd = 55
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 111,37

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 42
range = 0,1

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = time = 0
value = 200,4

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 1
trigger1 = time = 0
value = 200,5


[State 630, 4]
type = HitDef
trigger1 = time = 0
attr = A, NA
hitflag = MAF
guardflag = HA
pausetime = 10,10
damage = 85
animtype = hard
sparkno = 2
priority= 4,hit
sparkxy = -10, -34
hitsound = s2,2
guardsound = s3,0
ground.type = high
ground.slidetime = 13
ground.hittime = 15
ground.velocity = -8.5
air.velocity = -9, 2
guard.slidetime = 6
guard.hittime = 6
guard.velocity = -5.4
air.fall = 1
fall = 1
fall.recover = 0
kill = !var(58) || 1*p2stateno = 003

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


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

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 42
range = 0,1

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = time = 0
value = 200,6

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 1
trigger1 = time = 0
value = 200,7


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
sparkxy = -10, -23
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
kill = !var(58) || 1*p2stateno = 003

[State 630, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Kick
[StateDef 640]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 640
poweradd = 35
sprpriority = 2

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 42
range = 0,1

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = time = 0
value = 200,8

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 1
trigger1 = time = 0
value = 200,9

[State 640, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 45
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12,12;8,8
sparkno = 1
sparkxy = -10,-63
;guard.sparkno = 8430
hitsound = s2,1
guardsound = s3,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
air.fall = 0
air.velocity = 0, -4.5
air.hittime = 25
kill = !var(58) || 1*p2stateno = 003

[State 640, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Kick
[StateDef 650]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 650
poweradd = 55
sprpriority = 2

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 42
range = 0,1

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 0
trigger1 = time = 0
value = 200,10

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(42) = 1
trigger1 = time = 0
value = 200,11


[State 650, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A,NA
damage = 85
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10, -35
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 25
ground.velocity = -10
air.velocity = -12,4
air.fall = 1
air.hittime = 25
fall = 1
kill = !var(58) || 1*p2stateno = 003


[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

 ;Throw 1
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
trigger1 =  AnimElem = 2
value = 0,1

[State 800, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 2
p1facing = 1
p2facing = 1
p1stateno = 810
p2stateno = 820
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

[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
trigger1 = random < 666
value = 800,1 + random%4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 800,0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 50,-80

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 48,-80

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 40,-78

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 3
value = -30

[State 810, TargetState]
type = TargetState
trigger1 = AnimElem = 7
value = 830

[State 801, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0

[State 7697, Green_FX]
type = PalFX
trigger1 = Time = 23
time = 11
add = 100,-1,100
sinadd = 111,10,115,30
color = 0
invertall = 0

[State 815, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 820

[Statedef 830]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5300

[State 7697, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 7697, 1]
type = posSet
trigger1 = Time = 0
y = 0

[State 7697, Green_FX]
type = PalFX
trigger1 = Time = 1
time = 35
add = 100,-1,100
sinadd = 111,10,115,30
color = 0
invertall = 0

[State 7696, 6]
type = SelfState
trigger1 = time = 70
value = 0
ctrl = 1



;---------------------------------------------------------------------------
;Super Jump opponent locator
[Statedef 910]
type    = A
physics = N
ctrl = 0
sprpriority = 2

[State 910, arrow]
type = ChangeAnim
trigger1 = IsHelper(0)
;trigger1 = TeamSide = 2
value = 910

[State 910, destroyself]
type = DestroySelf
triggerall = IsHelper(0)
trigger1 = RootDist Y > 0


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

[StateDef 949]
type = A
movetype = I
physics = A
ctrl = 1
sprpriority = 0


[State 0, VelAdd]
type = VelAdd
triggerall = pos y > -200
trigger1 = vel y > 0
y = -0.6

; neutral
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0)
value = 660

[State 0, VelSet]
type = VelSet
trigger1 = command != "holdfwd" && command != "holdback"
x = 0

[State 0, VelSet]
type = VelSet
trigger1 = command = "holdback"
x = -3

[State 0, VelSet]
type = VelSet
trigger1 = command = "holdfwd"
x = 3

[State 0, PosSet]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y = 0
value = 11
ctrl = 1


[State 0, ChangeState]
type = ChangeState
trigger1 =command != "holdup"
value = 948


;hyper coisas
;----- begin of Hyper Effects Helpers-----
;;;;;###################################################################################

;----------------------------[2002 UM MAX2 BG]----------------------------------
[Statedef 40001]
anim = 9999

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noFG

[State 40001, Tile #1-7]
type = Explod
trigger1 = time = 0
trigger1 = numexplod(15601) = 0
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

[State 3000, BGPalfx]
Type = BGPalfx
Trigger1 = 1 ;time = [0, 170]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1


[State 40001, Glass Break]
type = ChangeState
;trigger1 = root, stateno != 3300 && root, stateno != 3350
;trigger2 = root, stateno = 3300 && root,animelemtime(61) = 1  || root, stateno = 3350 && root,animelemtime(50) = 1
trigger1 = root,movetype!=A;root, stateno !=[3000,4999]
;trigger2 = root, NumHelper(8400) !=0|| root, NumHelper(8420) !=0
value = stateno+1


[Statedef 40002]
anim = 9999

;[State 40002, RemoveExplod]
;type = RemoveExplod
;trigger1 = !time
;id = 15600

[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15601



[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;--------------------------[2002 UM MAX2 PORTRAIT]------------------------------
[Statedef 40003]
anim = 9999

[State 40001, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,abs((240*var(0))-61)
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,abs((240*var(0))-61)
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607
ID = 15660
pos = 0,abs((240*var(0))-61)
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40001, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607
ID = 15661
pos = 0,abs((240*var(0))-61)
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

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
type = null;ModifyExplod
trigger1 = time = 56
ID = 15661
scale = 1,0.77
[State 40003, ModifyExplod]
type = null;ModifyExplod
trigger1 = time = 57
ID = 15661
scale = 1,0.54
[State 40003, ModifyExplod]
type = null;ModifyExplod
trigger1 = time = 58
ID = 15661
scale = 1,0.3
[State 40003, ModifyExplod]
type = null;ModifyExplod
trigger1 = time = 59
ID = 15661
scale = 1,1

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 60

[Statedef 40004]
anim = 9999

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
; Medium Foward Recovery Roll

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


[Statedef 126]
type    = A
movetype= I
physics = N
ctrl = 0
anim = 126
velset = 0,0
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 111,6


[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 10;5;arent,sprpriority + 1


[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent,pos x + 40*(parent,facing)
y = 0



[State 0, ChangeState]
type = ChangeState
trigger1 =  parent,anim != 120 && parent,anim != 130 && parent,anim != 140 && parent,anim != 150
value = 127
ctrl = 0

[Statedef 127]
type    = A
movetype= I
physics = N
ctrl = 0
anim = 127
velset = 0,0
facep2 = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  anim = 150
value = 120,0

[State 0, DestroySelf]
type = DestroySelf
trigger1 =animtime = 0



