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
; Hyper 1 (QCF + PP) -- state 3500
;   hyper 1
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Soldier of Oa
[Statedef 3500]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3500
ctrl = 0
sprpriority = 2

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 15
value = 2

;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = animelem = 3
;value = 171,12 ;"beware of my power"


[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 3099
ID = 3099
pos = -3,-5
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 50
sprpriority = 5
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999

; voice
[State 3500, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
channel = 0

; hide lifebars
[State 3500, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3500, superpause]
type = SuperPause
trigger1 = AnimElem = 1 ;2
time = 60
sound = S10,1
darken = 1
poweradd = -1000
movetime = 60
anim = s1500
pos = 11, -128  ;15,-120

;-------------------
; DCvM hyper portrait/BG
[State 3500, superportrait]
type = Explod
trigger1 = AnimElem = 2
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 60
supermovetime = 60
pausemovetime = 60
sprpriority = -1
ownpal = 1

[State 3500, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 60
supermove = 60
pausemovetime = 60
sprpriority = -2
ownpal = 1

[State 3500, superBG]
type = Helper
trigger1 = AnimElem = 2
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------

;[State 3500, ]
;type = PlaySnd
;trigger1 = timemod = 10,0
;value = 173,8
;volume = 5
;channel = 2

[State 3505, followP2]
type = ScreenBound
trigger1 = 1
value = 0

; Bunker creation SND
[State 3500, PlaySnd]
type = PlaySnd
trigger1 = Time = 1 ;0
value = 174,0   ;S10,11
channel = -1

[State 3500, Explod]
type = Explod
trigger1 = Time = 0
anim = 3501    ;=============================== aparece el bunker
ID = 3501
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 200
vel = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 5
ontop = 1
removeongethit = 1

[State 3505, superpause]
type = SuperPause
trigger1 = Time = 21
time = 40
;sound = S10,1
pos = 13,-125   ;20, -70
darken = 1
poweradd = -1000

; "Homing Missles!"
[State 3505, PlaySnd]
type = PlaySnd
trigger1 = Time = 26 ;22
value = 174,1  ;S10,12
channel = 1

; missle SND
[State 3505, PlaySnd]
type = PlaySnd
trigger1 = (Time >= 28) && TimeMod = 10,0
value = 174,2  ;S10,13

[State 3505, Explod] ;no lo tiene
type = null ;Explod
trigger1 = Time = 25
anim = 12005  ;=================================== fondo donde aparece el anillo
ID = 12005
pos = 0,0
postype = left
removetime = -2
supermove
sprpriority = -3
ownpal = 1
removeongethit = 1

[State 3505, missle1]
type = Projectile
trigger1 = (Time >= 50) && TimeMod = 10,0
ProjID = 3510  ;=================================== animacion del misil
projanim = 3510
projhitanim = 9992 ;950 
;projremanim =
;projcancelanim =
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 1.8,0
remvelocity = 0,0
accel = 1,0
velmul = 1
projhits = 1
projmiss = 0
projpriority = 1
projsprpriority = 5
projedgebound = 240
projstagebound = 40
projheightbound = -240
offset = 56,-31
postype = p1
projshadow = 0,0,0
; HitDef
attr = S,HP
hitflag = MAF
guardflag = MA
animtype = back
priority = 7,Hit
damage = 8,2
pausetime = 1,3
;sparkno = S950  ;esta es la animacion del misil cuando hit
;guard.sparkno = 0
;sparkxy = 0,0
;hitsound = 0,0
;guardsound = 0,0
ground.type = Low
ground.slide = 10
;guard.slide = 0
ground.hit = 10
;guard.hit = 0
air.hittime = 3
ground.velocity = -5,-2
air.velocity = -6,-4
sprpriority = 2
fall = 1
down.bounce = 1
palfx.time = 2
palfx.add = 0,128,0

[State 3505, missle2]
type = Projectile
trigger1 = (Time >= 50) && TimeMod = 10,0
ProjID = 3510 ;==================================== idem
projanim = 3510
projhitanim = 9990 ;950
;projremanim =
;projcancelanim =
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 1.8,0
remvelocity = 0,0
accel = 1,0
velmul = 1
projhits = 1
projmiss = 0
projpriority = 1
projsprpriority = 5
projedgebound = 240
projstagebound = 40
projheightbound = -240
offset = -9,-16
postype = p1
projshadow = 0,0,0
; HitDef
attr = S,HP
hitflag = MAF
guardflag = MA
;getpower = 0,0
;givepower = 0,0
animtype = back
priority = 7,Hit
damage = 8,2
pausetime = 1,3
;sparkno = S950
;guard.sparkno = 0
;sparkxy = 0,0
;hitsound = 0,0
;guardsound = 0,0
ground.type = Low
ground.slide = 10
;guard.slide = 0
ground.hit = 10
;guard.hit = 0
air.hittime = 3
ground.velocity = -5,-2
air.velocity = -6,-4
sprpriority = 2
fall = 1
down.bounce = 1
palfx.time = 2
palfx.add = 0,128,0

[State 3505, missle3]
type = Projectile
trigger1 = (Time >= 50) && TimeMod = 10,0
ProjID = 3510 ;==================================== idem
projanim = 3510
projhitanim = 9990 ;950
;projremanim =
;projcancelanim =
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 1.8,0
remvelocity = 0,0
accel = 1,0
velmul = 1
projhits = 1
projmiss = 0
projpriority = 1
projsprpriority = 5
projedgebound = 240
projstagebound = 40
projheightbound = -240
offset = 52,-69
postype = p1
projshadow = 0,0,0
; HitDef
attr = S,HP
hitflag = MAF
guardflag = MA
;getpower = 0,0
;givepower = 0,0
animtype = back
priority = 7,Hit
damage = 8,2
pausetime = 1,3
;sparkno = S950
;guard.sparkno = 0
;sparkxy = 0,0
;hitsound = 0,0
;guardsound = 0,0
ground.type = Low
ground.slide = 10
;guard.slide = 0
ground.hit = 10
;guard.hit = 0
air.hittime = 3
ground.velocity = -5,-2
air.velocity = -6,-4
sprpriority = 2
fall = 1
down.bounce = 1
palfx.time = 2
palfx.add = 0,128,0

[State 3505, missle4]
type = Projectile
trigger1 = (Time >= 50) && TimeMod = 10,0
ProjID = 3510   ;==================================== idem
projanim = 3510
projhitanim = 9992 ;9990 ;950
;projremanim =
;projcancelanim =
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 1.8,0
remvelocity = 0,0
accel = 1,0
velmul = 1
projhits = 1
projmiss = 0
projpriority = 1
projsprpriority = 5
projedgebound = 240
projstagebound = 40
projheightbound = -240
offset = -20,-67
postype = p1
projshadow = 0,0,0
; HitDef
attr = S,HP
hitflag = MAF
guardflag = MA
;getpower = 0,0
;givepower = 0,0
animtype = back
priority = 7,Hit
damage = 8,2
pausetime = 1,3
;sparkno = S950
;guard.sparkno = 0
;sparkxy = 0,0
;hitsound = 0,0
;guardsound = 0,0
ground.type = Low
ground.slide = 10
;guard.slide = 0
ground.hit = 10
;guard.hit = 0
air.hittime = 3
ground.velocity = -5,-2
air.velocity = -6,-4
sprpriority = 2
fall = 1
down.bounce = 1
palfx.time = 2
palfx.add = 0,128,0

; small beam
[State 3505, Projectile]
type = Null ;Projectile
trigger1 = Time= 60
ProjID = 3520 ;==================================== animacion de laser
projanim = 3520
projhitanim = 9992
;projremanim =
;projcancelanim =
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 0,0
remvelocity = 0,0
accel = 0,0
velmul = 1
projhits = 1
projmiss = 0
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 0,0
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
supermovetime = 0
pausemovetime = 0
; HitDef
attr = S,HP
hitflag = MAF
guardflag = MA
getpower = 0,0
givepower = 0,0
;affectteam = E          ;B,E,F
animtype = hard
priority = 7,Hit   ;Hit,Miss,Dodge
damage = 80,0
pausetime = 0,0
;guard.pause,0
sparkno = 0
guard.sparkno = 0
sparkxy = 0,0
hitsound = 0,0
guardsound = 0,0
ground.type = High      ;Low,Trip,None
;air.type = High
ground.slide = 0
;guard.slide = 0
ground.hit = 0
;guard.hit = 0
air.hittime = 20
;guard.ctrl  = 0
;guard.dist = 320
;yaccel = 0.5
ground.velocity = 0,0
;guard.velocity = 0
air.velocity = 0,0
;airguard.velocity = 0,0
;ground.cornerpush.veloff = 0
;air.cornerpush.veloff = 0
;down.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0
;airguard.ctrl = 0
;air.juggle = 0
;mindist = 0,0
;maxdist = 0,0
;snap = 0,0
sprpriority = 1
;p1sprpriority = 0;(winmugen only)
;p2sprpriority = 0;(winmugen only)
;p1facing = 0
p1getp2facing = 0
;p2facing = 1
;p1stateno = 0
;p2stateno = 0
;p2getp1state = 1
;forcestand = 0
fall = 0
;fall.xvelocity = 0
fall.yvelocity = -4.5
fall.recover = 1
fall.recovertime = 4
fall.damage = 0
;air.fall = 0
;down.velocity = 0,0
;down.hit
down.bounce = 0
;id = 0
;chainID = -1
;nochainID = -1
;hitonce = 1
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1
;palfx.time = 0
;palfx.mul = 0,0,0
;palfx.add = 0,0,0
;envshake.time = 0,0
;envshake.freq = 0
;envshake.ampl = 0
;envshake.phase = 0
;fall.envshake.time = 0,0
;fall.envshake.freq = 0
;fall.envshake.ampl = 0
;fall.envshake.phase = 0
;ignorehitpause =
;persistent =
;(afterimage winmugen only)
;afterimage.time =
;afterimage.length =
;afterimage.palcolor =
;afterimage.palinvertall =
;afterimage.palbright = 0,0,0
;afterimage.palcontrast = 0,0,0
;afterimage.palpostbright =0,0,0
;afterimage.paladd =  0,0,0
;afterimage.palmul = 0,0,0
;afterimage.timegap =
;afterimage.framegap =
;afterimage.trans = ;none,add,add1,addalpha,sub
;ignorehitpause =
;persistent =

[State 3505, screenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 3505, back to normal]
type = ChangeState
trigger1 = AnimTime = 0
value = 0   ;===================== stance de pelea 
ctrl = 1

;=========================================================================
;Robot Attack
[Statedef 3600]
type = A
movetype = A
physics = N
anim = 3600
ctrl = 0
velset = 0,0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 15
value = 1

; voice
[State 3600, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
channel = 0

; hide lifebars
[State 3600, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3600, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 55
sound = S10,1
darken = 1
poweradd = -1000
movetime = 40
anim = s1500
pos = 11, -128     

;-------------------
; DCvM hyper portrait/BG
[State 3600, superportrait]
type = Explod
trigger1 = AnimElem = 2
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3600, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3600, superBG]
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
ownpal = 1
; end DCvM stuff
;-------------------


[State 191, 1]
type = PlaySnd
trigger1 =  animelem = 4 ;1
value = 172,1

[State 0, Explod]
type = Explod
trigger1 = animelem = 2 ;1
anim = 3601   ;3001   animacion del robot
ID = 3009
pos = 46,-8
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 140 ;150
sprpriority = 0
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999


;[State 0, Explod]
;type = Explod
;trigger1 = time = 137
;anim = 3605   ;3005 fin de la animacion
;ID = 3605     ;3005
;pos = 0,0
;postype = p1  ;p2,front,back,left,right
;bindtime = 1
;removetime = -2
;sprpriority = 0
;removeongethit = 1
;supermovetime = 999999
;pausemovetime = 999999

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 3004            ;brillo del anillo
ID = 3004
pos = -2,-35
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 103
sprpriority = 2
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999

[State 0, Helper]
type = Helper
trigger1 = time = 20
helpertype = normal
name = "raio"         ; animacion del rayo
ID = 3001
stateno = 3001
bindtime = -1
pos = 0,0
postype = p1

[State 3600, back to normal]
type = ChangeState
trigger1 = time = 138  ;150
value = 0
ctrl = 1

[Statedef 3001]
type = A
movetype = A
physics = N
anim = 3610  
velset = 0,0
sprpriority = 2

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x
y = parent, pos y

[State 191, 1]
type = PlaySnd
trigger1 =  timemod = 4,0
value = 173,4

[State 220, HitDef]
type = HitDef
trigger1 = timemod = 4,0
attr = S, NA
damage = 10,1
guardflag = MA
pausetime = 0,0
hitsound = S2,2
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-76
animtype = Heavy
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animtime = 0 && anim = 3610  
value = 3003
;elem = 1
;ignorehitpause =
;persistent =


[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0 && anim = 3003
trigger2 = parent, numexplod(3009) = 0
;ignorehitpause =
;persistent =

;=========================================================================
;Giant Dragon Attack
[StateDef 3700]
type = A
movetype = A
physics = N
anim = 3700 ;3741  ;3041
ctrl = 0
velset = 0,0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 15
value = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 171,12 ;"beware of my power"

; voice
[State 3700, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
channel = 0

; hide lifebars
[State 3700, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3700, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 55
sound = S10,1
darken = 1
poweradd = -1000
movetime = 40
anim = s1500
pos = 11, -128     

;-------------------
; DCvM hyper portrait/BG
[State 3700, superportrait]
type = Explod
trigger1 = AnimElem = 2
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3700, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3700, superBG]
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
ownpal = 1
; end DCvM stuff
;-------------------

;======================================================================

[State 3001, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno = 3705 || parent, movetype = H

[State 3700, 1]
type = ChangeState
trigger1 = animtime = 0
value = 3705  ;4005 stand con nunchukus mientras ataca dragon
ctrl = 0

;--------------------------------------------
;Dragon Cannon - Stance
[Statedef 3705]   ;4005]
type    = S
movetype= A
physics = S
velset = 0, 0
ctrl = 0
anim = 3705  ;4005 stand con nunchukus mientras ataca dragon
sprpriority = 3
poweradd = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 4000,0
channel = 3

[State 3705, Explod]
type = Explod
trigger1 = animelem = 1
anim = 3004            ;brillo del anillo
ID = 3004
pos = -2,-35
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 113
sprpriority = 5
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999

[State 3705, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal ;player
name = "Dragon_Head"
ID = 3705         ;4005
stateno = 3715    ;4015
pos = -200,-60
postype = back    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove
ignorehitpause = 1
;persistent =

[State 3705, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal ;player
name = "Dragon_Head"
ID = 3705        ;4005
stateno = 3730   ;4030
pos = -200,-60
postype = back    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove
ignorehitpause = 1
;persistent =


[State 3705, 1]
type = ChangeState
trigger1 = animtime = 0
value = 3710 ;4010 final del stance con nunchukus
ctrl = 1

;---------------------------------------
;Dragon Cannon - End
[Statedef 3710]     ;4010]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0, 0
ctrl = 0
anim = 3710  ;4010 final del stance con nunchukus
sprpriority = 3
poweradd = 0


[State 3710, 1]
type = ChangeState
trigger1 = !animtime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Dragon Cannon - Blast (Hits)
[Statedef 3715]     ;4015]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 3730   ;4030 clns rojo del dragon
sprpriority = 7
poweradd = 0


[State 3715, VelSet]
type = VelSet
trigger1 = time > 0 && time <= 100
x = 10.5
ignorehitpause = 1
;persistent =


[State 3715, 1]
type = HitDef
trigger1 = time%3 = 0
attr = S, HP			;Attribute: Standing, Normal Attack
damage = 10, 4			;Damage that move inflicts, guard damage
getpower = 0
animtype = back			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAFP			;Flags of conditions that move can hit
priority = 7, Hit			;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,10			;Time attacker pauses, time opponent shakes
sparkno = s9991  ;s4030;983				;Spark anim no (Def: set above)
guard.sparkno = s935
sparkxy = -10, -20		;X-offset for the "hit spark" rel. to p2,
hitsound = s2,2    ;s1300, 80			;Sound to play on hit
guardsound = s6300, 0			;Sound to play on guard
ground.type = high		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 20		;Time opponent is in hit state
ground.velocity = -5, -1.5		;Velocity at which opponent is pushed
;airguard.velocity = -5,-4	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = high			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -5, -1.5		;X-velocity at which opponent is pushed,
air.hittime = 12			;Time before opponent regains control in air
Fall = 1
Air.Fall = 1
fall.recover = 0
palfx.time = 20
palfx.add = 40,-70, -200
palfx.mul = 256,256,256
palfx.sinadd = 40,30,0
Palfx.color = 0
palfx.invertall = 1;palfx.time = 30
ignorehitpause = 1
envshake.time = 4
envshake.ampl = 4


[State 3715, HitFX]
;triggerall = numhelper(4015) > 0
trigger1 = movehit = 1
type = Explod
anim = 982
;ID = 4001
pos = -5, -60
postype = p2  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 3715, HitFX2]
;triggerall = numhelper(4015) > 0
trigger1 = movehit = 1
type = Explod
anim = 983
;ID = 4001
pos = -5, -60
postype = p2  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0
ignorehitpause = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 95
;ignorehitpause =
;persistent =

;---------------------------------------------------------------------------
; Dragon Cannon - Blast (Image)
[Statedef 3730]      ;4030]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3730  ;4030;4035; 4015 clns rojo del dragon
sprpriority = 7
poweradd = 0

[State 3730, VelSet]
type = VelSet
trigger1 = time > 0 && time <= 100
x = 10.5
ignorehitpause = 1
;persistent =


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
trigger2 = time = 5
trigger3 = time = 15
trigger4 = time = 25
trigger5 = time = 35
trigger6 = time = 45
trigger7 = time = 55
trigger8 = time = 65
trigger9= time = 75
trigger10 = time = 85
value = 4000,15
volume = 16


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 8
value = 2,6   ;4000,30
volume = 20

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (time % 3) = 0
anim = 3735   ;4035;4030
ID = 3715
pos = -250,40
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 100 ;95
vel = 0,0
accel = 0,0
random = 0,0
removetime = 100 ;95
scale = 1.9,1.9
sprpriority = 7
ownpal = 1
removeongethit = 0
ignorehitpause = 0
;persistent =

;[State 0, Explod]
;type = Explod
;trigger1 = time = 0
;trigger1 = (time % 3) = 0
;anim = 3735   ;4040;4030
;ID = 4015
;pos = -155,0
;postype = p1  ;p2,front,back,left,right
;facing = 1
;vfacing = 1
;bindtime = 100
;vel = 0,0
;accel = 0,0
;random = 0,0
;removetime = 100
;scale = .9,1
;sprpriority = 6
;ownpal = 1
;removeongethit = 0
;ignorehitpause = 0
;;persistent =

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 95
;======================================================================================
;=========================================================================
;dino Dragons Attack
[StateDef 3900]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3950   ;posicion de inicio del ataque
ctrl = 0
sprpriority = 2

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 15
value = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 171,12 ;"beware of my power"


[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 3099     ;brillo del anillo ver que es <==========================
ID = 3099
pos = -3,-5
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 105 
sprpriority = 5
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999

; voice
[State 3950, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
channel = 0

; hide lifebars
[State 3950, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3950, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 20
sound = S10,1
darken = 1
poweradd = -1000
movetime = 60
anim = s1500
pos = 12, -129  ;15,-120

;-------------------
; DCvM hyper portrait/BG
[State 3950, superportrait]
type = Explod
trigger1 = AnimElem = 2
anim = 10000     
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 60
supermovetime = 60
pausemovetime = 60
sprpriority = -2 ;-1
ownpal = 1

[State 3950, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 60
supermove = 60
pausemovetime = 60
sprpriority = -2
ownpal = 1

[State 3950, superBG]
type = Helper
trigger1 = AnimElem = 2
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------
[State 3755, Explod]
type = Explod
trigger1 = animelem = 1
anim = 3004            ;brillo del anillo <==========================
ID = 3004
pos = -2,-35
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 195  ;160
sprpriority = 5
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999

[State 3755, 7] 
type = Helper
trigger1 = time = 20     
helpertype = normal ;player
name = "dragon"
ID = 3930       ;3150 los hit boxes del caballo
postype = back
pos = 0, 0  
ownpal = 1
StateNo = 3930   ;3150    
sprpriority = 0
removetime = 999999

[State 3950, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0 
ctrl = 1

[State 3125, whinney] ;sonido del caballo
type = PlaySnd
trigger1 = AnimElem = 2
value = S10,30

;------------------------------
; Dragon Knight: charge!
[StateDef 3930]
type    = A
movetype = A
physics = N
ctrl = 0
anim = 3930    ;los hit boxes del caballo
sprpriority = 3

[State 3150, dragon] ;============poner el dragon en cualquiera de estos tres
type = Explod
trigger1 = Time = 0
anim = 3990     
ID = 3990           
bindtime = 99999
removetime = -1
sprpriority = -2
removeongethit = 1


[State 1000, Explod]
type = Explod
trigger1 = time = 1
anim = 918      ;polvo en el piso
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
sprpriority = -3
removeongethit = 1

[State 3150, sfx]
type = PlaySnd
trigger1 = Time = 3
loop = 99
channel = 2
value = 10,31

[State 3150, velset]
type = VelSet
trigger1 = AnimElem = 1
x = 8

[State 3150, lines]
type = Explod
trigger1 = 1
anim = 113                 ;raya de fondo
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

[State 3150, spark]
type = Explod
trigger1 = time = 1
ID = 1420
anim = 1410  ;1420      
bindtime = -1
facing = 1
removetime = -1;80
sprpriority = -4
removeongethit = 1

[State 3150, HitDef]
type = HitDef
trigger1 = Time % 4 = 0
attr = S, HA
damage = 14
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-100
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -4,-1
guard.velocity = -2
air.velocity = -4,-1
priority = 6,Hit

[State 3150, sparkBegone]
type = RemoveExplod
trigger1 = AnimElem = 3
ID = 1420

[State 3150, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3955 

;------------------------------
; Dragon Knight: finish
[StateDef 3955]
type    = U
movetype = I
physics = U

[State 3155, StopSnd]
type = StopSnd
trigger1 = Time = 0
channel = 2

[State 3155, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
id = 3990  

[State 3800, 4]
type = ChangeState
trigger1 = time = 60   ;AnimTime = 0 ;
value = 0
ctrl = 1


;================================================================================
;Falling Beetle
[Statedef 3800]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3800
ctrl = 0
sprpriority = 2

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 15
value = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 171,12 ;"beware of my power"


[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 3099     ;ring
ID = 3099
pos = -3,-5
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 105 
sprpriority = 5
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999

; voice
[State 3800, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
channel = 0

; hide lifebars
[State 3800, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3800, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 60
sound = S10,1
darken = 1
poweradd = -1000
movetime = 60
anim = s1500
pos = 12, -129  ;15,-120

;-------------------
; DCvM hyper portrait/BG
[State 3800, superportrait]
type = Explod
trigger1 = AnimElem = 2
anim = 10000     
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 60
supermovetime = 60
pausemovetime = 60
sprpriority = -1
ownpal = 1

[State 3800, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 60
supermove = 60
pausemovetime = 60
sprpriority = -2
ownpal = 1

[State 3800, superBG]
type = Helper
trigger1 = AnimElem = 2
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------

[State 3800, 1]
type = PlaySnd
trigger1 = Time = 1
value = 6, 5

[State 3800, Super pause]
type = SuperPause
trigger1 = AnimElem = 2 ;3
pos = 11, -129
anim = 102
;sound = 20, 0

[State 3800, 2]
type = Projectile
trigger1 = Time = 15
attr = S, HP
offset = 160,-220
projanim= 3801    ;2510
projremanim= 3810   ;2511
projcancelanim=-1
projremove=0
velocity = 0,9
animtype  = Hard
damage    = 400,55
guardflag = MA
pausetime = 5,10
sparkno = -1
;sparkxy = -10,-70
hitsound   = S6,4
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -9
air.velocity = -5,-4
yaccel = .25
fall = 1
fall.recover = 0
fall.envshake.time = 10
fall.envshake.ampl = 5
fall.xvelocity = -5
fall.yvelocity = 0

[State 3800, 3]
type = Screenbound
trigger1 = time > 56
value = 0
movecamera = 0, 0
ignorehitpause = 0
persistent = 1

[state 3800, shake]
type = envshake
trigger1 = time = 40 ;25
time = 10

[State 3800, ground effect]
type = Explod 
trigger1 = Time = 45
anim = F62
scale = 1.3,1.3
pos = 165, 0

[State 3800, sound]
type = PlaySnd
trigger1 = Time = 45
value = F5, 4

[State 3800, 4]
type = ChangeState
trigger1 = time = 95   ;AnimTime = 0
value = 0
ctrl = 1


;======================================================================================================
; Hyper: Emerald Knight (startup when on ground)
[Statedef 3950]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3950
ctrl = 0
sprpriority = 2

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 15
value = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 171,12 ;"beware of my power"


[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 3099     ;ring
ID = 3099
pos = -3,-5
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 105 
sprpriority = 5
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999

; voice
[State 3950, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
channel = 0

; hide lifebars
[State 3950, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3950, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 20
sound = S10,1
darken = 1
poweradd = -1000
movetime = 60
anim = s1500
pos = 12, -129  ;15,-120

;-------------------
; DCvM hyper portrait/BG
[State 3950, superportrait]
type = Explod
trigger1 = AnimElem = 2
anim = 10000     
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 60
supermovetime = 60
pausemovetime = 60
sprpriority = -2 ;-1
ownpal = 1

[State 3950, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 60
supermove = 60
pausemovetime = 60
sprpriority = -2
ownpal = 1

[State 3950, superBG]
type = Helper
trigger1 = AnimElem = 2
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------
[State 3755, Explod]
type = Explod
trigger1 = animelem = 1
anim = 3004            ;brillo del anillo
ID = 3004
pos = -2,-35
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 160
sprpriority = 5
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999

[State 3755, 7] 
type = Helper
trigger1 = time = 20     
helpertype = normal ;player
name = "Horse"
ID = 3150
postype = back
pos = 0, 0  
ownpal = 1
StateNo = 3150    
sprpriority = 0
removetime = 999999

[State 3950, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0 ;3150  ;3125
ctrl = 1


;------------------------------
;; Emerald Knight: superpause, construct generation
;[StateDef 3125]
;type    = A
;movetype = A
;physics = N
;ctrl = 0
;;anim = 3851   ;brinco sentado sobre caballo
;velset = 0,0
;sprpriority = 6


;show construct-generation explods
;[State 3125, lance]
;type = Explod
;trigger1 = AnimElem = 1 ;2
;anim = 3126      ;brazo con lanza solo
;ID = 3126
;sprpriority = 2
;removeongethit = 1

;[State 3125, horse]
;type = Explod
;trigger1 = AnimElem = 1 ;2
;anim = 3127     ;primera imagen del caballo
;ID = 3127
;sprpriority = 3
;removeongethit = 1

[State 3125, whinney]
type = PlaySnd
trigger1 = AnimElem = 2
value = S10,30

;[State 3125, armor]
;type = Explod
;trigger1 = AnimElem = 1 ;2
;anim = 3128        ;mitad imagen trasera 
;ID = 3128
;sprpriority = 4
;removeongethit = 1

;[State 3125, PlaySnd]
;type = PlaySnd
;trigger1 = Time = 15
;value = S9,2

;[State 3125, charge fwd]
;type = ChangeState
;trigger1 = AnimTime = 0
;value = 3150
;ctrl = 1


;------------------------------
; Emerald Knight: charge!
[StateDef 3150]
type    = A
movetype = A
physics = N
ctrl = 0
anim = 3150   ;Al sentado sobre caballo y golpes
sprpriority = 3

[State 3150, lance]
type = Explod
trigger1 = Time = 0
anim = 3151    ; mitad del brazo con lanza solo
ID = 3151
bindtime = 99999
removetime = -1
sprpriority = -2
removeongethit = 1

[State 3150, horse]
type = Explod
trigger1 = Time = 0
anim = 3152    ; caballo corriendo 4 anim
ID = 3152
bindtime = 99999
removetime = -1
sprpriority = -3
removeongethit = 1

[State 3150, armor]
type = Explod
trigger1 = Time = 0
anim = 3153     ;mitad imagen trasera 
ID = 3153
bindtime = 99999
removetime = -1
sprpriority = -4
removeongethit = 1

[State 1000, Explod]
type = Explod
trigger1 = time = 1
anim = 918      ;polvo en el piso
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
sprpriority = -3
removeongethit = 1

[State 3150, sfx]
type = PlaySnd
trigger1 = Time = 3
loop = 99
channel = 2
value = 10,31

[State 3150, velset]
type = VelSet
trigger1 = AnimElem = 1
x = 8

[State 3150, lines]
type = Explod
trigger1 = 1
anim = 113                 ;raya de fondo
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

[State 3150, spark]
type = Explod
trigger1 = time = 1
ID = 1420
anim = 1410  ;1420      ;horn it on
bindtime = -1
facing = 1
removetime = -1;80
sprpriority = -4
removeongethit = 1

[State 3150, HitDef]
type = HitDef
trigger1 = Time % 4 = 0
attr = S, HA
damage = 14
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-100
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -4,-1
guard.velocity = -2
air.velocity = -4,-1
priority = 6,Hit

[State 3150, sparkBegone]
type = RemoveExplod
trigger1 = AnimElem = 3
ID = 1420

[State 3150, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3155


;------------------------------
; Emerald Knight: finish
[StateDef 3155]
type    = U
movetype = I
physics = U

[State 3155, StopSnd]
type = StopSnd
trigger1 = Time = 0
channel = 2

[State 3155, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
id = 3151

[State 3155, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
id = 3152

[State 3155, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
id = 3153

[State 3800, 4]
type = ChangeState
trigger1 = time = 60   ;AnimTime = 0
value = 0
ctrl = 1

;[State 3155, ChangeState]
;type = ChangeState
;trigger1 = Time = 1
;value = IfElse((Pos Y < 0), 948, 0)
;ctrl = 1