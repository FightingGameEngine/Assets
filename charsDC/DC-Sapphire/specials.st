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
;   Beam
;
; Special 2 (QCB + P) -- state 1100
;   sphere
;
; Special 3 (QCF + K) -- state 1200
;   deadly schyte
;
; Special 4 (QCB + K) -- state 1400
;   
;
;
;---------------------------------------------------------------------------

;------------------------------
; Special 1
[StateDef 1000]
type = S
movetype = A
physics = S
anim = 225 
ctrl = 0
velset = 0,0

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,0
channel = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 225, fx]
type =explod
trigger1 = AnimElem = 3
anim = 223
postype = p1
pos = 104,-97
bindtime = 2
sprpriority = 2
removetime = 18
ownpal = 1
removeongethit = 1

[State 1000, beam]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "beam"
ID = 1010
stateno = 1010
bindtime = -1
postype = p1
pos = 110,-97 
ownpal = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------
; Special 1 -- beam helper state
[StateDef 1010]
type = A
movetype = A
physics = C
anim = 226
ctrl = 0

[State 1010, ontop]
type = SprPriority
trigger1 = 1
value = 2

;[State 1010, PosSet]
;type = PosSet
;trigger1 = 1
;x = parent, Pos X - (9 * parent, facing)
;y = parent, Pos Y - 85

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S9,1

[State 1010, hitdef]
type = HitDef
trigger1 = time = 0 
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Medium
air.animtype = Medium
fall.animtype = Medium
damage = 40,5
guardflag = MA
pausetime = 6,12
hitsound = S9,1
guardsound = S3,0
sparkno = 3 ; S9992
sparkxy = -10, 50 
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
kill = 1
guard.kill = 1
fall.kill = 1
palfx.time = 25
palfx.add = 64,0,0
air.fall= 1
fall = 1

[State 1010, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent, Anim != 225  


;---------
; Special 1 - end
[StateDef 1020]
type = S
movetype = A
physics = S
anim = 1020

[State 1020, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------
; Special 2
[StateDef 1100]
type = S
movetype = A
physics = S
anim = 222 
ctrl = 0
velset = 0,0

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,0
channel = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 225, fx]
type =explod
trigger1 = AnimElem = 3
anim = 223
postype = p1
pos = 70,-81 
bindtime = -1 ;2
sprpriority = 2
removetime = 18
ownpal = 1
removeongethit = 1

[State 1100, sphere]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "sphere"
ID = 1101
stateno = 1101
bindtime = -1
postype = p1
pos = 48,-155 ;-150  
ownpal = 1
size.xscale= 0.65
size.yscale= 0.65

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------
; Special 2 -- sphere helper state
[statedef 1101]
type = S
movetype = A
physics = N
ctrl = 0
anim = 224
velset = 5,0

[State 1102, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1102, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1102
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 1102, 5]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[state 1102, hit]
type = HitDef
trigger1 = animelem = 6 ;movecontact = 0 ;
attr = A, SP
hitflag = MAF
guardflag = MA
pausetime = 2, 9
damage = 100, 2
animtype = heavy    
hitsound = s2, 2    
sparkno= s9992      
sparkxy = -10, -60   
guardsound = S0, 12
ground.velocity = -8, -6
air.velocity = -2.5, -5.5 
ground.type = high
guard.slidetime = 18
guard.hittime = 26
guard.velocity = -12
sprpriority = 2
air.hittime = 20
air.fall = 1
fall.recover = 0
givepower = 50
getpower = 60
;envshake.time = 10
;envshake.freq = 180
;envshake.ampl = 2

[state 1102, destroy]
type = Destroyself
trigger1 = movecontact = 1 

[state 1102, destroy]
type = Destroyself
trigger1 = time = 70


;-----------------------------------------
; Special 3
[StateDef 1200]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 228
poweradd = 20

[State 228, fx]
type =explod
trigger1 = AnimElem = 3
anim = 223
postype = p1
pos = 75,-114
bindtime = 2
sprpriority = 2
removetime = 15
ownpal = 1
removeongethit = 1

[State 228, 1]
type = Projectile
trigger1 = AnimElem = 3
projanim = 229
projhitanim = 232
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
offset = 65,-113
velocity = 3
attr = S, SP
damage   = 90
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound   = 5,2
sparkxy = 500,500
guardsound = S6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0

[State 228, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------
; Special 4
[StateDef 1400]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1400 
poweradd = 20
sprpriority = 2

[State 1400, Helper]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "Sphere"
ID = 1410
stateno = 1410
pos = 160,-80
postype = p1
facing = 1

[State 1400, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Plasma Sphere - construct
[StateDef 1410]
type = S
movetype = A
physics = S
anim = 1410  ;esfera
ctrl = 0

[State 1410, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S9,31

[State 1410, HitDef]
type = HitDef
trigger1 = IsHelper
attr = S,ST
hitflag = MAF
guardflag = MA
animtype = hard
priority = 5,Hit
damage = 80,25
pausetime = 0,10
sparkno = S9992
sparkxy = 0,0
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slide = 14
ground.hit = 12
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
sprpriority = 3
p1stateno = 1420
p2stateno = 1430
kill = 1
guard.kill = 1
numhits = 1

[State 1410, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0


; Plasma Sphere - P1 throw action
[StateDef 1420]
anim = 1420   ; sacudida esfera
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0

[State 1420, 0]
type = PlaySnd
trigger1 = Time = 0
persistent = 0
value = S9,32

[State 1420, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 20,0  

[State 1420, targetdrop]
type = TargetDrop
trigger1 = AnimTime = -1

[State 1420, turn]
type = Turn
trigger1 = AnimTime = -1

[State 1420, destroySelf]
type = DestroySelf
trigger1 = AnimTime = 0


;-------------------------------------------
; Being grabbed (p2 custom hit state)
[StateDef 1430]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0

;Generated by Fighter Factory PalFX Editor
[State 1410, PalFXWiz]
type = PalFX
trigger1 = 1
time = 1
add = 0,128,0
mul = 256,256,256
sinadd = 0,64,0,32
invertall = 0
color = 256

[State 813, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1430

; drained
[State 813, LifeAdd]
type = LifeAdd
trigger1 = Time % 2
value = -2
kill = 1
absolute = 1

[State 813, 2] ; tossed
type = Null ;ChangeState
trigger1 = AnimTime = 0
value = 1440

[State 813, screenbound]  ; don't move the camera to follow P2
type = ScreenBound
trigger1 = Alive
movecamera = 0,0

[State 1440, 2] ;dropped
type = SelfState
trigger1 = AnimTime = 0
value = 5050


;-------------------------------------------
; Being thrown (p2 custom hit state)
[StateDef 1440]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 1440, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1440

[State 1440, 0]
type = PosSet
trigger1 = Time = 0
y = Pos Y - 10

[State 1440, turn around]
type = Turn
trigger1 = AnimTime = 0

[State 1440, lifeadd]
type = LifeAdd
trigger1 = Time = 0
value = -120
kill = 1

[State 1440, 2] ;dropped
type = SelfState
trigger1 = AnimTime = 0
value = 5050




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


