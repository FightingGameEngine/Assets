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

;---------------------------------------------------------------------------
; Hyper 1 -- Mega beam
[StateDef 3000]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3000
velset = 0,0

[State 0, Explod]
type = Explod
trigger1 = time = 1
anim = 3005
ID = 3005
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
supermove = 999
pausemove = 999
scale = 1,1
sprpriority = 20
ownpal = 1
removeongethit = 1
;ignorehitpause =
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 171,2
;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
trigger1 = time = 1
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = time = 1
Time = 105
;anim =-1;s3012
pos = 2,-85
sound = S8889,0
poweradd = -1000
movetime = 105

[State -2, Helper]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 0
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time = 0
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time = 0
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 21    ;fv = 10
value = 1
;ignorehitpause =
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 14
value = 172,0



[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 174,0
channel = -1
lowpriority = -2
freqmul = 1.0
loop = 1



[State 0, Helper]
type = Helper
trigger1 = animelem = 14
helpertype = normal ;player
name = "bolha"
ID = 3001
stateno = 3001
pos = 0,0
postype = p1    ;p2,front,back,left,right
keyctrl = 0
ownpal = 1

[State 0, PosSet]
type = PosSet
trigger1 = AnimTime = 0
y = -30
;ignorehitpause =
;persistent =


[State 3110, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 3010
ctrl = 0

[StateDef 3010]
type    = S
movetype = I
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = time = 0 && anim != 3010
trigger1 = prevstateno!= 9001
value = 3010



[State 0, PosSet]
type = PosSet
trigger1 = pos y > -30;AnimTime = 0
y = -30


[State 0, PosSet]
type = PosSet
trigger1 = pos y < -120;AnimTime = 0
y = -120

;-begin movimento da AI

[State 0, VelSet]
type = VelSet
triggerall = !win
triggerall = !lose
triggerall = roundstate= 2
trigger1 =  random < 50 && vel x >= 0
x = 3

[State 0, VelSet]
type = VelSet
triggerall = !win
triggerall = !lose
triggerall = roundstate= 2
trigger1 =  random < 50 && vel x <= 0
x = -3

[State 0, VelSet]
type = VelSet
triggerall = !win
triggerall = !lose
triggerall = roundstate= 2
trigger1 =  random < 50 && vel y = 0
trigger2 = random < 100 && vel y >= 0
trigger3 = random < 200 && enemynear,pos y =0
y = 3

[State 0, VelSet]
type = VelSet
triggerall = !win
triggerall = !lose
triggerall = roundstate= 2
trigger1 =  random < 10 && vel y = 0
trigger2 = random < 100 && vel y <= 0
trigger3 = random < 200 && enemynear,pos y !=0
y = -3

[State 0, VelSet]
type = VelSet
trigger1 =  random < 200 && vel x = 0
trigger2 =  random < 100 && vel x != 0
trigger3 = roundstate != 2
x = 0
y = 0

[State 0, ChangeState]
type = ChangeState
triggerall = !win
triggerall = !lose
triggerall = roundstate= 2
triggerall = time > 40
trigger1 = enemynear,pos y != 0 && random < 200
trigger2 = p2bodydist x > 50 && enemynear,pos y = 0 && random < 100
value = 3020
ctrl = 0

[State 0, ChangeState]
type =ChangeState
triggerall = !win
triggerall = !lose
triggerall = roundstate= 2
triggerall = random < 200
triggerall = p2bodydist x > 80;enemynear,pos y != 0
trigger1 = time > 40
value = 3025
ctrl = 0


[State 0, ChangeState]
type = ChangeState
triggerall = !win
triggerall = !lose
triggerall = numhelper(3031)=0
triggerall = roundstate= 2
triggerall = p2bodydist x < 60;enemynear,pos y != 0
trigger1 = time > 40 && random < 200
trigger2 = prevstateno = 9001 && time > 20 && random < 100 && life < 200
value = 3030
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall = !win
triggerall = !lose
triggerall = roundstate= 2
triggerall= random < 80
triggerall = p2bodydist x > 30;enemynear,pos y != 0
trigger1 = time > 40
value = 3035
ctrl = 0

[State 0, ChangeState];taunt inutil
type = ChangeState
triggerall = !win
triggerall = !lose
triggerall = roundstate= 2
triggerall= time > 40
triggerall = p2bodydist x > 30;enemynear,pos y != 0
trigger1 = random < 120 && life > 400
trigger2 = random < 100 && life > 300 && life < 400
value = 3010
ctrl = 0

;endmovimento da AI


[State 1101,Turn]
type = Turn
trigger1 = P2Dist X < -20




[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 9001
time = 2


[State 0, ChangeState]
type = ChangeState
trigger1 = win
value = 0
ctrl = 1
;anim =
;ignorehitpause =
;persistent =








[State 0, ChangeState]
type = ChangeState
trigger1 = lose
value = 5100
ctrl = 1

[StateDef 3020]
type    = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0
;anim = 3020

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = time = 0 && anim != 3020
trigger1 = prevstateno!= 9001
value = 3020


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = 172,8


[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 9001
time = 2

[State 0, Helper]
type = Helper
;triggerall = prevstateno!= 9001
trigger1 = time = 10
helpertype = normal ;player
name = "Raio Reto"
ID = 3021
stateno = 3021
pos = 0,0;-88
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0


[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3010


[Statedef 3021]
type = A
movetype = A
physics = N
anim = 3021
velset = 0,0
sprpriority = 10

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent,pos x - ifelse(facing=-1,-50,50);+ 30;- 10
y = parent,pos y - 100



[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 220, HitDef]
type = HitDef
trigger1 = time= 0
attr = S, NA
damage = 130,15
guardflag = MA
pausetime = 0,0
hitsound = 5,1
guardsound = 6,0
sparkno = 4
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
trigger2 = parent, anim != 3020


[StateDef 3025]
type    = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = time = 0 && anim != 3025
trigger1 = prevstateno!= 9001
value = 3025


[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 9001
time = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 10
trigger2 = time = 20
trigger3 = time = 30
trigger4 = time = 40
value = 9,1

[State 0, Projectile]
type = Projectile
;triggerall = prevstateno!= 9001
trigger1 = time = 10
trigger2 = time = 20
trigger3 = time = 30
trigger4 = time = 40
ProjID = 3026
projanim =3026
projhitanim = -1
projremanim = -1
projcancelanim = -1
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 8,-1+floor(random/300)
projpriority = 10
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 50,-95
postype = p1         ;p2,front,back,left,right
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 1,Hit   ;Hit,Miss,Dodge
damage = 50,5
sparkno = 4
sparkxy = 0,0
ground.type = High      ;Low,Trip,None
ground.slide =5
air.hittime = 20
ground.velocity = -5,0
air.velocity = -5,-2
sprpriority = 1
p1getp2facing = 0
fall = 0
fall.yvelocity = -4.5
fall.recover = 1
fall.recovertime = 4
fall.damage = 0
down.bounce = 0
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3010


[StateDef 3030]
type    = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = time = 0 && anim != 3030
trigger1 = prevstateno!= 9001
value = 3030


[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 9001
time = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 8
value = 173,2

[State 0, Helper]
type = Helper
;trigger1 = prevstateno!= 9001
trigger1 = time = 8
helpertype = normal ;player
name = "roda"
ID = 3031
stateno = 3031
pos = 0,0;-88
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0


[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3010


[Statedef 3031]
type = A
movetype = A
physics = N
anim = 3033
velset = 0,0
sprpriority = 10

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent,pos x - ifelse(facing=-1,20,-20);+ 30;- 10
y = parent,pos y - 50



[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 220, HitDef]
type = HitDef
trigger1 = time= 0
attr = S, NA
damage = 140,15
guardflag = MA
pausetime = 0,0
hitsound = 5,2
guardsound = 6,0
sparkno = 4
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
trigger2 = parent, anim != 3030


[StateDef 3035]
type    = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = time = 0 && anim != 3030
trigger1 = prevstateno!= 9001
value = 3030


[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 9001
time = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = S0,0  ;aff

[State 0, Helper]
type = Helper
;triggerall = prevstateno!= 9001
trigger1 = time = 10
helpertype = normal ;player
name = "Raio Reto"
ID = 3036
stateno = 3036
pos = 0,0;-88
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0
size.xscale = 2;(float)
size.yscale = 2;(float)




[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3010


[Statedef 3036]
type = A
movetype = A
physics = N
anim = 3031
velset = 0,0
sprpriority = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = timemod = 10,1
value = 9,2


[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent,pos x - ifelse(facing=-1,2,-2);+ 30;- 10
y = parent,pos y - 119



[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 220, HitDef]
type = HitDef
trigger1 = timemod= 3,1
attr = S, NA
damage = 10,2
guardflag = MA
pausetime = 0,0
hitsound = 5,1
guardsound = 6,0
sparkno = 4
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
palfx.time = 40
palfx.add  = 100,0,0
palfx.sinadd = 50,10,10,10
Palfx.color = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animtime = 0 && anim = 3031
value = 3032

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0 && anim = 3032
trigger2 = parent, anim != 3030



[Statedef 3002]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = -10
velset = 0,0
hitcountpersist = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,3


[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3003
time = 2

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(random>600,3003,3004)

[State 0, VelSet]
type = VelSet
trigger1 = time = 0  && anim = 3003
x = -7+(random/250)
y = -1+(random/500)


[State 0, VelSet]
type = VelSet
trigger1 = time = 0  && anim = 3004
x = -5+(random/250)
y = -3+(random/500)


[State 220]
type = HitDef
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
attr = S, NA
animtype  = Hard
damage    = 40
guardflag = MA
pausetime = 7,7
sparkno = 2;S(8220+random%7)
priority = 1, Hit
sparkxy = -10,-60
hitsound   = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = 5,-5
air.velocity = 5,-5
fall = 1
air.fall = 1
fall.recover = 0
;p2stateno = 9020
palfx.time = 40
palfx.add  = 40,40,40
palfx.sinadd = 50,50,50,10
Palfx.color = 0
fall.envshake.time = 7
fall.envshake.ampl = -4
envshake.time = 6
envshake.freq = 50
envshake.ampl = -6


[State 0, DestroySelf]
type = DestroySelf
trigger1 = time > 150

[Statedef 3003]
type = S
movetype = H
physics = N
ctrl = 0
anim = 1205
sprpriority = -10
velset = 0,0
hitcountpersist = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 173,0

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
y = -5
;ignorehitpause =
;persistent =


[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0


[Statedef 3005]
type = A
movetype = A
physics = N
ctrl = 0
anim = 3001
sprpriority = -10
velset = 0,0
hitcountpersist = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 3001
trigger1 = timemod = 30,1
value = 172,0

[State 0, BGPalFX]
type = BGPalFX
trigger1 = 1;time = 1
time = 1
add = 200,100,100
mul = 200,100,100
sinadd = 50,0,0,10
invertall = 1
color = 256
ignorehitpause = 1
persistent = 1


[State 0, VarAdd]
type = VarAdd
trigger1 = time = 0
v = 40    ;fv =
value = 1

[State 4500, PalfX]
type = PalFX
trigger1 = time = 0
add = 100,100,100
mul = 256,256,256
time = 5
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3005
time = 2



;ignorehitpause =
;persistent =


[State 0, ChangeState]
type = ChangeState
trigger1 = time = 5
value = 3001
ctrl = 0
;anim =
;ignorehitpause =
;persistent =




[StateDef 3001]
type    = C
movetype = I
physics = C
ctrl = 0
anim = 3001
velset = 0,0
sprpriority = 420

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3005
time = 2


[State 0, Explod]
type = Explod
triggerall=anim = 3001
trigger1 = timemod= 15,1
anim = 3006
ID = 3006
pos = 200,120-floor(random/10)
postype = right
facing = 1
vfacing = 1
bindtime = 1
vel = -6-(random/250),-1+(random/500)
removetime = 100
scale = 1,1
sprpriority = -970
ownpal = 1

[State 0, Explod]
type = Explod
triggerall=anim = 3001
trigger1 = timemod= 15,1
anim = 3006
ID = 3006
pos = 200,110-floor(random/10)
postype = right
facing = 1
vfacing = 1
bindtime = 1
vel = -3-(random/500),-1+(random/500)
removetime = 200
scale = 0.75,0.75
sprpriority = -980
ownpal = 1

[State 0, Explod]
type = Explod
triggerall=anim = 3001
trigger1 = timemod= 15,1
anim = 3006
ID = 3006
pos = 200,100-floor(random/10)
postype = right
facing = 1
vfacing = 1
bindtime = 1
vel = -2-(random/500),-1+(random/500)
removetime = 400
scale = 0.5,0.5
sprpriority = -990
ownpal = 1





[State 0, Helper]
type = Helper
triggerall=anim = 3001
triggerall = roundstate= 2
triggerall= numhelper(3002)<5
trigger1 = timemod= 70,1
helpertype = normal ;player
name = "nimrods"
ID = 3002
stateno = 3002
pos = 200,-30-floor(random/10)
postype = right
facing = 1
keyctrl = 0
ownpal = 0
;supermove
;pausemove



[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0


[State 0, Explod]
type = Explod
triggerall=anim = 3001
trigger1 = time = 0 && numexplod(3002) = 0
anim = 3002
ID = 3002
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
supermove = 999
pausemove = 999
scale = 1,1
sprpriority = 100
shadow = 100,100,100
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 1


[State 0, BGPalFX]
type = BGPalFX
trigger1 = 1;time = 1
time = 1
add = 100,0,0
mul = 100,0,0
sinadd = 50,0,0,10
invertall = 1
color = 256
ignorehitpause = 1
persistent = 1

[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = p2name="Juggernaut"
trigger2 = p2name="Namor"
trigger3 = p2name="Strong Guy"
trigger4 = p2name="Colossus"
trigger5 = p2name="Rogue"
trigger6 = p2name="Bishop"
v = 22   ;fv = 10
value = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = var(40) > ifelse(var(22)=1,10,20) && anim!= 3007
value = 3007

[State 0, Explod]
type = Explod
triggerall=anim = 3007
trigger1 = numexplod(3008) = 0
anim = 3008
ID = 3008
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
supermove = 999
pausemove = 999
scale = 1,1
sprpriority = -100
shadow = 100,100,100
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 1

[State 0, VarSet]
type = VarSet
trigger1 = anim = 3007
v = 40
value = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = anim = 3007 && animtime = 0
value = 3001
ctrl = 0
;anim =
;ignorehitpause =
;persistent =




[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = root,life<=0;lose
trigger2 = anim = 3007
id =  3002

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = root,life<=0;lose
trigger2 = anim = 3001
id =  3008



[State 0, DestroySelf]
type = DestroySelf
trigger1 = root,life<=0;lose
;ignorehitpause =
;persistent =


;----------------------
;hypers normais
 [StateDef 3100]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3100
velset = 0,0


;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
trigger1 = animelem = 2
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = animelem = 2
Time = 60
;anim =-1;s3012
pos = 2,-85
sound = S8889,0
poweradd = -1000


[State -2, Helper]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 0
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time = 0
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time = 0
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1


[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "monstro"
ID = 3110
stateno = 3110
pos = 60,-430
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermove
pausemove




[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[StateDef 3110]
type    = A
movetype = A
physics = N
ctrl = 0
anim = 3110
velset = 1,13
sprpriority = -49

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 8,0


[State 0, HitOverride]
type = HitOverride
trigger1 = time = 0
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3199
time = -1


[State 600, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 50
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0,0
sparkno = 0
sparkxy = -10, -75
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 25
ground.velocity = -2
air.fall = 0
air.velocity = 0, 12
getpower = 0


[State 3110, back to stance]
type = ChangeState
trigger1 = pos y > 0
value = 3111
ctrl = 0

[StateDef 3111]
type    = A
movetype = A
physics = N
ctrl = 0
anim = 3111
velset = 0,0
sprpriority = 99

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 176,3

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8400
ID = 8400
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
supermove
pausemove
scale = 1.5,1
sprpriority = 111

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8401
ID = 8401
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
supermove
pausemove
scale = 1.5,1
sprpriority = -70

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 20
freq = 60
ampl = -4
phase = 90

[State 600, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 80,10
animtype = Light
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pausetime = 0,0
sparkno = 0
sparkxy = -10, -75
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 25
ground.velocity =  -9, -9
air.fall = 0
air.velocity = -9, -9
getpower = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animtime = 0
value = 176,2



[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 3112
ctrl = 0

[StateDef 3112]
type    = A
movetype = A
physics = N
ctrl = 0
sprpriority = 99

[State 0, ChangeAnim]
type = ChangeAnim
;trigger1 = prevstateno != 3199
trigger1 = time = 0
trigger1 = anim != 3112
value = 3112
;elem = 1
;ignorehitpause =
;persistent =


[State 0, ChangeState]
type = ChangeState
trigger1 = parent,win
value = 3115
ctrl = 0
;anim =
;ignorehitpause =
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = parent,lose
value = 3190
ctrl = 0



[State 0, HitOverride]
type = HitOverride
trigger1 = time = 0
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3199
time = -1



[State 0, Turn]
type = Turn
trigger1 = P2Dist x < -10
;ignorehitpause =
;persistent =


[State 0, VelSet]
type = VelSet
triggerall = anim = 3112
triggerall = time > 10
trigger1 = P2Dist x > 30
x = 0.8 ;+ var(45)/2

[State 0, ChangeState]
type = ChangeState
trigger1 = p2dist x < 30
value = 3113
ctrl = 0


[StateDef 3113]
type    = A
movetype = A
physics = N
ctrl = 0
anim = 3113
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,2


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = prevstateno != 3199
trigger1 = time = 0
trigger1 = anim != 3113
value = 3113


[State 0, HitOverride]
type = HitOverride
trigger1 = time = 0
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3199
time = -1


[State 600, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 70,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10, -75
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 25
ground.velocity =  -9, -9
air.fall = 0
air.velocity = -9, -9
getpower = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value =  3112
ctrl = 0



[StateDef 3199]
type    = A
movetype = I
physics = N
ctrl = 0
;anim = 3013

[State 0, HitOverride]
type = HitOverride
trigger1 = time = 0
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3199
time = -1


[State 0, PalFX]
type = PalFX
trigger1 = time = 0
time = 10
add = 164,11,0
mul = 358,256,256
ignorehitpause = 1


[State 0, VarAdd]
type = VarAdd
trigger1 = time = 0
v = 46
value = gethitvar(damage)

[State 0, ChangeState]
type = ChangeState
triggerall = var(46) >= 200
trigger1 = time = 0
value = 3190
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall = var(46) < 200
trigger1 = time = 0
value = 3112;prevstateno
ctrl = 0
;anim =
;ignorehitpause =
;persistent =
[StateDef 3190]
type    = A
movetype = H
physics = N
ctrl = 0
anim = 3115
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 172,7


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = 176,4



[State 3000,7]; cor do modo blindado
type = PalFX
trigger1 = time = 0
time = 222
add = 20,20,40
color = 128
sinadd = 60,60,80,10
ignorehitpause=1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0


[StateDef 3115]
type    = A
movetype = I
physics = N
ctrl = 0
anim = 3114
velset = 0,0




[State 0, DestroySelf]
type = null;DestroySelf
trigger1 = animtime = 0

;hypers normais
 [StateDef 3200]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3200
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
trigger2 = animelem = 10
value = 172,8



[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 171,2
;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
trigger1 = animelem = 8
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = animelem = 8
Time = 60
;anim =-1;s3012
pos = 20,-90
sound = S8889,0
poweradd = -1000
movetime = 60


[State -2, Helper]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = 172,6

[State 0, Helper]
type = Helper
trigger1 = animelem = 9
helpertype = normal ;player
name = "raio"
ID = 3210
stateno = 3210
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermove
pausemove

[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 3210]
type = A
movetype = A
physics = N
anim = 3021
velset = 0,0
sprpriority = 10

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent,pos x - ifelse(facing=-1,35,-35);+ 30;- 10
y = parent,pos y - 90

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 220, HitDef]
type = HitDef
trigger1 = time= 0
attr = S, NA
damage = 250,20
guardflag = MA
pausetime = 5,5
hitsound = 5,2
guardsound = 6,0;S171,4
sparkno = 3
sparkxy = -30, 0; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,-9
guard.velocity = -5
air.velocity = -14,-8
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
air.fall= 1
fall = 1
palfx.time = 40
palfx.add  = 0,0,100
palfx.sinadd = 50,50,50,10
Palfx.color = 0
getpower = 0


[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = parent, anim != 3200


 [StateDef 3300]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3600
velset = 0,0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 171,2
;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
trigger1 = animelem = 4
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = animelem = 4
Time = 60
;anim =-1;s3012
pos = 20,-90
sound = S8889,0
poweradd = -1000
movetime = 60


[State -2, Helper]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = time > 72
triggerall = time < 152
trigger1 = timemod = 5,1
value = 172,6


[State 0, Projectile]
type = Projectile
triggerall = time > 72
triggerall = time < 152
trigger1 = timemod = 5,1
ProjID = 3026
projanim =3026
projhitanim = -1
projremanim = -1
projcancelanim = -1
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 10,2+floor(random/300)
projpriority = 10
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 70,-120
postype = p1         ;p2,front,back,left,right
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 1,Hit   ;Hit,Miss,Dodge
damage = 15,2
sparkno = 1
sparkxy = 0,0
ground.type = High      ;Low,Trip,None
ground.slide =25
air.hittime = 20
ground.velocity = -5,-3
air.velocity = -5,-2
sprpriority = 1
p1getp2facing = 0
fall = 1
fall.yvelocity = -4.5
fall.recover = 1
fall.recovertime = 4
fall.damage = 0
down.bounce = 0
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1
palfx.time = 10
palfx.add  = 100,0,40
palfx.sinadd = 50,50,50,10
Palfx.color = 0
getpower = 0

[State 0, Projectile]
type = Projectile
triggerall = time > 72
triggerall = time < 152
trigger1 = timemod = 5,1
ProjID = 3026
projanim =3026
projhitanim = -1
projremanim = -1
projcancelanim = -1
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 10,-1+floor(random/300)
projpriority = 10
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = -10,-115
postype = p1         ;p2,front,back,left,right
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 1,Hit   ;Hit,Miss,Dodge
damage = 10,2
sparkno = 1
sparkxy = 0,0
ground.type = High      ;Low,Trip,None
ground.slide =25
air.hittime = 20
ground.velocity = -5,-3
air.velocity = -5,-2
sprpriority = 1
p1getp2facing = 0
fall = 1
fall.yvelocity = -4.5
fall.recover = 1
fall.recovertime = 4
fall.damage = 0
down.bounce = 0
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1
palfx.time = 10
palfx.add  = 100,0,40
palfx.sinadd = 50,50,50,10
Palfx.color = 0
getpower = 0

[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------

[StateDef 3900]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3900
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 172,0


[State 0, Explod]
type = Explod
trigger1 = time = 1
anim = 3005
ID = 3005
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
supermove = 999
pausemove = 999
scale = 1,1
sprpriority = 20
ownpal = 1
removeongethit = 1
;ignorehitpause =
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 171,2
;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
trigger1 = time = 1
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = time = 1
Time = 105
;anim =-1;s3012
pos = 2,-85
sound = S8889,0
poweradd = -3000
movetime = 105

[State -2, Helper]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 0
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time = 0
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time = 0
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3901
ctrl = 0


[StateDef 3901]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3901
velset = 0,0
sprpriority = -20

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim =  3002
ID = 3002
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 100
supermove
pausemove
scale = 1,1
sprpriority = -10
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
triggerall=anim = 3001
trigger1 = timemod= 15,1
anim = 3006
ID = 3006
pos = 200,120-floor(random/10)
postype = right
facing = 1
vfacing = 1
bindtime = 1
vel = -6-(random/250),-1+(random/500)
removetime = 100
scale = 1,1
sprpriority = -970
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = timemod = 7,1
value = 172,8


[State 0, Projectile]
type = Projectile
trigger1 = timemod = 7,1
ProjID = 3910
projanim = 3910
projhitanim = -1;3510 + var(40)
projremanim = -1;3510 + var(40)
projcancelanim = -1;3510 + var(40)
projscale = 1.1,1.1
projremove = 0
projremovetime = -1
velocity = 15,2;+floor(random/500),0;-3+floor(random/500)
remvelocity = 0,0
accel = 0,-0.1
velmul = 1
projhits = 1
projmiss = 0
projpriority = 1
projsprpriority = 3
projedgebound = 340
projstagebound = 340
projheightbound = -240
offset = -230,-60-floor(random/8)
postype = p1         ;p2,front,back,left,right
projshadow = 100,100,100
supermovetime = 0
pausemovetime = 0
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
givepower = 0,0
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 1,Hit   ;Hit,Miss,Dodge
damage = 7,1
pausetime = 5,5
sparkno = 3
sparkxy = 20,0
hitsound = s2,0
guardsound = 6,0
ground.type = High      ;Low,Trip,None
ground.slide = 20
ground.hittime = 25
air.hittime = 25
ground.velocity = -6,-4
air.velocity = -3,-3
sprpriority = -21
p1getp2facing = 0
fall = 0
fall.yvelocity = -4.5
fall.recover = 1
fall.recovertime = 4
fall.damage = 0
down.bounce = 0
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1
persistent = 1


[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3902
ctrl = 0


[StateDef 3902]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3902
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 172,0

 [State 0, Helper]
type = Helper
;triggerall = prevstateno!= 9001
trigger1 = animelem = 2
helpertype = normal ;player
name = "Raio Reto"
ID = 3920
stateno = 3920
pos = 0,0;-88
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0
size.xscale = 2;(float)
size.yscale = 2;(float)




[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3903
ctrl = 0

[StateDef 3903]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3903
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 176,0


[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1






[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3010


[Statedef 3920]
type = A
movetype = A
physics = N
anim = 3031
velset = 0,0
sprpriority = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = timemod = 10,1
value = 9,2

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent,pos x - ifelse(facing=-1,2,-2);+ 30;- 10
y = parent,pos y - 119



[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 220, HitDef]
type = HitDef
trigger1 = timemod= 3,1
attr = S, NA
damage = 30,2
guardflag = MA
pausetime = 0,0
hitsound = 5,1
guardsound = 6,0
sparkno = 4
sparkxy = -30, 0; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,-4
guard.velocity = -5
air.velocity = -14,-2
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
air.fall= 1
fall = 1
getpower = 0
palfx.time = 40
palfx.add  = 100,0,0
palfx.sinadd = 50,10,10,10
Palfx.color = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animtime = 0 && anim = 3031
value = 3032

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0 && anim = 3032
;trigger2 = parent, anim != 3030



