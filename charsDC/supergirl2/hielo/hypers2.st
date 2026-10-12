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
; Hyper 1 hyper ice storm
[StateDef 3200]
type = S
movetype = A
physics = S
anim = 3040    ;disparo del laser 
ctrl = 0
velset = 0,0

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S50,0
channel = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 40
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -1000

;-------------------
;  hyper portrait/BG
[State 888, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10000   ;foto del fondo del soldier
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1


[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 3
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999

; end DCvM stuff
;-------------------

[State 405, 6]
type = PlaySnd
trigger1 = Time = 5
value = 0,54

;[State 405, 6]
;type = PlaySnd
;trigger1 = Time = 9
;value = 0,54

[State 405, 6]
type = PlaySnd
trigger1 = Time = 14
value = 0,54


[State 9009, Wave]
type = Explod
trigger1 = Time = 15  ;35
anim = 31141
pos = 0,90
postype = p1
sprpriority = 2
supermove = 1
bindtime = 25
scale = 2,2

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 40,29
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 26,-92
velocity = 9,-2.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 10,2
trigger1 = Time >= 12   ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 26,-92
velocity = 10,-2
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 30,14
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 26,-92
velocity = 11,-1.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 25,10
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 26,-92
velocity = 12,-1
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 40,10
trigger1 = Time >= 12  ;35 
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 26,-92
velocity = 13,-0.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 20,19
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 26,-92
velocity = 13,0
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 30,19
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 26,-92
velocity = 13,0.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1     

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 30,5
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 26,-92
velocity = 12,1
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 40,10
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 26,-92
velocity = 11,1.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 20,19
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 26,-92
velocity = 10,2
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 25,9
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 26,-92
velocity = 9,2.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 20,9
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 26,-92
velocity = 8,0
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 20,19
trigger1 = Time >= 12  ;35 
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 26,-92
velocity = 15,3
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 20,9
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 26,-92
velocity = 13,-3
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 20,19
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 26,-92
velocity = 12,3.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3700, 2]
type = Projectile
trigger1 = TimeMod = 20,9
trigger1 = Time >= 12  ;35
projanim = 31143
projremanim = -1
projhitanim = 31024
projscale = 0.75,0.75
offset = 26,-92
velocity = 11,-3.5
;projremovetime = 30
projhits = 1
projpriority = 1
numhits = 1
attr = S, SA
damage   = 12,3
guardflag = MA
animtype = Heavy
pausetime = 0,9
sparkno = -1
sparkxy = -5,-10
hitsound   = S2,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -7
air.animtype = back
air.velocity = -3,-1
airguard.velocity = -0.5     
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 49,173,231 
Palfx.mul = 13,179,199
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 3200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------

;======================================================================
;Hyper chargin star

[StateDef 3300]
type = S
movetype = A
physics = S
anim = 1600    ;3040    
ctrl = 0
velset = 0,0

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S50,0
channel = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 40
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -1000

;-------------------
;  hyper portrait/BG
[State 888, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10000   ;foto del fondo del soldier
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1


[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 3
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999

; end DCvM stuff
;-------------------

[State 3300, PlaySnd];"Charging Star"
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 35,2
channel = 0

[State 3300, HitDef 1]
type = HitDef
trigger1 = (AnimElemTime(5) = 0)
attr = S, HA
damage = 30,5
getpower = 0
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 6,12
sparkno = S8015
guard.sparkno = S8021
sparkxy = 0,-40
hitsound = S20,1
guardsound = S20,4
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,-5
ground.cornerpush.veloff = 0
guard.velocity = -9
air.type = Low
air.velocity = -5,-5
down.bounce = 1
down.velocity = -4,-5


[State 3300, Special Move Dust]
type = Explod
anim = 918     ;8031 polvo del piso
trigger1 = Time = 1
postype = P1
pos = 10,2
ownpal = 1
sprpriority = 5

[State 3300, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3301     ;3201
ctrl = 0

[Statedef 3301]
type    = S
movetype= A
physics = N
juggle  = 1
ctrl = 0
sprpriority = 2

[State 3301, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (PrevStateNo != 3302)   ;3202)
value = 3301   ;3201

[State 3301, VelSet 1]
type = VelSet
trigger1 = Time = 0
x = 8

[State 3301, VelSet 2]
type = VelSet
trigger1 = PrevStateNo = 3301    ;3201
x = 6

[State 3301, Width]
type = Width
trigger1 = 1
value = 15,0

[State 3301, HitOverRide]
type = HitOverRide
trigger1 = (AnimTime < 0) && (Var(59) = 1)
attr = SCA, AA, AT, AP, NA, NT, NP, SA, ST, SP, HA, HT, HP
slot = 1
stateno = 3302    ;3202
time = 1

[State 3301, HitBy]
type = HitBy
trigger1 = (AnimTime < 0) && (Var(59) = 1)
value = SCA, NP, SP, HP
time = 1

[State 3301, DefenceMulSet]
type = DefenceMulSet
trigger1 = (AnimTime < 0) && (Var(59) = 1)
value = 0

[State 3301, Helper FX]
type = Helper
trigger1 = Time = 0
helpertype = Normal
name = "Hyper Charging Star FX"
ID = 8062
pos = 0,0
postype = P1
stateno = 3305     ;3205
ownpal = 1
ignorehitpause = 1

[State 3301, HitDef 1]
type = HitDef
triggerall = (P2StateNo != [5070,5071])
trigger1 = 1
attr = S, HA
damage = 40,5
getpower = 0
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 9,10
sparkno = S8015
guard.sparkno = S8021
sparkxy = -10,-65
hitsound = S20,1
guardsound = S20,4
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,-5
ground.cornerpush.veloff = 0
guard.velocity = -9
air.type = Low
air.velocity = -5,-5
fall = ifelse(Var(25) = 1, 1, 0)
fall.recover = 0
down.bounce = 1
down.velocity = -5,-5

[State 3301, ChangeState 1]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = Var(20) >= 31
value = 3303      ;3203
ctrl = 0

[State 3301, ChangeState 2]
type = ChangeState
trigger1 = MoveContact
value = 3310     ;3210
ctrl = 0

;---------------------------------------------------------------------------
; Hyper Charging Star (charging) HitOverRide

[Statedef 3302]
type    = S
movetype= A
physics = N
juggle  = 1
ctrl = 0
sprpriority = 1

[State 3302, AfterImageTime]
type = AfterImageTime
trigger1 = Time = 0
time = 200

[State 3302, AnimElem VarSet]
type = VarSet
trigger1 = Time <= 0
v = 26
value = AnimElemNo(0)

[State 3302, HitOverRide]
type = HitOverRide
trigger1 = (AnimTime < 0) && (Var(59) = 1)
attr = SCA, AA, AT, AP, NA, NT, NP, SA, ST, SP, HA, HT, HP
slot = 1
stateno = 3302   ;3202
time = 1

[State 3302, HitBy]
type = HitBy
trigger1 = (AnimTime < 0) && (Var(59) = 1)
value = SCA, NP, SP, HP
time = 1

[State 3302, DefenceMulSet]
type = DefenceMulSet
trigger1 = (AnimTime < 0) && (Var(59) = 1)
value = 0

[State 3302, VelSet]
type = VelSet
trigger1 = 1
x = 0.2

[State 3302, HitDef 1]
type = HitDef
triggerall = (P2StateNo != [5070,5071])
trigger1 = 1
attr = S, HA
damage = 40,5
getpower = 0
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 9,10
sparkno = S8015
guard.sparkno = S8021
sparkxy = -10,-65
hitsound = S20,1
guardsound = S20,4
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,-5
ground.cornerpush.veloff = 0
guard.velocity = -9
air.type = Low
air.velocity = -5,-5
fall = ifelse(Var(25) = 1, 1, 0)
fall.recover = 0
down.bounce = 1
down.velocity = -5,-5

[State 3302, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 3301   ;3201
elem = Var(26)

[State 3302, ChangeState 1]
type = ChangeState
trigger1 = (Time >= 10) || (Time >= floor(GetHitVar(HitTime)))
value = 3301   ;3201

[State 3302, ChangeState 2]
type = ChangeState
trigger1 = MoveContact
value = 3310    ;3210
ctrl = 0

;---------------------------------------------------------------------------
; Hyper Charging Star (end)

[Statedef 3303]
type    = S
movetype= A
physics = N
anim = 3302   ;3202 FIN DEL MOVIMIENTO
ctrl = 0
sprpriority = 2

[State 3303, AfterImageTime]
type = AfterImageTime
trigger1 = Time = 0
time = 1

[State 3303, VelSet End]
type = VelSet
trigger1 = AnimElemTime(2) = 0
x = 1.84

[State 3303, DefenceMulSet]
type = DefenceMulSet
trigger1 = Time = 0
value = 1

[State 3303, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hyper Charging Star FX Helper

[Statedef 3305]
type    = S
movetype= I
physics = N
ctrl = 0
sprpriority = 2

[State 3305, SprPriority 1]
type = SprPriority
trigger1 = parent, StateNo = 3301   ;3201
value = 3

[State 3305, SprPriority 2]
type = SprPriority
trigger1 = parent, StateNo = 3302   ;3202
value = 2

[State 3305, BindToParent]
type = BindToParent
trigger1 = 1
pos = 0,0

[State 3305, ChangeAnim 1]
type = ChangeAnim
trigger1 = (parent, Var(59) != 1) && (Anim != 8062)
value = 8062 ;<======== HYPER sin escudo
elem = AnimElemNo(0)

[State 3305, ChangeAnim 2]
type = ChangeAnim
trigger1 = (parent, Var(59) = 1) && (Anim != 8063)
value = 8063   ;<====== HYPER con escudo
elem = AnimElemNo(0)

[State 3305, ChangeState]
type = ChangeState
trigger1 = parent, StateNo = 3303  ;3203
value = 3306   ;3206

[State 3305, DestroySelf]
type = DestroySelf
trigger1 = (parent, StateNo != [3301,3303]) && (parent, StateNo != 3310)   ;[3201,3203]) && (parent, StateNo != 3210)

;---------------------------------------------------------------------------
; Hyper Charging Star FX Helper (end)

[Statedef 3306]
type    = S
movetype= I
physics = N
anim = 8064 ;<======= fin anim media esfera 
ctrl = 0
sprpriority = 3

[State 3306, BindToParent]
type = BindToParent
trigger1 = 1
pos = 0,0

[State 3306, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; Hyper Charging Star (charging - hit success)

[Statedef 3310]
type    = S
movetype= A
physics = N
juggle  = 5
anim = 3310    ;3210
ctrl = 0
sprpriority = 2

[State 3310, VelSet 1]
type = VelSet
trigger1 = 1
x = 8

[State 3310, Width]
type = Width
trigger1 = 1
value = 20,0

[State 3310, NotHitBy]
type = NotHitBy
trigger1 = Var(59) = 1
value = SCA
time = 1

[State 3310, VarSet]
type = VarSet
trigger1 = HitCount >= 7
v = 25
value = 1

[State 3310, HitDef 1]
type = HitDef
trigger1 = (Time%3 = 0) && (AnimElemTime(1) < 21)
attr = S, HA
damage = 30,5
getpower = 0
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 9,12
sparkno = S8015
guard.sparkno = S8021
sparkxy = -10,-65
hitsound = S20,1
guardsound = S20,4
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,-5
ground.cornerpush.veloff = 0
guard.velocity = -9
air.type = Low
air.velocity = -5,-5
fall = 0
fall.recover = 0
down.bounce = 1
down.velocity = -5,-5

[State 3310, HitDef 2]
type = HitDef
trigger1 = AnimElemTime(1) = 22
attr = S, HA
damage = 50,10
getpower = 0
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 4,5
sparkno = S8015
guard.sparkno = S8021
sparkxy = -10,-65
hitsound = S20,2
guardsound = S20,4
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8,-9
ground.cornerpush.veloff = 0
guard.velocity = -9
air.type = Low
air.velocity = -8,-8
fall = 1
fall.recover = 0
down.bounce = 1
down.velocity = -7,-7

[State 3310, Dummy Helper]
type = Helper
trigger1 = Time = 0
helpertype = Normal
name = "Hyper Charging Star Dummy"
ID = 3311    ;3211
pos = 0,0
postype = P1
stateno = 3311  ;3211
ownpal = 1
ignorehitpause = 1

[State 3310, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3303   ;3203
ctrl = 0

;---------------------------------------------------------------------------
; Hyper Charging Star Dummy Helper (hitoverride)

[Statedef 3311]
type    = S
movetype= A
physics = N
ctrl = 0
anim = 1430 ;<==========
sprpriority = -5

[State 3311, BindToParent]
type = BindToParent
trigger1 = 1
facing = 1
pos = 0,0
time = -1

[State 3311, HitOverRide]
type = HitOverRide
trigger1 = 1
attr = SCA, AA, AT, AP, NA, NT, NP, SA, ST, SP, HA, HT, HP
slot = 1
stateno = 3211
time = -1

[State 3311, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = 1

[State 3311, DestroySelf]
type = DestroySelf
trigger1 = (parent, StateNo != 3310)      ;3210)


;=====================================================================
;Hyper Justice
[Statedef 7700, Super Soldier] 
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
anim = 7800  ;=================combinacion de golpes de supersoldier
ctrl = 0
sprpriority = 2

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -1000


;-------------------
;  hyper portrait/BG
[State 888, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1


[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 3
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999

; end DCvM stuff
;-------------------

[State 7501, 1]
type = Pause
trigger1 = time = 15
time = 125
movetime = 125

[State 7501, 2]
type = Posset
trigger1 = Time = 0
y = -30
x = 30

[State 7501, 3]
type = Posset
trigger1 = Time = 28
y = -30
x = 10

[State 7501, 4]
type = Posset
trigger1 = Time = 54
y = -10
x = 10

[State 7501, 5]
type = Posset
trigger1 = Time = 82
y = -60
x = 0

[State 7501, 6]
type = Posset
trigger1 = Time = 112
y = -105
x = 0

[State 7501, 7]
type = TargetBind
Trigger1 = Time = 0
pos = 0,0
time = 12

[State 7501, 7]
type = TargetBind
Trigger1 = Time = 12
pos = -5,0
time = 5

[State 7501, 8]
type = TargetBind
Trigger1 = Time = 17
pos = -5,5
time = 5

[State 7501, 8]
type = TargetBind
Trigger1 = Time = 22
pos = -5,10
time = 5

[State 7501, 8]
type = TargetBind
Trigger1 = Time = 27
pos = -5,15
time = 5

[State 7501, 9]
type = TargetBind
Trigger1 = time = 28
pos = -5,0
time = 5

[State 7501, 10]
type = HitDef
trigger1 = time >= 20
trigger2 = time < 38
attr = S, HA
animtype  = Hard
damage    = 5
guardflag = MA
pausetime = 0,0
sparkxy = -10,-70
guardsound = 6,0
hitsound   = s0,29
ground.hittime  = 25
sparkno = 1
fall = 1

[State 405, 6]
type = PlaySnd
triggerall = movehit
trigger1 = time = 20
value = 0,79

[State 7501, 11]
type = TargetBind
Trigger1 = Animelem = 6
pos = -10,0
time = 5

[State 7501, 12]
type = TargetBind
Trigger1 = Animelem = 9
pos = -10,0
time = 5

[State 7501, 13]
type = HitDef
trigger1 = time >= 38
trigger2 = time < 65
attr = S, HA
animtype  = Hard
damage    = 5
guardflag = MA
pausetime = 0,0
sparkxy = -10,-70
guardsound = 6,0
hitsound   = s0,29
ground.hittime  = 95
sparkno = 3
p2facing = -1
fall = 1

[State 405, 6]
type = PlaySnd
triggerall = movehit
trigger1 = time = 38
value = 0,79

[State 7501, 14]
type = TargetBind
Trigger1 = Animelem = 10
pos = -10,0
time = 5

[State 7501, 15]
type = TargetBind
Trigger1 = Animelem = 13
pos = -10,0
time = 5

[State 7501,16]
type = HitDef
trigger1 = time >= 65
trigger1 = time < 92
attr = S, HA
animtype  = Hard
damage    = 5
guardflag = MA
pausetime = 0,0
sparkxy = -10,-70
hitsound   = 5,4
guardsound = 6,0
hitsound   = s0,29
sparkno = 3
ground.type = High
ground.slidetime = 20
ground.hittime  = 25
ground.velocity = -1, 0 
air.velocity = -1, 0
fall = 1

[State 405, 6]
type = PlaySnd
triggerall = movehit
trigger1 = time = 65
value = 0,79

[State 7501, 17]
type = TargetBind
Trigger1 = Animelem = 14
pos = -10,0
time = 5

[State 7501, 18]
type = TargetBind
Trigger1 = Animelem = 17
pos = -10,0
time = 5

[State 7501, 19]
type = HitDef
trigger1 = time >= 92
trigger2 = time < 138
attr = S, HA
animtype  = Hard
damage    = 5
guardflag = MA
pausetime = 0,0
sparkxy = -10,-70
guardsound = 6,0
hitsound   = s0,29
sparkno = s7520
ground.slidetime = 10
ground.hittime  = 15
fall = 1

[State 7501, 20]
type = TargetBind
Trigger1 = Animelem = 18
pos = 0,25
time = 5

[State 405, 6]
type = PlaySnd
triggerall = movehit
trigger1 = time = 92
value = 0,79

[State 7501, 21]
type = HitDef
trigger1 = AnimElem = 23
persistent = 0
attr = A, NA  
damage    = 250 
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 1, Hit
pausetime = 10,10
sparkno = s9996
sparkxy = -10,-70
hitsound   = s0,52
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 25
ground.velocity = 0,12
air.velocity = 0,11
P2state = 943
fall = 1

[State 188, Fire]
type = Explod
triggerall = time >=131
trigger1 = Movehit = 1
anim = 9996  ;================ animacion de fuego cuando se separan
random = 50, 50
pos = -10,-75
postype = p2
sprpriority = 5

[State 7501, 22]
type = SprPriority
trigger1 = animelem = 18
value = -2

[State 405, 6]
type = PlaySnd
trigger1 = time = 110
value = 0,83

[State 7501, 23]
type = superpause
trigger1 = animelem = 19
time = 40
movetime = 1
pos = 15, -127
sprpriority = 3
anim = S708
darken = 0

[State 7501, 24]
type = SuperPause
trigger1 = Animtime = 0
time = 29
anim = -1
pos = 0, 0

;[State 7501, 25]
;type = Explod
;trigger1 = animtime = 0
;anim = 1050  ;=================spark de fusion
;postype = p1
;pos = 10,-77
;sprpriority = 5
;supermovetime = 29
;scale = 0.1,2.75

;[State 7501, 26]
;type = PalFX
;trigger1 = animtime = 0
;time = 5
;add = 235, 235, 235
;ignorehitpause = 1

[State 7501, 27]
type = ChangeState
trigger1 = AnimTime = 0
value = 7718; 7518
ctrl = 1


;----------------------
;state p2 Hit
;----------------------
[Statedef 7510]
type    = A
movetype= H ;Get hit
physics = N
anim = 5050  ;================= animacion de golpeado
ctrl = 0

[State 7510, 1]
Type = AfterImage
Trigger1 = Time = 15 
time = 122
length = 17
palbright = 0, 0, 0
palcontrast = 256, 256, 256
palpostbright = 0, 0, 0
palmul = 0.8, 0.8, 0.8
trans = add

[State 7510, 2]
type = velset
trigger1 = time = 0
x = -1
y = -1

[State 7510, 3]
type = Changeanim2
sprpriority = -3
trigger1 = Time = 6
value = 3602

[State 7510, 4]
type = velset
trigger1 = time = 25
x = 0
y = 0

[State 7510, 6]
type = Changeanim2
sprpriority = -3
trigger1 = Time = 50
value = 3600

;==========================================================
;FIN
;==========================================================
[Statedef 7718]
type    = A
movetype= I
physics = N
velset = 0,0                     
ctrl = 0      
anim = 7713
ontop = 1

;[State 7718, 1]
;type = PalFX
;trigger1 = time = 0
;time = 10
;add = 235, 235, 235
;ignorehitpause = 1

[State 7718, 2]
type = velset
trigger1 = time = 0
x = -4
y = 1

[State 7718, 3]
type = velset
trigger1 = time = 4
x = -4
y = 2.5

[State 7718, 4]
type = velset
trigger1 = time = 9
x = 0
y = 5
time = 3 

[State 7718, 5]
type = velset
trigger1 = time = 12
x = 0
y = 6

[State 7718, 6]
type = ChangeState
trigger1 = pos y >= 0
value = 52

