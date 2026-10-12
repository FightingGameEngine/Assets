; States file for {character} -- Specials
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
; Special Attacks Ahead
;---------------------------------------------------------------------------

;------------------------------
; Special 1 - Dazzled - Weak
[StateDef 1000]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0

[State 200, âπÇñ¬ÇÁÇ∑]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random<=500
value = 21, 0
channel = 2

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S9,1

;Body Effect
[State 0, Explod]
type = Explod
trigger1 = time = 5
anim = 1020
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 10
supermove
pausemove
scale = 1,1
sprpriority = 1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

;flash
[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 7
time = 1
add = 255,255,255

[State 1080,Slowray]
type = helper
trigger1 = time = 11
helpertype = normal
name = "Bedazzled"
id = 1000
pos = -10,-72
postype = p1
stateno = 1025
ownpal = 1
size.xscale = .4
size.yscale =.4



[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;------------------------------
; Special 1 - Dazzled - Medium
[StateDef 1010]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0

[State 200, âπÇñ¬ÇÁÇ∑]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random<=500
value = 21, 0
channel = 2

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S9,1

;Body Effect
[State 0, Explod]
type = Explod
trigger1 = time = 5
anim = 1020
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 10
supermove
pausemove
scale = 1,1
sprpriority = 1
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

;flash
[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 7
time = 1
add = 255,255,255

[State 1080,Slowray]
type = helper
trigger1 = time = 11
helpertype = normal
name = "Bedazzled"
id = 1000
pos = -10,-72
postype = p1
stateno = 1026
ownpal = 1
size.xscale = .4
size.yscale =.4




[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;------------------------------
; Special 1 - Dazzled - Strong
[StateDef 1020]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0

[State 200, âπÇñ¬ÇÁÇ∑]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random<=500
value = 21, 0
channel = 2

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S9,1

;Body Effect
[State 0, Explod]
type = Explod
trigger1 = time = 5
anim = 1020
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 10
supermove
pausemove
scale = 1,1
sprpriority = 1
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 1080,Slowray]
type = helper
trigger1 = time = 11
helpertype = normal
name = "Bedazzled"
id = 1000
pos = -10,-72
postype = p1
stateno = 1027
ownpal = 1
size.xscale = .4
size.yscale =.4


;flash
[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 7
time = 1
add = 255,255,255


[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;bedazzled helper
[StateDef 1025]
type = S
movetype = A
physics = S
anim = 1014
ctrl = 0
velset = 5,0 ; 8,0 - 11,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1028
ignorehitpause = 1

[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1



[State 0, VelAdd]
type = Velset
trigger1 =1
x = 5
y = 0
;ignorehitpause = 
;persistent = 

;projectile
[State 0, Projectile]
type = Hitdef
trigger1 = time = 0
attr = S, SP
damage = 50,2
hitsound = S13,0
guardsound = S3,0
sparkno = -1
sparkxy = 0,0
animtype = Medium
guardflag = MA
pausetime = 0,9
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -8,5
;offset = -10,-72
;postype = p1         ;p2,front,back,left,right
palfx.time = 20
palfx.add = 100,100,100
palfx.mul = 256,256,256
palfx.sinadd =  -80,-80,-80,10


[State 1005, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 1017
ID = 1017
sprpriority = 5
postype = p2
pos = 20,-72
removetime = -2
ownpal = 1
facing = -1
ignorehitpause = 1
persistent = 0
pausemovetime = 100
supermovetime = 100
scale = .5,.5

[State 1001, EnvColor]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
ignorehitpause = 1


[State 1000, changestate]
type = Destroyself
trigger1 = movecontact
trigger2 = time = 70

[StateDef 1026]
type = S
movetype = A
physics = S
anim = 1014
ctrl = 0
velset = 8,0 ; 8,0 - 11,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 0, VelAdd]
type = Velset
trigger1 =1
x = 8
y = 0
;ignorehitpause = 
;persistent = 

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1028
ignorehitpause = 1

[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

;projectile
[State 0, Projectile]
type = Hitdef
trigger1 = time = 0
attr = S, SP
damage = 50,2
hitsound = S13,0
guardsound = S3,0
sparkno = -1
sparkxy = 0,0
animtype = Medium
guardflag = MA
pausetime = 0,9
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -8,5
;offset = -10,-72
;postype = p1         ;p2,front,back,left,right
palfx.time = 20
palfx.add = 100,100,100
palfx.mul = 256,256,256
palfx.sinadd =  -80,-80,-80,10

[State 1005, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 1017
ID = 1017
sprpriority = 5
postype = p2
pos = 10,-72
removetime = -2
ownpal = 1
facing = -1
ignorehitpause = 1
persistent = 0
pausemovetime = 100
supermovetime = 100
scale = .5,.5

[State 1001, EnvColor]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
ignorehitpause = 1

[State 1000, changestate]
type = Destroyself
trigger1 = movecontact
trigger2 = time = 70
;-------------


[StateDef 1027]
type = S
movetype = A
physics = S
anim = 1014
ctrl = 0
velset = 11,0 ; 8,0 - 11,0

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1028
ignorehitpause = 1

[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, VelAdd]
type = Velset
trigger1 =1
x = 11
y = 0
;ignorehitpause = 
;persistent = 



;projectile
[State 0, Projectile]
type = Hitdef
trigger1 = time = 0
attr = S, SP
damage = 50,2
hitsound = S13,0
guardsound = S3,0
sparkno = -1
sparkxy = 0,0
animtype = Medium
guardflag = MA
pausetime = 0,9
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -8,5
;offset = -10,-72
;postype = p1         ;p2,front,back,left,right
palfx.time = 20
palfx.add = 100,100,100
palfx.mul = 256,256,256
palfx.sinadd =  -80,-80,-80,10
fall = 1

[State 1001, EnvColor]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
ignorehitpause = 1

[State 1005, Sparks]
type = explod
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 1017
ID = 1017
sprpriority = 5
postype = p2
pos = 10,-72
removetime = -2
ownpal = 1
facing = -1
ignorehitpause = 1
persistent = 0
pausemovetime = 100
supermovetime = 100
scale = .5,.5

[State 1000, changestate]
type = Destroyself
trigger1 = movecontact
trigger2 = time = 70

;hitpsark
[Statedef 1028]
type = A
physics = N
movetype = I
anim = 1013
velset = 0, 0
ctrl = 0
sprpriority = 4

[State 1006, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 1
time = 5
add = 255,255,255

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = noshadow
ignorehitpause =1

[State 1006, End]
type = destroyself
trigger1 = !animtime

;aerial dazzled
[Statedef 1100]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 1100
velset = 0,0
sprpriority = 0

[State 3070, Super D]
type = NotHitBy
trigger1 = AnimElem = 3
value = , NA, SA, AT
time = 6

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 8
statetype = A       ;S,A,C,L
physics = A         ;A,C,S,N
ignorehitpause = 1
;persistent = 

[State 200, âπÇñ¬ÇÁÇ∑]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random<=500
value = 21, 0
channel = 2

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S9,1

;Body Effect
[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1022
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 8
supermove
pausemove
scale = 1,1
sprpriority = 1
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

;flash
[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 7
time = 1
add = 255,255,255

[State 1080,Slowray]
type = helper
trigger1 = animelem = 4
helpertype = normal
name = "Bedazzled"
id = 1000
pos = 0,-100
postype = p1
stateno = 1025
ownpal = 1
size.xscale = .4
size.yscale =.4


[State END]
type = ChangeState
trigger1 = !animtime
value = 948
ctrl = 1

[Statedef 1110]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 1100
velset = 0,0
sprpriority = 0

[State 3070, Super D]
type = NotHitBy
trigger1 = AnimElem = 3
value = , NA, SA, AT
time = 6

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 8
statetype = A       ;S,A,C,L
physics = A         ;A,C,S,N
ignorehitpause = 1
;persistent = 

[State 200, âπÇñ¬ÇÁÇ∑]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random<=500
value = 21, 0
channel = 2

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S9,1

;Body Effect
[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1022
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 8
supermove
pausemove
scale = 1,1
sprpriority = 1
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

;flash
[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 7
time = 1
add = 255,255,255

[State 1080,Slowray]
type = helper
trigger1 = animelem = 4
helpertype = normal
name = "Bedazzled"
id = 1000
pos = 0,-100
postype = p1
stateno = 1026
ownpal = 1
size.xscale = .4
size.yscale =.4

;------------
[Statedef 1120]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 1100
velset = 0,0
sprpriority = 0

[State 3070, Super D]
type = NotHitBy
trigger1 = AnimElem = 3
value = , NA, SA, AT
time = 6

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 8
statetype = A       ;S,A,C,L
physics = A         ;A,C,S,N
ignorehitpause = 1
;persistent = 


[State 200, âπÇñ¬ÇÁÇ∑]
type = PlaySnd
trigger1 = Time = 0
trigger1 = random<=500
value = 21, 0
channel = 2

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S9,1

;Body Effect
[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1022
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 8
supermove
pausemove
scale = 1,1
sprpriority = 1
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

;flash
[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 7
time = 1
add = 255,255,255

[State 1080,Slowray]
type = helper
trigger1 = animelem = 4
helpertype = normal
name = "Bedazzled"
id = 1000
pos = 0,-100
postype = p1
stateno = 1027
ownpal = 1
size.xscale = .4
size.yscale =.4


[State END]
type = ChangeState
trigger1 = !animtime
value = 948
ctrl = 1

;--------
; Special 2 -- LightBlast Counterattack!
[StateDef 1030]
type = S
movetype = I
physics = S
anim = 1050
ctrl = 0
velset = 0,0

[State 200, Fx]; provisorio
type = PlaySnd
trigger1 = Time = 0
value = 15,0 + (random%2)
channel = 1

;[State 200, Fx]
;type = PlaySnd
;trigger1 = Time = 0
;value = 172,7

[state 4000, gethit]
type = hitoverride
trigger1 = 1
attr = SCA,NA,SA
stateno = 1031

[State 1020, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; counter
[StateDef 1031]
type = S
movetype = A
physics = S
anim = 1051
ctrl = 0
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 0
value = 0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 29

[State 1200, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = S, ST
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 2
hitsound = S2,0
guardsound = S3,0
damage = 35,0
pausetime = 6,6
sparkno = S9991
sparkxy = -15,-75
p1stateno = 1032
p2stateno = 1033
guard.dist = 0
fall.xvelocity = 0
fall.yvelocity = 0
fall = 0
kill = 0

[State 1201, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


; Lightblast!
[Statedef 1032]
type = S
movetype = A
physics = S
anim = 1052
sprpriority = 2
ctrl = 0
velset = 0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 50

[State 200, âπÇñ¬ÇÁÇ∑]
type = PlaySnd
trigger1 = animelem = 2
value = 21, 1
channel = 1

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S13,1

;flash
[State 0, AllPalFX]
type = AllPalFX
trigger1 = animelem = 3
time = 1
add = 255,255,255

;Body Effect
[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1021
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 10
supermove
pausemove
scale = 1,1
sprpriority = 1
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Projectile]
type = Projectile
trigger1 = time = 0
projanim = 1011
projhitanim = 1011
projremanim = 1011
projcancelanim = 1011
projscale = 1,1
projremove = 1
projremovetime = 64
velocity = 0,0
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
attr = S, SP
bindtime = -1
damage = 75,4
hitsound = S13,0
guardsound = S3,0
sparkno = -1
sparkxy = 0,0
animtype = Medium
guardflag = MA
pausetime = 0,9
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
offset = 15,-25
postype = p1         ;p2,front,back,left,right
supermove
pausemove
removeongethit = 1
fall = 1



[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1033]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 815, ChangeAnim2]
type = ChangeAnim
trigger1 = Time = 0
value = 5012

[State 0, SelfState]
type = SelfState
trigger1 = time = 50
value = 0
ctrl = 1
;ignorehitpause = 0
;persistent = 1

; dropkick (aerial)
[Statedef 1040]
type = A
movetype= A
physics = A
ctrl = 0
anim = 1040
sprpriority = 2
velset = 8,2.5
movehitpersist = 1

[State 1061, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 13,2

[State 0, AfterImage]
type = AfterImage
trigger1 = time = 1
time = 20
length = 9
palcolor = 256
palinvertall = 0
palbright = 30,30,130
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 10,10,25
palmul = .65,.65,.75
timegap = 1
framegap = 3

[State 1061, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
trigger1 = random<=400
value = s19,2
channel = 0

[State 1061, VelAdd]
type = VelAdd
trigger1 = 1
y = .2


[State 1061, HitDef]
type = HitDef
trigger1 = animelem = 2
;trigger2 = animelem = 7
attr = A,SA
hitflag = MAF
guardflag = HA
animtype = Hard
damage = 65,1
getpower = 30,0
givepower = 20,0
pausetime = 7,8
guard.pausetime = 7,8
sparkno = S9992
guard.sparkno = S9101
sparkxy = -30,-35
hitsound = S2,1
guardsound = S3,0
ground.type = High
ground.slidetime = 18
ground.hittime = 20
air.hittime = 3
yaccel = .53
ground.velocity = -9,5
air.velocity = -9,5
airguard.velocity = -9,-4
air.fall = 1
fall.recover = 1
fall = 1
down.bounce = 1


[State 1061, ChangeState]
type = ChangeState
trigger1 = pos y >= 0 && vel y > 0
value = 1045

[Statedef 1045]
type = S
movetype= A
physics = S
ctrl = 0
anim = 1045
sprpriority = 2
velset = 0,0

;[State 1062, PlaySnd]
;type = PlaySnd
;trigger1 = time = 0
;value = 0,0

[State 1062, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 1062, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
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

; Dazzling Ball - nuevos specials
[StateDef 1050]
type = S
movetype = A
physics = S
anim = 1030
ctrl = 0
velset = 0,0

;[State 200, âπÇñ¬ÇÁÇ∑]
;type = PlaySnd
;trigger1 = Time = 0
;trigger1 = random<=500
;value = 21, 1
;channel = 2

 ;sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S20,2

 ;sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger1 = random<=500
value = S19,0
channel = 2



;flash
[State 0, AllPalFX]
type = AllPalFX
trigger1 = animelem = 3
time = 1
add = 255,255,255

;Body Effect
[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1021
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 10
supermove
pausemove
scale = 1,1
sprpriority = 1
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Projectile]
type = Projectile
trigger1 = animelem = 4
projanim = 1031
projID = 1031
projhitanim = 1032
projremanim = 1031
projcancelanim = 1031
projscale = 1,1
projremove = 1
projremovetime = 64
velocity = 0.5,0
projhits = 1
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
attr = S, SP
bindtime = -1
damage = 35
hitsound = S13,0
guardsound = S3,0
sparkno = -1
sparkxy = 0,0
animtype = Medium
guardflag = MA
pausetime = 12,12
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
kill =0
offset = 105,-65
postype = p1         ;p2,front,back,left,right
p2stateno = 1053

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[StateDef 1051]
type = S
movetype = A
physics = S
anim = 1030
ctrl = 0
velset = 0,0

;[State 200, âπÇñ¬ÇÁÇ∑]
;type = PlaySnd
;trigger1 = Time = 0
;trigger1 = random<=500
;value = 21, 1
;channel = 2

 ;sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S20,2


;flash
[State 0, AllPalFX]
type = AllPalFX
trigger1 = animelem = 3
time = 1
add = 255,255,255

;Body Effect
[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1021
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 10
supermove
pausemove
scale = 1,1
sprpriority = 1
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Projectile]
type = Projectile
trigger1 = animelem = 4
projanim = 1031
projID = 1031
projhitanim = 1032
projremanim = 1031
projcancelanim = 1031
projscale = 1,1
projremove = 1
projremovetime = 64
velocity = 1,0
projhits = 1
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
attr = S, SP
bindtime = -1
damage = 35
hitsound = S13,0
sparkno = -1
sparkxy = 0,0
animtype = Medium
guardflag = MA
pausetime = 12,12
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
guardsound = S3,0
offset = 105,-65
kill =0
postype = p1         ;p2,front,back,left,right
p2stateno = 1053

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 1052]
type = S
movetype = A
physics = S
anim = 1030
ctrl = 0
velset = 0,0

;[State 200, âπÇñ¬ÇÁÇ∑]
;type = PlaySnd
;trigger1 = Time = 0
;trigger1 = random<=500
;value = 21, 1
;channel = 2

 ;sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S20,2


;flash
[State 0, AllPalFX]
type = AllPalFX
trigger1 = animelem = 3
time = 1
add = 255,255,255

;Body Effect
[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1021
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 10
supermove
pausemove
scale = 1,1
sprpriority = 1
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Projectile]
type = Projectile
trigger1 = animelem = 4
projanim = 1031
projID = 1031
projhitanim = 1032
projremanim = 1031
projcancelanim = 1031
projscale = 1,1
projremove = 1
projremovetime = 64
velocity = 3,0
projhits = 1
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
attr = S, SP
bindtime = -1
damage = 35
hitsound = S13,0
sparkno = -1
sparkxy = 0,0
animtype = Medium
guardflag = MA
pausetime = 12,12
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
guardsound = S3,0
offset = 105,-65
kill =0
postype = p1         ;p2,front,back,left,right
p2stateno = 1053

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------
;p2 flash state
[StateDef 1053]
type    = S
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 200, âπÇñ¬ÇÁÇ∑]
type = PlaySnd
trigger1 = Time = 0
value = 20, 0


;flash
[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 1
time = 5
add = 255,255,255

[State 1051, feet on the ground] ;(agregar gravity)
type = PosSet
trigger1 = Pos Y <= 0
y = 0


[State 1051, dizzy anim]
type = ChangeAnim
trigger1 = (Time = 0) && SelfAnimExist(5300)
value = 5300

[State 1051, custom dizzy anim]
type = ChangeAnim2
trigger1 = (Time = 0) && !(SelfAnimExist(5300))
value = 5310

[State 1051, KOed gre]
type = ChangeState
trigger1 = life <= 0
value = 5050

[State 1051, back to normal]
type = SelfState
trigger1 = (Time > 95) && (Alive = 1)
value = 0
ctrl = 1
;---------------------------------------------

[Statedef 1060]
type    = C
movetype= A
physics = N
velset = 0,0
anim = 1060
juggle = 4
ctrl = 0

;[State 0, milID]
;type = Explod
;trigger1 = !(time%1) && var(21) = 1
;anim = 9999
;ID = 2101
;pos = 320,240
;postype = left
;bindtime = 1
;removetime = 1
;ownpal = 1

;[State 0, VarAdd]
;type = VarAdd
;trigger1 = !time
;var(12) = 1
;persistent = 0

[State 0, AfterImage]
type = AfterImage
trigger1 = time = 10
time = 20
length = 9
palcolor = 256
palinvertall = 0
palbright = 30,30,130
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 10,10,25
palmul = .65,.65,.75
timegap = 1
framegap = 3

[State 0, avanza]
type = VelSet
trigger1 = animelem = 3
x = 10

[State 0, ruido]
type = Playsnd
trigger1 = !time
value = 13,2

 ;sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger1 = random<=500
value = S19,3
channel = 2

[State 0, pushNO]
type = Playerpush
trigger1 = time > 0
value = 0

[State ]
type = Hitdef
trigger1 = !time  
damage = 70,5
getpower = 20,10
givepower = 0,0
pausetime = 1,1
attr = C,NA
hitflag = MAF
guardflag = M
animtype = heavy
air.animtype = back
priority = 4, hit
sparkno = S9992
sparkxy = 0,0
hitsound = S2,2
guardsound = S3,0
ground.type = high
air.type = high
ground.slidetime = 10
guard.slidetime = 15
ground.hittime = 10
guard.hittime = 15
ground.velocity = 1, -13
air.velocity = -1, -13
guard.velocity = -3
air.cornerpush.veloff = -30
ground.cornerpush.veloff = -30
yaccel = .5
fall = 1
fall.recover = 0
envshake.time = 15
envshake.ampl = -3
fall.xvelocity = 0
fall.yvelocity = 0
p2facing = 1


[State 0, fin]
type = Changestate
trigger1 = time = 30
value = 11
ctrl = 1

[State 0, blockeado]
type = Changestate
trigger1 = moveguarded
value = 60090

;-----------------------------------
;si roll se bloquea
[Statedef 60090]
type    = A
movetype= A
physics = A
juggle  = 4
velset = -.1,-15
ctrl = 0

[State 3001, bajando]
type = Veladd
trigger1 = 1
y = .2

;___________________________________________
;HELPERS (STRIKERS)

[Statedef 2000, calling Longshot]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 1999
poweradd = -500

;[State 1000, calling help audio]
;type = PlaySnd
;trigger1 = time = 0 &&  random<400
;value = 3410,3 + (random%2)


[State 1080,VirtuaS]
type = helper
trigger1 = time = 5
helpertype = normal
name = "Longshot"
id = 2001
pos = -150,0
postype = back
stateno = 2001
ownpal = 1

 ;sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
trigger1 = random<=700
value = S22,0 + (random%2)
channel = 2

[State 1090, 1]
type = ChangeState
trigger1 = Time = 60
value = 0
ctrl = 1

;   
;---------------------------------------------------------------------------
[Statedef 2001, Longshot Helper]
type    = A
movetype= A
velset = 0,0
ctrl = 0
anim = 2000				;Physics: S-stand, C-crouch, A-air
sprpriority = 2


[State 2007, VelSet]
type = VelSet
trigger1 = time = [0,112]
x = 10
y = -2

[State 876, Screenbound]
type = screenbound
trigger1 = Time >= 0
value = 0
movecamera = 0

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 14
value = S20,3 + (random%2)

[State 0, Width]
type = Width
trigger1 = anim = 2000
edge = 3000,0
player = 0,0
;value = 0,0
;ignorehitpause = 
;persistent = 

[State 1000, swoosh]
type = PlaySnd
trigger1 = time = 1
value = 0,2

;[State 1000,]
;type = PlaySnd
;trigger1 = time = 25
;value = 3420,0 + (random%2)

[State 1000, swoosh]
type = PlaySnd
trigger1 = animelem = 11
value = 0,1

;[State 1000,]
;type = PlaySnd
;trigger1 = time = 1
;value = 3420,10
;channel = 0

[State -3,Super]
type = Helper
trigger1 = animelem = 10
id = 7300
name = "stinger"
pos = 32,-40
postype = P1
stateno = 2002
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0
size.xscale = .5
size.yscale = .5

[State -3,Super]
type = Helper
trigger1 = animelem  = 11
id = 7301
name = "stinger"
pos = 44,-44
postype = P1
stateno = 2003
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0
size.xscale = .5
size.yscale = .5

[State -3,Super]
type = Helper
trigger1 = animelem = 12
id = 7302
name = "stinger"
pos = 56,-54
postype = P1
stateno = 2004
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0
size.xscale = .5
size.yscale = .5




[State 1091, 1]
type = Velset
trigger1 = time = 0
x = 10
y = 0

[State 1091, 2]
type = destroyself
trigger1 = time = 100

;------

[Statedef 2002]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 2001
sprpriority = 4

[State 0, NotHitBy]
type = NotHitBy
trigger1 =1 
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 80
;ignorehitpause = 
;persistent = 


[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 40, 7]
type = VelSet
trigger1 = time = 0
x = 7
y = 10

[State 1000, Proj]
type = Hitdef
trigger1 = time = 0
attr = A, SP
damage=40,0
animtype = Heavy
hitflag = MAF
guardflag = MA
pausetime = 6,ceil(7*(2-parent,var(18))/2)
sparkno = S9991
sparkxy = 0, 0
hitsound = S2,3
guardsound = S3,0
ground.type = High
ground.slidetime = 18
ground.hittime = 18
air.hittime = 18
guard.ctrltime = 18
ground.velocity = -4
guard.velocity = -4
air.velocity = -4.5, -6
airguard.velocity = -5.33,-1
air.juggle = ifelse(root,var(45)||root,var(22)=-1||root,var(23)=1,0,8)
fall = 0
fall.recover = 0
air.fall = 1
envshake.time = 8
envshake.ampl = 2
getpower = ifelse(var(17),70,214)*(1000+var(24))/1000*!(var(15)||var(16))*(10+((var(12)&&var(59))*6))/10,35*(1000+var(24))/1000*!(var(15)||var(16))*(10+((var(12)&&var(59))*6))/10
givepower = 35, 35
palfx.time = 12*var(41)
palfx.add = 255,255,255
palfx.mul = 128,128,128
forcestand = 1
yaccel = .5

[State 188, elect]
type = Explod
trigger1 = Movehit = 1
anim = 2005
scale = .5,.5
pos = 10,-35
postype = p2
sprpriority = 5
bindtime = -1

[State 10000, ChangeAnim]
type = ChangeAnim
trigger1 = movehit
value = 99999
ignorehitpause = 1

[State 10000, End]
type =destroyself
trigger1 = Anim = 99999 && Time > 1


[State 900, 4]
type = ChangeState
triggerall = time > 1 && !movehit
trigger1 = Pos Y >= 0 
value = 2005

[Statedef 2003]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 2002
sprpriority = 4

[State 0, NotHitBy]
type = NotHitBy
trigger1 =1 
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 80

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 40, 7]
type = VelSet
trigger1 = time = 0
x = 7
y = 10

[State 1000, Proj]
type = Hitdef
trigger1 = time = 0
attr = A, SP
damage= 30,0
animtype = Heavy
hitflag = MAF
guardflag = MA
pausetime = 6,ceil(7*(2-parent,var(18))/2)
sparkno = S9991
sparkxy = 0, 0
hitsound = S2,3
guardsound = S3,0
ground.type = High
ground.slidetime = 18
ground.hittime = 18
air.hittime = 18
guard.ctrltime = 18
ground.velocity = -4
guard.velocity = -4
air.velocity = -4.5, -6
airguard.velocity = -5.33,-1
air.juggle = ifelse(root,var(45)||root,var(22)=-1||root,var(23)=1,0,8)
fall = 0
fall.recover = 0
air.fall = 1
envshake.time = 8
envshake.ampl = 2
getpower = ifelse(var(17),70,214)*(1000+var(24))/1000*!(var(15)||var(16))*(10+((var(12)&&var(59))*6))/10,35*(1000+var(24))/1000*!(var(15)||var(16))*(10+((var(12)&&var(59))*6))/10
givepower = 35, 35
palfx.time = 12*var(41)
palfx.add = 255,255,255
palfx.mul = 128,128,128
forcestand = 1
yaccel = .5

[State 188, elect]
type = Explod
trigger1 = Movehit = 1
anim = 2005
scale = .5,.5
pos = 0,-55
postype = p2
sprpriority = 5
bindtime = -1


[State 10000, ChangeAnim]
type = ChangeAnim
trigger1 = movehit
value = 99999
ignorehitpause = 1

[State 10000, End]
type =destroyself
trigger1 = Anim = 99999 && Time > 1


[State 900, 4]
type = ChangeState
triggerall = time > 1 && !movehit
trigger1 = Pos Y >= 0 
value = 2005


[Statedef 2004]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 2003
sprpriority = 4

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 40, 7]
type = VelSet
trigger1 = time = 0
x = 15
y = 10

[State 0, NotHitBy]
type = NotHitBy
trigger1 =1 
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 80

[State 1000, Proj]
type = Hitdef
trigger1 = time = 0
attr = A, SP
damage=30,0
animtype = Heavy
hitflag = MAF
guardflag = MA
pausetime = 6,ceil(7*(2-parent,var(18))/2)
sparkno = S9991
sparkxy = 0, 0
hitsound = S2,3
guardsound = S3,0
ground.type = High
ground.slidetime = 18
ground.hittime = 18
air.hittime = 18
guard.ctrltime = 18
ground.velocity = -4
guard.velocity = -4
air.velocity = -4.5, -6
airguard.velocity = -5.33,-1
air.juggle = ifelse(root,var(45)||root,var(22)=-1||root,var(23)=1,0,8)
fall = 0
fall.recover = 0
air.fall = 1
envshake.time = 8
envshake.ampl = 2
ProjID = 3305
getpower = ifelse(var(17),70,214)*(1000+var(24))/1000*!(var(15)||var(16))*(10+((var(12)&&var(59))*6))/10,35*(1000+var(24))/1000*!(var(15)||var(16))*(10+((var(12)&&var(59))*6))/10
givepower = 35, 35
palfx.time = 12*var(41)
palfx.add = 255,255,255
palfx.mul = 128,128,128
forcestand = 1
yaccel = .5

[State 188, elect]
type = Explod
trigger1 = Movehit = 1
anim = 2005
scale = .5,.5
pos = -10,-75
postype = p2
sprpriority = 5
bindtime = -1

[State 10000, ChangeAnim]
type = ChangeAnim
trigger1 = movehit
value = 99999
ignorehitpause = 1

[State 10000, End]
type =destroyself
trigger1 = Anim = 99999 && Time > 1


[State 900, 4]
type = ChangeState
triggerall = time > 1 && !movehit
trigger1 = Pos Y >= 0 
value = 2005

;ãSéEåïÅiîÚÇ—ìπãÔÅjÅiè¡ñ≈Åj2
[Statedef 2005]
type    = S
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 2004

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 900, 0]
type = NotHitBy
trigger1 = 1
value = SCA

[State 52, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3, 1

[State 903, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 12
ampl = 2


[State 8200, Destroy]
type = DestroySelf
trigger1 = time = 35



;----------------------------
;The Holograms
[Statedef 2100]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 2100
poweradd = -500

;[State 1000, calling help audio]
;type = PlaySnd
;trigger1 = time = 0 &&  random<400
;value = 3410,3 + (random%2)


[State 1080,VirtuaS]
type = helper
trigger1 = time = 5
helpertype = normal
name = "Hologramas"
id = 2101
pos = -40,0
postype = p1
stateno = 2101
ownpal = 1

[State 1090, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

 ;sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
trigger1 = random<=700
value = S22,2 + (random%2)
channel = 2


[Statedef 2101, Holograms Helper]
type    = S
movetype= A
velset = 0,0
ctrl = 0				;Physics: S-stand, C-crouch, A-air
sprpriority = 2


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 2101 + (random%3)

[State 1000, swoosh]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 16
value = 9,2

;[State 1000,]
;type = PlaySnd
;trigger1 = time = 25
;value = 3420,0 + (random%2)

[State 1000, guitar]
type = PlaySnd
trigger1 = animelem = 7
value = 22,4



;[State 1000,]
;type = PlaySnd
;trigger1 = time = 1
;value = 3420,10
;channel = 0

;flash
[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 7
time = 1
add = 255,255,255

;projectile
[State 0, Projectile]
type = Projectile
trigger1 = animelem = 7
ProjID = 2100
projanim = 2104
projhitanim = 1017
projremanim = 2104
projcancelanim = 1017
projscale = .7,.7
projremove = 1
projremovetime = -1
velocity = 11,0
remvelocity = 0,0
accel = 0,0
projhits = 1
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
attr = S, SP
damage = 80,0
hitsound = S13,0
guardsound = S3,0
sparkno = -1
sparkxy = 0,0
animtype = Medium
guardflag = MA
pausetime = 0,9
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -8,5
offset = -10,-72
postype = p1         ;p2,front,back,left,right
palfx.time = 20
palfx.add = 100,100,100
palfx.mul = 256,256,256
palfx.sinadd =  -80,-80,-80,10
fall = 1

[State 1001, EnvColor]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
ignorehitpause = 1

[State 1091, 2]
type = destroyself
trigger1 = time = 100
