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
; Hyper 1 -- Bedazzled
[StateDef 3000]
type    = S
physics = S
ctrl = 0
anim = 3000
velset = 0,0

[State 200, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = Time = 0
value = 21, 2
channel = 2

[State 3000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
ID = 918
pos = 0,0
postype = p1
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = 3
ownpal = 1


[State 3000, superpause]
type = SuperPause
trigger1 = time = 6
time = 60
sound = S10,1
pos = 60,-70
darken = 1
poweradd = -1000

;-------------------
;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------



[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 6
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
triggerall = !Var(29)
triggerall = !numhelper(40005)
triggerall = !numhelper(40003)
trigger1 = time = 6
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
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 6
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

; end DCvM stuff
;-------------------

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S9,1

;Body Effect
[State 0, Explod]
type = Explod
trigger1 = time = 8
trigger2 = time = 24
trigger3 = time = 40
trigger4 = time = 56
trigger5 = time = 72
anim = 1020
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 5
scale = 1,1
sprpriority = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ontop = 1

;flash
[State 0, AllPalFX]
type = AllPalFX
trigger1 = animelem = 3
trigger2 = animelem = 7
trigger3 = animelem = 11
trigger4 = animelem = 15
trigger5 = animelem = 19
time = 1
add = 255,255,255


[State 13016, 1]
type = Helper
trigger1 = animelem = 3 || animelem = 6 || animelem = 10 || animelem = 14 
helpertype = normal
name = "3001"
ID = 3001
pos = 55,-65
postype = p1
stateno = 3001
size.xscale = 1
size.yscale = 0.25


[State 13016, 1]
type = Helper
trigger1 = animelem = 18 
helpertype = normal
name = "3001"
ID = 3001
pos = 55,-65
postype = p1
stateno = 3011
size.xscale = 1
size.yscale = 0.25


;projectile
;[State 0, Projectile]
;type = Projectile
;trigger1 = time = 15
;trigger2 = time = 25
;trigger3 = time = 35
;trigger4 = time = 45
;trigger5 = time = 55
;projanim = 1012
;projhitanim = 1013
;projremanim = 1012
;projcancelanim = 1012
;projscale = 1,1
;projremove = 1
;projremovetime = -1
;velocity = 9,0
;remvelocity = 0,0
;accel = 0,0
;velmul = 1
;projhits = 1
;projmiss
;projpriority = 1
;projsprpriority = 3
;projedgebound = 40
;projstagebound = 40
;projheightbound = -240
;attr = S, SP
;damage = 40,3
;hitsound = S13,0
;sparkno = -1
;sparkxy = 0,0
;animtype = Medium
;guardflag = MA
;pausetime = 0,9
;ground.type = Low
;ground.slidetime = 14
;ground.hittime  = 16
;ground.velocity = -8
;offset = 10,-75
;postype = p1         ;p2,front,back,left,right
;envshake.time = 7
;envshake.freq = 80
;envshake.ampl = -5
;envshake.phase = 90
;supermove
;pausemove

;projectile
;[State 0, Projectile]
;type = Projectile
;trigger1 = time = 65
;projanim = 1012
;projhitanim = 1013
;projremanim = 1012
;projcancelanim = 1012
;projscale = 1,1
;projremove = 1
;projremovetime = -1
;velocity = 9,0
;remvelocity = 0,0
;accel = 0,0
;velmul = 1
;projhits = 1
;projmiss
;projpriority = 1
;;projsprpriority = 3
;;projedgebound = 40
;projstagebound = 40
;projheightbound = -240
;attr = S, SP
;;damage = 45,3
;hitsound = S13,0
;sparkno = -1
;;sparkxy = 0,0
;animtype = Medium
;;;guardflag = MA
;pausetime = 0,9
;ground.type = Low
;ground.slidetime = 14
;ground.hittime  = 16
;ground.velocity = -8
;;offset = 10,-75
;postype = p1         ;p2,front,back,left,right
;envshake.time = 7
;envshake.freq = 80
;envshake.ampl = -5
;envshake.phase = 90
;supermove
;pausemove
;fall = 1


[State 3110, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;ray helper
[Statedef 3001, Ray helper]
type    = U
movetype= A
physics = N
velset = 0,0
anim = 15000
sprpriority = 5

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 20
pos = 55,-65

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,1000

[State 1001]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 3002
time = -1
ignorehitpause = 1

[State 200, beam]
type = HitDef
trigger1 = time = 0
attr = S, HP
damage = 50,2
animtype = diagup
hitflag = MAF
guardflag = MA
getpower=0,0
priority = 5, Hit
pausetime = 3,3
hitsound   = S2,2
sparkno = S1138
sparkxy = 0,0
guardsound = S3,0
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
air.hittime  = 30
ground.velocity = -2
guard.velocity = -2
air.velocity = -2,-2
airguard.velocity = -2,-2
envshake.time = 3
envshake.freq = 50
envshake.ampl = -3
envshake.phase = 70
fall = 0
;fall.recover = 0
;fall.envshake.ampl = 6
;fall.envshake.time = 12
;sprpriority = 5
palfx.time = 12
palfx.add = 100,100,180
palfx.mul = 256,130,154
palfx.sinadd = -80,-80,-80,6
palfx.invertall = 0
palfx.color = 0
;p2stateno=4056

[State 1001, EnvColor]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
ignorehitpause = 1

[State 200, MoveHitReset]
type = MoveHitReset
trigger1 = MoveHit = 1
persistent = 1
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = movehit && numtarget && !numhelper(3003)
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal ;player
name = "fire"
ID = 3003
stateno = 3003
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
ignorehitpause=1



[State 1045, 7]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent, stateno !=3000


[Statedef 3011, Ray helper last]
type    = U
movetype= A
physics = N
velset = 0,0
anim = 15000
sprpriority = 5

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 20
pos = 55,-65

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,1000

[State 1001]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 3002
time = -1
ignorehitpause = 1

[State 200, beam]
type = HitDef
trigger1 = time = 0
attr = S, HP
damage = 60,2
animtype = diagup
hitflag = MAF
guardflag = MA
getpower=0,0
priority = 5, Hit
pausetime = 3,3
hitsound   = S2,2
sparkno = S1138
sparkxy = 0,0
guardsound = S3,0
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
air.hittime  = 30
ground.velocity = -8,1
guard.velocity = -8
air.velocity = -7,7
airguard.velocity = -2,0
envshake.time = 3
envshake.freq = 50
envshake.ampl = -3
envshake.phase = 70
fall = 1
;fall.recover = 0
;fall.envshake.ampl = 6
;fall.envshake.time = 12
;sprpriority = 5
palfx.time = 12
palfx.add = 100,100,180
palfx.mul = 256,130,154
palfx.sinadd = -80,-80,-80,6
palfx.invertall = 0
palfx.color = 0
;p2stateno=4056


[State 1001, EnvColor]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
ignorehitpause = 1

[State 200, MoveHitReset]
type = MoveHitReset
trigger1 = MoveHit = 1
persistent = 1
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = movehit && numtarget && !numhelper(3003)
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal ;player
name = "fire"
ID = 3003
stateno = 3003
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
ignorehitpause=1



[State 1045, 7]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent, stateno !=3000
;---------------------------------------------------------------------------
[Statedef 3002]
type    = U
movetype= I
physics = N
velset = 0,0
anim = 15001
sprpriority = 5

[State 1001]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1045, 7]
type = DestroySelf
trigger1 = AnimTime = 0

;-------------------------------------------
[Statedef 3003, explosion]
physics=N
velset=0,0
anim=99999
sprpriority=4

[State 7180, Assert]
type=assertspecial
trigger1= 1
flag=noshadow
ignorehitpause=1

[State 7180, flames]
type=explod
trigger1= 1
anim=1015
ID=1015
sprpriority=3
postype=p2
vel=-.2,-.75
pos= (enemynear,const(size.mid.pos.x)), ifelse((enemynear,statetype=L), 0, (enemynear,const(size.mid.pos.y) + 10))
random=40,40
scale=.5,.5
ownpal=1

[State 7180, Pos]
type=posadd
trigger1= 1
x=ceil(p2dist x)
y=ceil(p2dist y)

[State End]
type=destroyself
triggerall= numenemy
trigger1= enemynear,ctrl
trigger2= enemynear,movetype!=H || enemynear,stateno=5300
trigger3= enemynear,statetype=L && (enemynear,stateno!=[5080,5081])

[State End]
type=destroyself
trigger1= !numenemy || time>=120

;Bedazzled (Aerial)
[StateDef 3050]
type    = A
physics = N
ctrl = 0
anim = 3050
velset = 0,0

[State 200, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = Time = 0
value = 21, 2
channel = 2


[State 3000, superpause]
type = SuperPause
trigger1 = time = 6
time = 60
sound = S10,1
pos = 50,-95
darken = 1
poweradd = -1000

;-------------------
;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------



[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 6
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
triggerall = !Var(29)
triggerall = !numhelper(40005)
triggerall = !numhelper(40003)
trigger1 = time = 6
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
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 6
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

; end DCvM stuff
;-------------------

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S9,1

;Body Effect
[State 0, Explod]
type = Explod
trigger1 = time = 8
trigger2 = time = 24
trigger3 = time = 40
trigger4 = time = 56
trigger5 = time = 72
anim = 1022
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 5
scale = 1,1
sprpriority = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ontop = 1

;flash
[State 0, AllPalFX]
type = AllPalFX
trigger1 = animelem = 3
trigger2 = animelem = 7
trigger3 = animelem = 11
trigger4 = animelem = 15
trigger5 = animelem = 19
time = 1
add = 255,255,255


[State 13016, 2]
type = Helper
trigger1 = animelem = 3 || animelem = 6 || animelem = 10 || animelem = 14 
helpertype = normal
name = "3001"
ID = 3001
pos = 55,-95
postype = p1
stateno = 3012
size.xscale = 1
size.yscale = 0.25


[State 13016, 3]
type = Helper
trigger1 = animelem = 18 
helpertype = normal
name = "3001"
ID = 3001
pos = 55,-95
postype = p1
stateno = 3013
size.xscale = 1
size.yscale = 0.25


;projectile
;[State 0, Projectile]
;type = Projectile
;trigger1 = time = 15
;trigger2 = time = 25
;trigger3 = time = 35
;trigger4 = time = 45
;trigger5 = time = 55
;projanim = 1012
;projhitanim = 1013
;projremanim = 1012
;projcancelanim = 1012
;projscale = 1,1
;projremove = 1
;projremovetime = -1
;velocity = 9,0
;remvelocity = 0,0
;accel = 0,0
;velmul = 1
;projhits = 1
;projmiss
;projpriority = 1
;projsprpriority = 3
;projedgebound = 40
;projstagebound = 40
;projheightbound = -240
;attr = S, SP
;damage = 40,3
;hitsound = S13,0
;sparkno = -1
;sparkxy = 0,0
;animtype = Medium
;guardflag = MA
;pausetime = 0,9
;ground.type = Low
;ground.slidetime = 14
;ground.hittime  = 16
;ground.velocity = -8
;offset = 10,-75
;postype = p1         ;p2,front,back,left,right
;envshake.time = 7
;envshake.freq = 80
;envshake.ampl = -5
;envshake.phase = 90
;supermove
;pausemove

;projectile
;[State 0, Projectile]
;type = Projectile
;trigger1 = time = 65
;projanim = 1012
;projhitanim = 1013
;projremanim = 1012
;projcancelanim = 1012
;projscale = 1,1
;projremove = 1
;projremovetime = -1
;velocity = 9,0
;remvelocity = 0,0
;accel = 0,0
;velmul = 1
;projhits = 1
;projmiss
;projpriority = 1
;;projsprpriority = 3
;;projedgebound = 40
;projstagebound = 40
;projheightbound = -240
;attr = S, SP
;;damage = 45,3
;hitsound = S13,0
;sparkno = -1
;;sparkxy = 0,0
;animtype = Medium
;;;guardflag = MA
;pausetime = 0,9
;ground.type = Low
;ground.slidetime = 14
;ground.hittime  = 16
;ground.velocity = -8
;;offset = 10,-75
;postype = p1         ;p2,front,back,left,right
;envshake.time = 7
;envshake.freq = 80
;envshake.ampl = -5
;envshake.phase = 90
;supermove
;pausemove
;fall = 1


[State 3110, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;Aerial Ray Helper---------------------------------------------------------

[Statedef 3012, Ray aerial helper]
type    = U
movetype= A
physics = N
velset = 0,0
anim = 15000
sprpriority = 5

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 20
pos = 55,-95

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,1000

[State 1001]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 3002
time = -1
ignorehitpause = 1

[State 200, beam]
type = HitDef
trigger1 = time = 0
attr = S, HP
damage = 50,2
animtype = diagup
hitflag = MAF
guardflag = MA
getpower=0,0
priority = 5, Hit
pausetime = 3,3
hitsound   = S2,2
sparkno = S1138
sparkxy = 0,0
guardsound = S3,0
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
air.hittime  = 30
ground.velocity = -2
guard.velocity = -2
air.velocity = -2,-2
airguard.velocity = -2,-2
envshake.time = 3
envshake.freq = 50
envshake.ampl = -3
envshake.phase = 70
fall = 0
;fall.recover = 0
;fall.envshake.ampl = 6
;fall.envshake.time = 12
;sprpriority = 5
palfx.time = 12
palfx.add = 100,100,180
palfx.mul = 256,130,154
palfx.sinadd = -80,-80,-80,6
palfx.invertall = 0
palfx.color = 0
;p2stateno=4056

[State 1001, EnvColor]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
ignorehitpause = 1

[State 200, MoveHitReset]
type = MoveHitReset
trigger1 = MoveHit = 1
persistent = 1
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = movehit && numtarget && !numhelper(3003)
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal ;player
name = "fire"
ID = 3003
stateno = 3003
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
ignorehitpause=1



[State 1045, 7]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent, stateno !=3050


[Statedef 3013, Ray Aerial helper last]
type    = U
movetype= A
physics = N
velset = 0,0
anim = 15000
sprpriority = 5

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 20
pos = 55,-95

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,1000

[State 1001]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 3002
time = -1
ignorehitpause = 1

[State 200, beam]
type = HitDef
trigger1 = time = 0
attr = S, HP
damage = 60,2
animtype = diagup
hitflag = MAF
guardflag = MA
getpower=0,0
priority = 5, Hit
pausetime = 3,3
hitsound   = S2,2
sparkno = S1138
sparkxy = 0,0
guardsound = S3,0
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
air.hittime  = 30
ground.velocity = -8,1
guard.velocity = -8
air.velocity = -7,7
airguard.velocity = -2,0
envshake.time = 3
envshake.freq = 50
envshake.ampl = -3
envshake.phase = 70
fall = 1
;fall.recover = 0
;fall.envshake.ampl = 6
;fall.envshake.time = 12
;sprpriority = 5
palfx.time = 12
palfx.add = 100,100,180
palfx.mul = 256,130,154
palfx.sinadd = -80,-80,-80,6
palfx.invertall = 0
palfx.color = 0
;p2stateno=4056


[State 1001, EnvColor]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
ignorehitpause = 1

[State 200, MoveHitReset]
type = MoveHitReset
trigger1 = MoveHit = 1
persistent = 1
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = movehit && numtarget && !numhelper(3003)
trigger1 = !(target, time) && (target, movetype = H)
helpertype = normal ;player
name = "fire"
ID = 3003
stateno = 3003
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
ignorehitpause=1



[State 1045, 7]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent, stateno !=3050

;---------------------------------------------------------
;Dazzling Rage (melee combo)
; Hyper 1 --Melee
[StateDef 3100]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3100
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem= 1
value = 21,4
channel=0

[State 3000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
ID = 918
pos = 0,0
postype = p1
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = 3
ownpal = 1


[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 3
time = 60
sound = S10,1
pos = -28,-55
darken = 1
poweradd = -2000

;-------------------
[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = animelem = 3
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
triggerall = !Var(29)
triggerall = !numhelper(40005)
triggerall = !numhelper(40003)
trigger1 = animelem = 3
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
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = animelem = 3
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

; end DCvM stuff
;-------------------

;-------------------
[State 0, VelSet]
type = VelSet
trigger1 = animelem = 5
trigger2 = animelem = 6
x = 15
y = 0

[State 0, AfterImage]
type = AfterImage
trigger1 = animelem = 3
time = 49
length = 20
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 10,10,25
palmul = .65,.65,.75
timegap = 1
framegap = 4
;persistent =

[State 3200, SprPriority]
type = SprPriority
trigger1 = AnimElem = 3
value = 4

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
damage = 60,10
guardflag = MA
pausetime = 10,8
hitsound = S2,2
guardsound = S3,0
priority = 4,hit
sparkno = S9992
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 30
ground.hittime  = 70
guard.velocity = -5
air.velocity = 0,4
kill = 0


[State 0, ChangeState]
type = ChangeState
trigger1 = movehit
value = 3101
ctrl = 0
;anim =
;ignorehitpause =
;persistent =

[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 3102
ctrl = 1

;melee combo state
[StateDef 3101]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 3101
velset = 0,0

[State 3013, blind]
type = targetbind
trigger1 = time = 0
pos = 30, 0


[State 0, AfterImage]
type = AfterImage
trigger1 = time = 1
time = 535
length = 20
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 120,120,220
palpostbright = 0,0,0
paladd = 10,10,25
palmul = .65,.65,.75
timegap = 1
framegap = 4
;persistent =


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem= 2
trigger2 = animelem= 8
trigger3 = animelem= 14
trigger4 = animelem= 19
trigger5 = animelem= 24
trigger6 = animelem= 28
trigger7 = animelem= 36
trigger8 = animelem= 38
trigger9 = animelem= 42
trigger10 = animelem= 44
trigger11= animelem= 48
trigger12 = animelem= 50
trigger13= animelem= 54 
trigger14 = animelem= 56 
value = 0,0
channel=-1

[State 0, PlaySnd voice]
type = PlaySnd
triggerall = random<=400
trigger1 = animelem= 4
trigger2 = animelem= 9
trigger3 = animelem= 14
trigger4 = animelem= 18
trigger5 = animelem= 22
trigger6 = animelem= 25
trigger7 = animelem= 30
trigger8 = animelem= 35
trigger9 = animelem= 39
trigger10 = animelem= 43
trigger11= animelem= 48
trigger12 = animelem= 53
trigger13= animelem= 55
trigger14 = animelem= 60
trigger15 = animelem= 65
trigger16 = animelem= 68
trigger17 = animelem= 71
trigger18= animelem= 74
trigger19 = animelem= 77
trigger20= animelem= 80
trigger21= animelem=83
trigger22= animelem=88
trigger23= animelem=92
trigger24= animelem=95
trigger25= animelem=98
trigger26= animelem=100
trigger27= animelem=102
trigger28= animelem=105
trigger29= animelem=108
trigger30= animelem=111
trigger31= animelem=114
trigger32= animelem=117
trigger33= animelem=120
trigger34= animelem=122
trigger35= animelem=124
trigger36= animelem=126
trigger37= animelem=128
trigger38= animelem=130
value = 19,0 + (random%2)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 166
value = 0,2

;(pre final hit voice), PROVISORIA
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 132
value = 21,2
channel = 0

;(final hit voice) PROVISORIA
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 166
value = 19,4

[State 0, VelSet]
type = VelSet
trigger1 = animelem= 2
x = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem= 89
x = 0

;(ruido hyperball) 
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 135
value = 10,0


;(final hit boom effect)
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 166
value = 9,1

;power charge
[State 0, Explod]
type = Explod
trigger1 = animelem = 135
anim = 3104
pos = 0,-70
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 64
supermove
pausemove
scale = .5,.5
sprpriority = 1
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0


;Body Effect
[State 0, Explod]
type = Explod
trigger1 = animelem = 166
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


;altos
[State 4001, HitDef]
type = HitDef
trigger1 = animelem= 4
trigger2 = animelem= 14
trigger3 = animelem= 25
trigger4 = animelem= 35
trigger5 = animelem= 39
trigger6 = animelem= 43
trigger7 = animelem= 53
trigger8 = animelem= 55
trigger9 = animelem= 68
trigger10 = animelem= 74
trigger11 = animelem= 77 
trigger12 = animelem=83
trigger13 = animelem= 88 
trigger14 = animelem=92 
trigger15 = animelem=98 
trigger16 = animelem=100 
trigger17 = animelem=105
trigger18 = animelem= 111
trigger19 = animelem= 117
trigger20 = animelem= 122
trigger21 = animelem= 126
attr = S, HA
damage = 20,1
guardflag = MA
pausetime = 1,1
hitsound = s2,1
guardsound = S3,0
priority = 4,hit
sparkno = S9990
sparkxy = -20,-90-floor(random/100)
animtype = Heavy
ground.type = high
ground.hittime  = 70
air.hittime  = 70
envshake.time = 7
envshake.freq = 80
envshake.ampl = -5
envshake.phase = 90
kill=0

[State 1001, EnvColor]
type = EnvColor
trigger1 = movehit
value = 255,255,255
ignorehitpause = 1


[State 200, MoveHitReset]
type = MoveHitReset
trigger1 = MoveHit = 1
persistent = 1
ignorehitpause = 1

;low
[State 4001, HitDef]
type = HitDef
trigger1 = animelem= 9
trigger2 = animelem= 18
trigger3 = animelem= 22
trigger4 = animelem= 30
trigger5= animelem= 48
trigger6 = animelem= 60
trigger7 = animelem= 65
trigger8 = animelem= 71
trigger9= animelem= 80
trigger10= animelem=95
trigger11= animelem=102
trigger12= animelem=105
trigger13= animelem=108
trigger14= animelem=114
trigger15= animelem=120
trigger16= animelem=124
trigger17= animelem=128
attr = S, HA
damage = 20,1
guardflag = MA
pausetime = 1,1
hitsound = S2,1
guardsound = S3,0
priority = 4,hit
sparkno = S9991
sparkxy = -20,-60-floor(random/100)
animtype = Heavy
ground.type = low
ground.hittime  = 70
air.hittime  = 70
envshake.time = 7
envshake.freq = 80
envshake.ampl = -5
envshake.phase = 90
kill=0

[State 1001, EnvColor]
type = EnvColor
trigger1 = movehit
value = 255,255,255
ignorehitpause = 1


[State 200, MoveHitReset]
type = MoveHitReset
trigger1 = MoveHit = 1
persistent = 1
ignorehitpause = 1




[State 4001, HitDef]
type = HitDef
trigger1 = animelem= 130
attr = S, HA
damage = 30,1
guardflag = MA
pausetime = 10,10
hitsound = S2,2
guardsound = 6,0
priority = 4,hit
sparkno = S9992
sparkxy = -20,-60-floor(random/100)
animtype = Heavy
ground.type = low
ground.slidetime = 0
ground.hittime  = 10
envshake.time = 7
envshake.freq = 80
envshake.ampl = -5
envshake.phase = 90
p2stateno = 5300
kill=0

[State 4001, HitDef]
type = HitDef
trigger1 = animelem= 166
attr = S, HA
damage = 240,5
guardflag = MA
pausetime = 20,20
hitsound = S13,1
guardsound = S3,0
priority = 4,hit
sparkno = S3103
sparkxy = -60,-60
animtype = Heavy
ground.type = low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15,-2
air.velocity = -10,-2
envshake.time = 20
envshake.freq = 80
envshake.ampl = -5
envshake.phase = 90
fall.envshake.time = 7
fall.envshake.freq = 80
fall.envshake.ampl = -5
fall.envshake.phase = 90
palfx.time = 40
palfx.add = 100,100,100
palfx.mul = 256,256,256
palfx.sinadd =  -80,-80,-80,10
fall = 1


[State 1001, EnvColor]
type = EnvColor
trigger1 = animelem = 166
value = 255,255,255
ignorehitpause = 1


[State 200, MoveHitReset]
type = MoveHitReset
trigger1 = MoveHit = 1
persistent = 1
ignorehitpause = 1



[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;melee fail
[StateDef 3102]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3102
velset = 0,0

[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;Classic X-Men Arcade Hyper
[StateDef 3500]
type    = S
physics = S
ctrl = 0
anim = 14503
velset = 0,0

[State 200, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = Time = 0
value = 21, 3
channel = 2

[State 3000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
ID = 918
pos = 0,0
postype = p1
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = 3
ownpal = 1

[State 3000, dust]
type = Explod
trigger1 = Time = 0
anim = 14505
ID = 14505
pos = -5,-70
postype = p1
bindtime = 999
removetime = 65
supermove = 60
pausemovetime = 60
sprpriority = 3
ownpal = 1
scale = .5,.5

[State 3000, dust]
type = Explod
trigger1 = animelem = 3
anim = 14506
ID = 14506
pos = 90,-110
vel = 9,5
postype = p1
bindtime = 1
removetime = 17
sprpriority = 3
ownpal = 1
persistent = 1
scale = .5,.5

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 60
sound = S10,0
pos = -9,-67
darken = 1
poweradd = -1000

;-------------------
[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = animelem = 2
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
triggerall = !Var(29)
triggerall = !numhelper(40005)
triggerall = !numhelper(40003)
trigger1 = animelem = 2
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
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = animelem = 2
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

; end DCvM stuff
;-------------------
;-------------------

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S13,1




[State 3110, Helper]
type = Helper
trigger1 = animelem = 5
ID = 3501
postype = p1  
facing = 1 
stateno = 3501
pos = 230,40
size.yscale = 1.3
size.xscale = 1.3
ownpal = 1
persistent = 0


[State 3110, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;powerball helper
[StateDef 3501]
type = S
movetype = A
physics = N
anim = 14504
ctrl = 0
sprpriority = 3

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1 
flag = noshadow


[State 1011, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S9,1

[State 1011, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10


[State 3010, hitdef]
type = HitDef
trigger1 = animelem = 1
trigger2 = animelem = 3
trigger3 = animelem = 5
trigger4 = animelem = 7
trigger5 = animelem = 9
trigger6 = animelem = 11
trigger7 = animelem = 13
attr = S,HA
hitflag = MAF
guardflag = MA
damage = 30,1
pausetime = 0,4
hitsound = S2,2
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-80
animtype = Heavy
ground.type = Low
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -2,0
kill = 0
guard.kill = 0
palfx.time = 50
palfx.add = 100,100,180
palfx.mul = 256,130,154
palfx.sinadd = -80,-80,-80,6
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0


[State 3010, hitdef]
type = HitDef
trigger1 = animelem = 15
attr = S,HA
hitflag = MAF
guardflag = MA
damage = 30,5
pausetime = 4,4
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-80
animtype = Heavy
ground.type = Low
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = 3, -9
guard.velocity = -5
air.velocity = 3,-8
kill = 1
fall = 1
palfx.time = 50
palfx.add = 100,100,180
palfx.mul = 256,130,154
palfx.sinadd = -80,-80,-80,6
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

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


[State 3115, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno !=3500
trigger2 = time = 75

;--------------------
;Holograms Hyper
[Statedef 4000]
type    = S
movetype= A
physics = S
VelSet = 0,0
Anim = 4000
poweradd= -3000
ctrl = 0

;[State 3050, scenario light]
;type = envcolor
;trigger1 = AnimElem = 1
;value = 0,0,0
;time = 39
;under = 1

[State 3000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
ID = 918
pos = 0,0
postype = p1
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = 3
ownpal = 1

[State 200, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = Time = 0
value = 21, 5
channel = 2


[State 3000, superpause]
type = SuperPause
trigger1 = time = 0
time = 60
sound = S10,1
pos = 0,-70
darken = 1
poweradd = -3000

;-------------------
;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------



[State -2, Helper]
type = Helper
triggerall = !Var(29)
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
triggerall = !Var(29)
triggerall = !numhelper(40005)
triggerall = !numhelper(40003)
trigger1 = time = 0
helpertype = normal
name = "H.Port"
ID = 40005
stateno = 40005
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
triggerall = !Var(29)
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

; end DCvM stuff
;-------------------


[State 1000,1]
type = HitOverride
trigger1 = time = 0
attr = SC,AA
slot = 1
stateno = 4001
time = 77


[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;success reversal
[Statedef 4001]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 4001
sprpriority = 9999
facep2 = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn




[State 10191, PlaySnd2];dark effect
type = PlaySnd
trigger1 = !time
value = S21,8
channel = 3


[State 200, ‰¹‚ð–Â‚ç‚·]
type = PlaySnd
trigger1 = Time = 0
value = 21, 6
channel = 2


;[State 1000,]
;type = PlaySnd
;trigger1 = animelem = 37
;value = s3400,10

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 37
time = 113
freq = 60
ampl = -2
phase = 90

[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40006)
trigger1 = time = 0
helpertype = normal
name = "HSDM"
ID = 40006
stateno = 40006
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State 191, Explod]
type = Explod
trigger1 = Time = 584
anim = 1944
pos = -15,-10
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 16
scale = 1,1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 1
ontop = 1

[State 191, Explod]
type = Explod
trigger1 = Time = 1199
anim = 1944
pos = -15,-10
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 16
supermovetime = 9999
pausemovetime = 9999
scale = 1,1
sprpriority = 1
ontop = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 584
trigger2 = time = 1199
value = 13,2
channel = 1

;(ruido prepower) 
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 630
value = 10,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 650
value = 21,7



[State 0, PosSet] ;(provisorio)
type = PosSet
trigger1 = animelem = 16
x = 0
y = 0
;ignorehitpause = 
;persistent = 


[State 4001, dazzla title]
type = Explod
trigger1 = Time = 15
anim = 4020
ID = 4020
pos = 150,130
postype = left
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 70
supermove = 70
pausemovetime = 70
sprpriority = 3
ownpal = 1
ontop = 1

[State 4001, jem title]
type = Explod
trigger1 = time = 25
anim = 4021
ID = 4021
pos = 150,210
postype = left
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 70
supermove = 70
pausemovetime = 70
sprpriority = 3
ownpal = 1
ontop = 1



[State 0, hits]
type = Helper
trigger1 = time = 780
helpertype = normal ;player
name = "hits"
ID = 4030
stateno = 4030
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1
persistent = 1



[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
;ignorehitpause = 
;persistent = 

;power charge
[State 0, Explod Aja]
type = Explod
trigger1 = time = 630
anim = 3104
pos = 80,120
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 57
supermovetime =9999
pausemovetime = 9999
scale = .5,.5
sprpriority = 1
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0


;power charge
[State 0, Explod Dazzler]
type = Explod
trigger1 = time = 630
anim = 3104
pos = 0,-70
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 57
supermovetime =9999
pausemovetime = 9999
scale = .5,.5
sprpriority = 1
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

;power charge
[State 0, Explod Shana]
type = Explod
trigger1 = time = 630
anim = 3104
pos = 280,120
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 57
supermovetime =9999
pausemovetime = 9999
scale = .5,.5
sprpriority = 1
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

;power charge
[State 0, Explod Kimber]
type = Explod
trigger1 = time = 630
anim = 3104
pos = 30,120
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 57
supermovetime =9999
pausemovetime = 9999
scale = .5,.5
sprpriority = 1
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

;power charge
[State 0, Explod Jem]
type = Explod
trigger1 = time = 630
anim = 3104
pos = 220,120
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 57
supermovetime =9999
pausemovetime = 9999
scale = .5,.5
sprpriority = 1
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0


;end hologram
[State 0, Explod Aja]
type = Explod
trigger1 = time = 1180
anim = 4022
pos = 80,130
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 28
supermovetime =9999
pausemovetime = 9999
sprpriority = 1
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

;end hologram
[State 0, Explod Shana]
type = Explod
trigger1 = time = 1180
anim = 4022
pos = 280,130
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 28
supermovetime =9999
pausemovetime = 9999
sprpriority = 1
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

;end hologram
[State 0, Explod Kimber]
type = Explod
trigger1 = time = 1180
anim = 4022
pos = 30,130
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 28
supermovetime =9999
pausemovetime = 9999
sprpriority = 1
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

;End hologram
[State 0, Explod Jem]
type = Explod
trigger1 = time = 1180
anim = 4022
pos = 220,130
postype = left
facing = 1
vfacing = 1
bindtime = -1
removetime = 28
supermovetime =9999
pausemovetime = 9999
sprpriority = 1
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

;holograms dissapear
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1180
value = 20,2

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 10
time = 770
moveTime = 770
p2DefMul = 1
unHittable = 0
anim = -1
sound = S0,99999
darken = 0
poweradd = 0

;[State 0, StateTypeSet]
;type = StateTypeSet
;trigger1 = time = 261
;statetype = A       ;S,A,C,L
;movetype = I        ;I,A,H
;physics = A         ;A,C,S,N
;ignorehitpause = 
;persistent = 

[State -2, Hyper Explosion]
type = Helper
trigger1 =  time = 770
helpertype = Normal
name = "Hyper Explosion"
ID = 4050
stateno = 4050
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause=1
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 770
value = 9,1

[State 4001, hyperbeam]
type = Explod
trigger1 = time = 770
anim = 4023
ID = 4023
pos = 0,0
postype = left
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 36
supermovetime = 9999
pausemovetime = 9999
sprpriority = 3
ownpal = 1
ontop = 1

[State 0, Dazzler aparición]
type = Explod
trigger1 = time = 584
anim = 4022
pos = 0,-60
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 28
supermovetime =9999
pausemovetime = 9999
sprpriority = 1
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

;flash
[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 588
trigger2 = time = 780
time = 1
add = 255,255,255

[State 1080,aja]
type = helper
trigger1 = time = 180
helpertype = normal
name = "Aja"
id = 4010
pos = 80,0
postype = left
supermovetime = 999999999999
pausemovetime = 999999999999
stateno = 4010
ownpal = 1

;[State 0, PalFXWiz]
;type = PalFX
;trigger1 = time = 770
;time = 410
;add = 50,-50,-5
;mul = 256,256,256
;sinadd = 30,30,25,7
;invertall = 0
;color = 0


[State 1080,Shana]
type = helper
trigger1 = time = 300
helpertype = normal
name = "Shana"
id = 4012
pos = 280,0
postype = left
supermovetime = 999999999999
pausemovetime = 999999999999
stateno = 4012
ownpal = 1

[State 1080,Kimber]
type = helper
trigger1 = time = 400
helpertype = normal
name = "Kimber"
id = 4014
pos = 30,0
postype = left
supermovetime = 999999999999
pausemovetime = 999999999999
stateno = 4014
ownpal = 1

[State 1080,Jem]
type = helper
trigger1 = time = 500
helpertype = normal
name = "Jem"
id = 4016
pos = 220,0
postype = left
supermovetime = 999999999999
pausemovetime = 999999999999
stateno = 4016
ownpal = 1

[State 200, sound]
type = PlaySnd
trigger1 = Time = 0
value = 3400,13

[State 3000, back to normal]
type = ChangeState
trigger1 = time = 1200
value = 4002
ctrl = 0

[Statedef 4002, back to normal]
type    = S
physics = S
velset = 0,0
ctrl = 0
anim = 4002
sprpriority = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn 


;flash
[State 0, AllPalFX]
type = AllPalFX
trigger1 = animelem = 10
time = 1
add = 255,255,255

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 13
value = 16,2

[State 3000, back to normal]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
 
;JEM AND THE HOLOGRAMS HELPERS

[Statedef 4010, Aja]
type    = S
movetype= A
velset = 0,0
ctrl = 0				;Physics: S-stand, C-crouch, A-air
sprpriority = 2
anim = 4005

[State 1000, appear]
type = PlaySnd
trigger1 = animelem = 1
value = 20,2

;aparición
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 4022
pos = 0,-60
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 28
supermovetime =9999
pausemovetime = 9999
sprpriority = 1
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

;[State 1000,]
;type = PlaySnd
;trigger1 = time = 25
;value = 3420,0 + (random%2)

;[State 1000, guitar]
;type = PlaySnd
;trigger1 = animelem = 7
;value = 22,4



;[State 1000,]
;type = PlaySnd
;trigger1 = time = 1
;value = 3420,10
;channel = 0

;flash
[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 10
time = 1
add = 255,255,255

[State 1091, 2 changestate]
type = changestate
trigger1 = time = 1000
value = 4011

[Statedef 4011, Aja dissapears]
type    = S
movetype= A
velset = 0,0
ctrl = 0				;Physics: S-stand, C-crouch, A-air
sprpriority = 2
anim = 4015

[State 0, DestroySelf]
type = DestroySelf 
trigger1 = parent, stateno !=4001
trigger2 = animtime = 0

;--------------------------------------------------------------------------------

[Statedef 4012, Shana]
type    = S
movetype= A
velset = 0,0
ctrl = 0				;Physics: S-stand, C-crouch, A-air
sprpriority = 2
anim = 4007

[State 1000, appear]
type = PlaySnd
trigger1 = animelem = 1
value = 20,2

;aparición
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 4022
pos = 0,-60
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 28
supermovetime =9999
pausemovetime = 9999
sprpriority = 1
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

;[State 1000,]
;type = PlaySnd
;trigger1 = time = 25
;value = 3420,0 + (random%2)

;[State 1000, guitar]
;type = PlaySnd
;trigger1 = animelem = 7
;value = 22,4



;[State 1000,]
;type = PlaySnd
;trigger1 = time = 1
;value = 3420,10
;channel = 0

;flash
[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 10
time = 1
add = 255,255,255

[State 1091, 2 changestate]
type = changestate
trigger1 = time = 880
value = 4013

[Statedef 4013, Shana dissapears]
type    = S
movetype= A
velset = 0,0
ctrl = 0				;Physics: S-stand, C-crouch, A-air
sprpriority = 2
anim = 4017

[State 0, DestroySelf]
type = DestroySelf 
trigger1 = parent, stateno !=4001
trigger2 = animtime = 0


[Statedef 4014,Kimber]
type    = S
movetype= A
velset = 0,0
ctrl = 0				;Physics: S-stand, C-crouch, A-air
sprpriority = 2
anim = 4006

[State 1000, appear]
type = PlaySnd
trigger1 = animelem = 1
value = 20,2

;aparición
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 4022
pos = 0,-60
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 28
supermovetime =9999
pausemovetime = 9999
sprpriority = 1
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

;[State 1000,]
;type = PlaySnd
;trigger1 = time = 25
;value = 3420,0 + (random%2)

;[State 1000, guitar]
;type = PlaySnd
;trigger1 = animelem = 7
;value = 22,4



;[State 1000,]
;type = PlaySnd
;trigger1 = time = 1
;value = 3420,10
;channel = 0

;flash
[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 10
time = 1
add = 255,255,255

[State 1091, 2 changestate]
type = changestate
trigger1 = time = 780
value = 4015

[Statedef 4015, Kimber dissapears]
type    = S
movetype= A
velset = 0,0
ctrl = 0				;Physics: S-stand, C-crouch, A-air
sprpriority = 2
anim = 4016

[State 0, DestroySelf]
type = DestroySelf 
trigger1 = parent, stateno !=4001
trigger2 = animtime = 0

[Statedef 4016,Jem]
type    = S
movetype= A
velset = 0,0
ctrl = 0				;Physics: S-stand, C-crouch, A-air
sprpriority = 2
anim = 4008

[State 1000, appear]
type = PlaySnd
trigger1 = animelem = 1
value = 20,2

;aparición
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 4022
pos = 0,-60
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 28
supermovetime =9999
pausemovetime = 9999
sprpriority = 1
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

;[State 1000,]
;type = PlaySnd
;trigger1 = time = 25
;value = 3420,0 + (random%2)

;[State 1000, guitar]
;type = PlaySnd
;trigger1 = animelem = 7
;value = 22,4



;[State 1000,]
;type = PlaySnd
;trigger1 = time = 1
;value = 3420,10
;channel = 0

;flash
[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 10
time = 1
add = 255,255,255

[State 1091, 2 changestate]
type = changestate
trigger1 = time = 680
value = 4017

[Statedef 4017, Jem dissapears]
type    = S
movetype= A
velset = 0,0
ctrl = 0				;Physics: S-stand, C-crouch, A-air
sprpriority = 2
anim = 4018

[State 0, DestroySelf]
type = DestroySelf 
trigger1 = parent, stateno !=4001
trigger2 = animtime = 0


;hits
[StateDef 4030]
type = S
movetype = A
physics = N
anim = 4024
ctrl = 0
sprpriority = 9999

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1 
flag = noshadow

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = unguardable

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
;ignorehitpause = 
;persistent = 




[State 3010, hitdef]
type = HitDef
trigger1 = animelem = 1
trigger2 = animelem = 3
trigger3 = animelem = 5
trigger4 = animelem = 7
trigger5 = animelem = 9
trigger6 = animelem = 11
trigger7 = animelem = 13
trigger8 = animelem = 15
trigger9 = animelem = 17
trigger10 = animelem = 19
trigger11 = animelem = 21
trigger12 = animelem = 23
trigger13 = animelem = 25
trigger14 = animelem = 27
trigger15 = animelem = 29
trigger16 = animelem = 31
trigger17 = animelem = 33
trigger18 = animelem = 35
trigger19 = animelem = 37
trigger20 = animelem = 39
trigger21 = animelem = 41
trigger22 = animelem = 43
trigger23 = animelem = 45
trigger24 = animelem = 47
trigger25= animelem = 49
trigger26= animelem = 51
attr = S,HA
hitflag = MAF
damage = 18,1
pausetime = 5,5
hitsound = S1500,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-80
animtype = Heavy
ground.type = high
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = 0,-2
guard.velocity = -5
air.velocity = 0,-2
kill = 0
guard.kill = 0
palfx.time = 10
palfx.add = 100,100,100
palfx.mul = 256,256,256
palfx.sinadd =  -80,-80,-80,10
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 3010, hitdef]
type = HitDef
trigger1 = animelem = 53
attr = S,HA
hitflag = MAF
damage = 15,1
pausetime = 0,0
hitsound = S1500,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-80
animtype = Heavy
ground.type = Low
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -8,3
guard.velocity = -5
air.velocity = -8,3
kill = 1
fall = 1
guard.kill = 1
palfx.time = 50
palfx.add = 100,100,100
palfx.mul = 256,256,256
palfx.sinadd =  -80,-80,-80,10
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 1001, EnvColor]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
ignorehitpause = 1

[State 200, MoveHitReset]
type = MoveHitReset
trigger1 = MoveHit = 1
persistent = 1
ignorehitpause = 1

[State 3115, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno !=4001
trigger2 = time = 400


;-------------------------------------------------------------------------------
[Statedef 4050, Power explosion]
type = S
movetype = I
physics = N
anim = 99999 ;Invisible anim.

;[State 0, AssertSpecial]
;type = AssertSpecial
;trigger1 = 1
;flag = nobardisplay


[State 8400: EnvColor]
type = EnvColor
trigger1 = time < 60
value = 0,0,0
time = 1
under = 1

[State 8400: EnvShake]
type = EnvShake
trigger1 = (!Time)
time = 12
freq = 120
ampl = -3
phase = 90

[State 3315, 15]
type = Explod
trigger1 = !Time
ID = 8400
anim = 4010
postype = Back
pos = 160,120
sprpriority = -10
ignorehitpause = 1
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
removetime = 470
ownpal =1


[State 3315, 15]
type = Explod
trigger1 = !Time
ID = 8400
anim = 4011
postype = Back
pos = 160,120
sprpriority = -10
ignorehitpause = 1
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
removetime = 470
ownpal =1


[State 0, PalFXWiz]
type = PalFX
trigger1 = Time = 60
time = 470
add = 0,0,0
mul = 256,256,256
sinadd = -255,-255,-255,240
invertall = 0
color = 256

[State 0, DestroySelf]
type = DestroySelf 
trigger1 = parent, stateno !=4001
trigger2 = animtime = 0


;[State 3315, 16]
;type = PlaySnd
;trigger1 = (NumExplod(8400) != 0)
;value = s8700,0
;persistent = 0
;ignorehitpause = 1


;OLD BG FX for hypers (just in case)
; DCvM hyper portrait/BG
;[State 3000, superportrait]
;type = Explod
;trigger1 = AnimElem = 2
;anim = 10000
;ID = 10000
;pos = 0,0
;postype = back
;bindtime = 999
;removetime = 50
;supermovetime = 40
;pausemovetime = 40
;sprpriority = -1
;ownpal = 1

;hyper background
;[State 3000, portraitBG]
;type = Explod
;trigger1 = AnimElem = 2
;anim = 10005
;ID = 10005
;pos = 0,0
;postype = back
;bindtime = 999
;removetime = 70
;supermove = 40
;pausemovetime = 40
;sprpriority = -2
;ownpal = 1

;[State 3000, superBG]
;type = Helper
;trigger1 = AnimElem = 3
;name = "Super BG"
;ID = 8005
;stateno = 8005
;postype = back
;facing = 1
;ownpal = 1
;supermovetime = 999999
;pausemovetime = 999999
;ownpal = 1
; end DCvM stuff
