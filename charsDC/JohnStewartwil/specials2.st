; States file for {character} -- Specials
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;   5: vida do escudo
;  10: AI naum repetir hyper
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Special Attacks
; ; Chains of Despair (D, DB, B + P) -- states 1500-1510
;   Immobilization move: chains appear and temporarily trap the opponent
;---------------------------------------------------------------------------

;-----------------------------------
; Chains of Despair
[StateDef 1007]
anim = 1007    ;1500
ctrl = 0
type   = S
MoveType= A
physics = S
velset = 0,0

; determine distance away from me to summon the chains
;[State 1500, varset]
;type = VarSet
;trigger1 = !Time
;v = 1
;value = IfElse(command = "chains", 180, IfElse(command = "chains", 180, 180))


[State 1500, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 171, 12  ;S9,10
;volume = 250
channel = 0

[State 1500, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,11
;volume = 250

[State 1500, ring spark]
type = Explod
trigger1 = AnimElem = 2
anim = 3004  ;700
id = 3004    ;700
pos = -2,-32
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 26
ontop = 1
removeongethit = 1

[State 1500, Helper1]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "chains"
ID = 1505
stateno = 1505
pos = var(1),-80
scale = 0.5,0.5
postype = p2
facing = 1

[State 1500, Helper2]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "chains"
ID = 1507
stateno = 1507
pos = var(1),-80
scale = 0.5,0.5
postype = p2
facing = 1

[State 1500, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 3
id = 700

[State 1500, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Chains of Despair - helper #1
[StateDef 1505]
anim = 1505
ctrl = 0
type    = S
MoveType= A
physics = S
sprpriority = -1

[State 1505, hitdef]
type = HitDef
trigger1 = !Time
attr = S,SA
hitflag = MAF
guardflag = MAF
animtype = Back
air.animtype = Medium
fall.animtype = Medium
damage = 25,3
guardflag = MA
pausetime = 10,12
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = 8
guard.velocity = -2
air.velocity = 4,8
kill = 0
guard.kill = 0
p2stateno = 1510

[State 1505, ChangeState]
type = ChangeState
trigger1 = !AnimTime
trigger2 = MoveHit && P2StateNo != 1510
value = 1506


; Chains of Despair - helper #1 fadeout
[StateDef 1506]
anim = 1506
ctrl = 0
type    = S
MoveType= A
physics = S
sprpriority = -1

[State 1506, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0


; Chains of Despair - helper #2
[StateDef 1507]
anim = 1507
ctrl = 0
type    = S
MoveType= A
physics = S
sprpriority = 3

[State 1507, hitdef]
type = HitDef
trigger1 = !Time
attr = S,SA
hitflag = MAF
guardflag = MAF
animtype = Back
air.animtype = Medium
fall.animtype = Medium
damage = 25,3
guardflag = MA
pausetime = 10,12
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = 8
guard.velocity = -2
air.velocity = 4,8
kill = 0
guard.kill = 0
p2stateno = 1510

[State 1507, ChangeState]
type = ChangeState
trigger1 = !AnimTime
trigger2 = MoveHit && P2StateNo != 1510
value = 1508


; Chains of Despair - helper #2 fadeout
[StateDef 1508]
anim = 1508
ctrl = 0
type    = S
MoveType= A
physics = S
sprpriority = 3

[State 1508, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0


; Chains of Despair, P2 custom hitstate
[StateDef 1510]
type    = U
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 1510, custom anim]
type = ChangeAnim2
trigger1 = !Time
value = 1510

[State 1510, unchained]
type = SelfState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===============================================================================
;------------------------------
; Battering Ram
[StateDef 1400]
type    = A    ;S
movetype = A
physics = N
ctrl = 0
anim = 1400

[State 1000, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 918
ID = 918
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
sprpriority = 3
removeongethit = 1

[State 1400, voice] 
type = PlaySnd
trigger1 = Time = 0
value = 9,10

[State 1400, sfx]
type = PlaySnd
trigger1 = AnimElem = 2
value = 9,11

[State 1400, velset]
type = VelSet
trigger1 = AnimElem = 2
x = 8

[State 1400, lines]
type = Explod
trigger1 = 1
anim = 113
ID = 113
removeongethit = 1
removetime = 60
vel = -10-ceil(random/20), 0
postype = p1
pos = -20, -80
random = 0,80
xscale = 0.5
yscale = 0.5
sprpriority = -3
bindtime = 1
ownpal = 1

[State 1400, spark]
type = Explod
trigger1 = AnimElem = 2
ID = 1420
anim = 1420
bindtime = -1
facing = 1
removetime = -1
sprpriority = 2    ;3
removeongethit = 1
;pos = 5, 23  ;20, 40

[State 1400, HitDef]
type = HitDef
trigger1 = Time % 4 = 0 ;6 = 0 ;
attr = S, SA
damage = 14    ;95
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-70
animtype = Heavy
ground.type = High    ;Hard
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -4, -1  ;-9,-10 ;
guard.velocity = -2
air.velocity = -4,-1      ;9,-15 ;
priority = 7,Hit          ;9,Hit ;
fall = 1

[State 1400, sparkBegone]
type = RemoveExplod
trigger1 = AnimElem = 3
ID = 1420

[State 1400, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------
; Battering Ram (air) 
[StateDef 1500]
type    = A
movetype = A
physics = N
ctrl = 0
anim = 1400

[State 1500, noGravity]
type = VelSet
trigger1 = 1
y = 0

[State 1500, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, NA, SA, HA, NP, SP, HP
slot = 0
stateno = 5000
time = 1
forceair = 1

[State 1500, voice]
type = PlaySnd
trigger1 = Time = 0
value = 9,10

[State 1500, sfx]
type = PlaySnd
trigger1 = AnimElem = 2
value = 9,32

[State 1500, velset]
type = VelSet
trigger1 = AnimElem = 2
x = 8

[State 1500, lines]
type = Explod
trigger1 = 1
anim = 113
ID = 113
removeongethit = 1
removetime = 60
vel = -10-ceil(random/20), 0
postype = p1
pos = -20, -80
random = 0,80
xscale = 0.5
yscale = 0.5
sprpriority = -3
bindtime = 1
ownpal = 1

[State 1400, spark]
type = Explod
trigger1 = AnimElem = 2
ID = 1410
anim = 1410
pos=30,60
bindtime = -1
facing = 1
removetime = -1
sprpriority = 3
removeongethit = 1

[State 1500, HitDef]
type = HitDef
trigger1 = Time % 4 = 0
attr = S, SA
damage = 15
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -4,-1
guard.velocity = -2
air.velocity = -4,-1
priority = 7,Hit

[State 1500, sparkBegone]
type = RemoveExplod
trigger1 = AnimElem = 3
ID = 1420

[State 1500, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;======================================================================
;------------------------------
;wall construct
[StateDef 2700]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 2700
poweradd = 60
sprpriority = 2

[State 1500, ring spark]
type = Explod
trigger1 = AnimElem = 2
anim = 3004  ;700
id = 3004    ;700
pos = 80,36
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 62
ontop = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = time=1
anim = 2701  ;2501
ID = 2701    ;2501
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 1,0
accel = 0,0
random = 0,0
removetime = 19
supermove
pausemove
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=1
value = 9,11

[State 0, Helper]
type = Helper
trigger1 = time=18
helpertype = normal ;player
name = "Wall_2"
ID = 2703        ;2503
stateno = 2703   ;2503
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0

[State 0, Helper]
type = Helper
trigger1 = time=18
helpertype = normal ;player
name = "Wall_1"
ID = 2702        ;2502
stateno = 2702   ;2502
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0


[State 2700, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0, 0
sparkno = 0
sparkxy = -10, -76
hitsound = 5, 3
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
p2stateno=-1
fall=1

[State 2700, end]
type = ChangeState
trigger1 = Time = 70
value = 0
ctrl = 1

[StateDef 2703]
type = S
movetype= A
physics = S
juggle  = 1
velset = -5,0
ctrl = 0
anim = 2702
poweradd = 60
sprpriority = 4

[State 0, PosAdd]
type = PosAdd
trigger1 =time=1
x = 150
y = 0

[State 0, VelAdd]
type = VelAdd
trigger1 =time=1
x = -5
y = 0

[State 0, VelAdd]
type = VelAdd
trigger1 =time=30
x = 0
y = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 =time=1
value = -1

[State 2700, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 35 ;10
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = 0
sparkxy = -10, -76
hitsound = 5, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall=1

[State 0, Explod]
type = Explod
trigger1 = timemod=10,2
anim = 2703  
ID = 2703    
pos = -10,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 30
sprpriority = 5

[State 0, Explod]
type = Explod
trigger1 = timemod=10,2
anim = 2703  
ID = 2703    
pos = -10,30
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 30
sprpriority = 5


[State 0, DestroySelf]
type = DestroySelf
trigger1 = time=30

[StateDef 2702]
type = S
movetype= A
physics = S
juggle  = 1
velset = 5,0
ctrl = 0
anim = 2702
poweradd = 60
sprpriority = 2

[State 0, Explod]
type = Explod
trigger1 = timemod=10,2
anim = 2703
ID = 2703
pos = 30,-30
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,1
accel = 0,0
random = 0,0
removetime = 30
sprpriority = 3

[State 0, VelAdd]
type = VelAdd
trigger1 =time=1
x = 5
y = 0

[State 0, VelAdd]
type = VelAdd
trigger1 =time=30
x = 0
y = 0

[State 2700, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 35 ;10
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = 0
sparkxy = -10, -76
hitsound = 5, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 4
airguard.velocity = 1.9,-.8
air.type = High
air.velocity = 1.4,-3
air.hittime = 12
numhits=3

[State 0, PlayerPush]
type = PlayerPush
trigger1 =time=1
value = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time=30

