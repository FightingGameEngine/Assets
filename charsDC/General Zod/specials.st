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
; Special Attacks
; 
; Special 1 (QCF + P) -- state 1000
;   beam
;---------------------------------------------------------------------------

;------------------------------
; Special 1
[StateDef 1000]
type = A
movetype = A
physics = N
anim = 1000
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem= 2
x = 12
y = -0.3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=2
value = 172,11


[State 0, Explod]
type = Explod
trigger1 = animelem= 2
anim = 1001
ID = 1001
pos = 28,-65
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 25
ignorehitpause = 0
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = animelem= 2
anim = 1171
ID = 1171
pos = -28,-40
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 25
ignorehitpause = 0
scale = 1,1
sprpriority = -2
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = animelem= 2
anim = 1171
ID = 1171
pos = -58,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 25
ignorehitpause = 0
scale = 1,1
sprpriority = -2
ownpal = 1
removeongethit = 1



[State 220]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Hard
damage    = 100,5
guardflag = MA
pausetime = 7,7
sparkno = 2;S(8220+random%7)
;guard.sparkno; = S8430
sparkxy = -10,-60
hitsound   = 5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15,-5
air.velocity = -15,-5
fall = 1
air.fall = 1
fall.recover = 0
;p2stateno = 9020


[State 0, VelSet]
type = VelSet
trigger1 = animelem= 3
x = 3




[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


; Special 1
[StateDef 1100]
type = S
movetype = A
physics = S
anim = 1100
ctrl = 0
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  animelem = 2
value = 172,4

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  animelem = 1
value =200,3


[State 0, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal ;player
name = "bolachoque"
ID = 1101
stateno = 1101
pos = -10,-100
postype = p1    ;p2,front,back,left,right
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = animelem= 2
anim = 1102
ID = 1102
pos = -10,-100
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 80
ignorehitpause = 0
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1




[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1101]
type = A
movetype = A
physics = N
anim = 1101
ctrl = 0
sprpriority = 10
velset = 0,0
hitcountpersist = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent,pos x - ifelse(facing=-1,-10,10)
y = parent,pos y - 100
;ignorehitpause =
;persistent =
[State 0, Explod]
type = Explod
trigger1 = movehit && numexplod(1103)=0
anim = 1103
ID = 1103
pos = 0,-60
postype = p2  ;p2,front,back,left,right
bindtime = -1
removetime = -2
ignorehitpause = 1
scale = 1,1
sprpriority = 10
ownpal = 1
removeongethit = 0


[State 220]
type = HitDef
trigger1 = timemod = 4,1
attr = S, NA
animtype  = Hard
damage    = 5
guardflag = MA
pausetime = 0,0
sparkno = 0;S(8220+random%7)
;guard.sparkno; = S8430
sparkxy = 0,-20+(random/100);-10,-60
hitsound   = S172,7
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -1,-1
air.velocity = -1,-1
fall = 1
air.fall = 1
fall.recover = 0
palfx.time = 40
palfx.add  = 0,0,100
palfx.sinadd = 50,50,50,10
Palfx.color = 0
fall.envshake.time = 7
fall.envshake.ampl = -4
envshake.time = 6
envshake.freq = 50
envshake.ampl = -6

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = parent,anim != 1100
;ignorehitpause =
;persistent =



[StateDef 1200]
type = S
movetype = A
physics = S
anim = 1200
poweradd = 15
ctrl = 0
velset = 0,0
sprpriority = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 173,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 22
trigger2 = time = 42
trigger3 = time = 62
trigger4 = time = 82
value = 172,11


[State 0, Explod]
type = Explod
trigger1 = time = 22
trigger2 = time = 42
trigger3 = time = 62
trigger4 = time = 82
anim = 1201
ID = 1201
pos = -52,-85
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 6
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = time = 22
trigger2 = time = 42
trigger3 = time = 62
trigger4 = time = 82
anim = 1202
ID = 1202
pos = -52,-85
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = -4
ownpal = 1
removeongethit = 1


[State 1010, 2]
type = Projectile
trigger1 = time = 30
trigger2 = time = 50
trigger3 = time = 70
trigger4 = time = 90
ProjID = 1203
projanim = 1203
projheightbound = -540
projhitanim = -1
projremanim = 1203
projcancelanim = -1
velocity = 0,-13
offset = -56,-160
sprpriority = -5

[State 1012, 2]
type = Projectile
trigger1 = time = 30
trigger2 = time = 50
trigger3 = time = 70
trigger4 = time = 90
ProjID = 1204
projanim = 1204
projhitanim = 1205
projremanim = 1205
projcancelanim = 1205
velocity = 0,13
offset = (p2bodydist x + 5 - random/200),(-1200 - random/20)
; HitDef
attr = S,SP
hitflag = MAFD        ;HLAFD+-
guardflag = L        ;HLA
animtype = high
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 50,5
pausetime = 10,10
sparkno = -1;s1015
sparkxy = 0,20
guard.sparkno = -1;s1013
hitsound = S173,0    ;aff
guardsound = S173,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = 0,0
air.velocity = -2,-2
fall = 1

[State 1010, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[StateDef 1300]
type = S
movetype = A
physics = S
anim = 1300
poweradd = 15
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 173,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = 172,6


[State 0, Helper]
type = Helper
trigger1 = animelem = 8
helpertype = normal ;player
name = "Raio Reto"
ID = 1301
stateno = 1301
pos = 0,0;-88
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0

[State 1010, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



[Statedef 1301]
type = A
movetype = A
physics = N
anim = 1301
velset = 0,0
sprpriority = 10

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent,pos x - ifelse(facing=-1,-30,30);+ 30;- 10
y = parent,pos y - 70



[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 220, HitDef]
type = HitDef
trigger1 = time= 0
attr = S, NA
damage = 90,2
guardflag = MA
pausetime = 0,0
hitsound = 5,2
guardsound = 6,0;S171,4
sparkno = 3
sparkxy = -30, 0; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,-4
guard.velocity = -5
air.velocity = -14,8
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
air.fall= 1
fall = 1



[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 1300



[StateDef 1400]
type = A
movetype = A
physics = A
anim = 1400
poweradd = 15
ctrl = 0
;velset = 0,0
sprpriority = 0

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = -0.4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 172,1

[State 0, Helper]
type = Helper
trigger1 = animelem = 5
helpertype = normal ;player
name = "Raio Reto"
ID = 1401
stateno = 1401
pos = 0,0;-88
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0
size.xscale = 0.5;(float)
;size.yscale (float)



[State 1010, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1



[Statedef 1401]
type = A
movetype = A
physics = N
anim = 1401
velset = 0,0
sprpriority = 10

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent,pos x + ifelse(facing=-1,-50,50);+ 30;- 10
y = parent,pos y - 75



[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 220, HitDef]
type = HitDef
trigger1 = time= 0
attr = S, NA
damage = 90,2
guardflag = MA
pausetime = 0,0
hitsound = 5,4
guardsound = 6,0;S171,4
sparkno = -1
sparkxy = -30,floor(-(enemynear, pos y) + ifelse(enemynear,pos y < pos y,-20,0)); (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,-4
guard.velocity = -5
air.velocity = -14,8
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
air.fall= 1
fall = 1
palfx.time = 40
palfx.add  = 100,0,40
palfx.sinadd = 50,50,50,10
Palfx.color = 0
fall.envshake.time = 7
fall.envshake.ampl = -4
envshake.time = 6
envshake.freq = 50
envshake.ampl = -6



[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 1400




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
