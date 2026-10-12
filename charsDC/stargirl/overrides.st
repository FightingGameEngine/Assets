;RUN FWD AIR
[Statedef 110]
type    = A
movetype = I
physics = N
anim = 100
sprpriority = 1
velset = const(velocity.run.fwd.x), 0

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S13,2
channel = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 112
pos = 5,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 9999
pausemovetime =9999
scale = 1,1
sprpriority = 1
removeongethit = 1

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, 4]
type = ChangeState
trigger1 = time = 20
value = 948
ctrl = 1


;RUN BACK AIR
[Statedef 115]
type = A
physics = N
anim = 105
sprpriority = 1
velset = -8,0

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S13,2
channel = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 111
pos = 3,-5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 9999
pausemovetime = 9999
scale = 1,1
sprpriority = 1
removeongethit = 1

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk


[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, 4]
type = ChangeState
trigger1 = time = 20
value = 948
ctrl = 1


; States file for {character} -- Overrides and Common states
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   2: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State -2, debug]       ; (debug clipboard)
type = DisplayToClipboard
trigger1 = 1 ;Alive
text = "PalNo: %d - Pos Y: %f"
params = PalNo, Pos Y

[State -2, PosSet]
type = PosSet
trigger1 = Alive
z = 0.9

[State -2, Damage based on hits]
type=varset
trigger1= numenemy
fvar(12)= enemynear,gethitvar(hitcount)
ignorehitpause=1

[State -2, Reset var when the opponent recovers]
type=varset
trigger1= numenemy
trigger1= (enemynear,movetype!=H)
trigger2= !numenemy
fvar(12)=0

[State -2, Dampener]
type=varset
trigger1=1
fvar(10)= ifelse(fvar(12)<9,ifelse(fvar(12)=0, 1, ifelse(fvar(12)=1, .9, .86**fvar(12))),.25)
ignorehitpause=1

[State -2, Dampener itself]
type=attackmulset
trigger1= 1
value= fvar(10)
ignorehitpause=1
ignorehitpause=1



[State -2, jump landing sound]   ; custom jump-landing sound
triggerall = Time = 1
trigger1 = stateno = 52
trigger2 = stateno = 106
type = PlaySnd
persistent = 0
value = 8,1

;[State -2, fall landing sound]   ; custom fall-landing sound
;trigger1 = stateno = [5100, 5110]
;trigger1 = Time = 1
;type = PlaySnd
;persistent = 0
;value = 8,2

[State -2, P2 Dizzy Flare]
type = Explod
triggerall = numexplod(1033) < 1
trigger1 = p2stateno = 1053
anim = 1033
ID = 1033
pos = 0,-100
postype = p2
facing = 1
vfacing = 1
bindtime = 9999
removetime = -2
supermove = 9999
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

;-----------------------------------
;hurt sounds
;-----------------------------------
[State -2, ダメージボイス]
type = PlaySnd
triggerall = Time = 1
triggerall = Alive
triggerall = Random < 500
trigger1 = stateno = 5000 || stateno = 5010 || stateno = 5020
trigger2 = stateno = 5070 || stateno = 5080
;trigger3 = stateno = 5210 || stateno = 5220 || stateno = 5221 || stateno = 5222
value = 18,0 + (Random%3)
channel = 0
;volume = 220

[State -2, superjump opponent locator]
type = Helper
triggerall = (NumHelper(0) = 0)
trigger1 = (Pos Y < -200) && (P2Dist Y > 50)
ID = 0
pos = 0,-120
postype = p2
stateno = 910
facing = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Constant Sparkles Effect Ahead - Coded By Acey
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

[State 180, 1]
type = VarRandom
trigger1 = 1
v = 25
range = 0,400

;==========Largest Spark========
[State -2, Explod]
type = Explod
triggerall = numexplod (4) <=2
triggerall = stateno != [1000,5999]
trigger1 = var(25) = [4,5]
;trigger2 = var(25) = [104,105]
;trigger3 = var(25) = [204,205]
;trigger4 = var(25) = [304,305]
anim = 905
pos = -10,-50
postype = p1  ;p2,front,back,left,right
removetime = -2
supermove = 9999
pausemovetime = 9999
ontop = 1
ownpal = 1

[State -2, Explod]
type = Explod
triggerall = numexplod (4) <=2
triggerall = stateno != [1000,5999]
trigger1 = var(25) = [6,7]
;trigger2 = var(25) = [106,107]
;trigger3 = var(25) = [206,207]
;trigger4 = var(25) = [306,307]
anim = 905
pos = 20,-20
postype = p1  ;p2,front,back,left,right
removetime = -2
supermove = 9999
pausemovetime = 9999
ontop = 1
ownpal = 1

[State -2, Explod]
type = Explod
triggerall = numexplod (4) <=2
triggerall = stateno != [1000,5999]
trigger1 = var(25) = [96,97]
;trigger2 = var(25) = [196,197]
;trigger3 = var(25) = [296,297]
;trigger4 = var(25) = [3096,397]
anim = 905
pos = 20,-20
scale = .5,.5
postype = p1  ;p2,front,back,left,right
removetime = -2
supermove = 9999
pausemovetime = 9999
ontop = 1
ownpal = 1

[State -2, Explod]
type = Explod
triggerall = numexplod (4) <=2
triggerall = stateno != [1000,5999]
trigger1 = var(25) = [50,51]
;trigger2 = var(25) = [150,151]
;trigger3 = var(25) = [250,251]
;trigger4 = var(25) = [350,351]
anim = 905
pos = 13,-70
scale = .5,.5
postype = p1  ;p2,front,back,left,right
removetime = -2
supermove = 9999
pausemovetime = 9999
ontop = 1
ownpal = 1

[State -2, Explod]
type = Explod
triggerall = numexplod (4) <=2
triggerall = stateno != [1000,5999]
trigger1 = var(25) = [80,81]
;trigger2 = var(25) = [180,181]
;trigger3 = var(25) = [280,281]
;trigger4 = var(25) = [380,381]
anim = 905
pos = 13,-70
scale = 1,1
supermove = 9999
pausemovetime = 9999
postype = p1  ;p2,front,back,left,right
removetime = -2
ontop = 1
ownpal = 1


;==========Medium Spark========
[State -2, Explod]
type = Explod
triggerall = numexplod (3) <=2
triggerall = stateno != [1000,5999]
trigger1 = var(25) = [34,35]
;trigger2 = var(25) = [134,135]
;trigger3 = var(25) = [234,235]
;trigger4 = var(25) = [334,335]
anim = 904
pos = 5,-55
postype = p1  ;p2,front,back,left,right
removetime = -2
supermove = 9999
pausemovetime = 9999
ontop = 1
ownpal = 1

[State -2, Explod]
type = Explod
triggerall = numexplod (3) <=2
triggerall = stateno != [1000,5999]
trigger1 = var(25) = [76,77]
;trigger2 = var(25) = [176,177]
;trigger3 = var(25) = [276,277]
;trigger4 = var(25) = [376,377]
anim = 904
pos = -5,-35
postype = p1  ;p2,front,back,left,right
removetime = -2
ontop = 1
supermove = 9999
pausemovetime = 9999
ownpal = 1

[State -2, Explod]
type = Explod
triggerall = numexplod (3) <=2
triggerall = stateno != [1000,5999]
trigger1 = var(25) = [22,23]
;trigger2 = var(25) = [122,123]
;trigger3 = var(25) = [222,223]
;trigger4 = var(25) = [322,323]
anim = 904
pos = 10,-30
supermove = 9999
pausemovetime = 9999
scale = .5,.5
postype = p1  ;p2,front,back,left,right
removetime = -2
ontop = 1
ownpal = 1

[State -2, Explod]
type = Explod
triggerall = numexplod (3) <=2
triggerall = stateno != [1000,5999]
trigger1 = var(25) = [15,16]
;trigger2 = var(25) = [115,116]
;trigger3 = var(25) = [215,216]
;trigger4 = var(25) = [315,316]
anim = 904
pos = -7,-40
scale = .5,.5
postype = p1  ;p2,front,back,left,right
supermove = 9999
pausemovetime = 9999
removetime = -2
ontop = 1
ownpal = 1

[State -2, Explod]
type = Explod
triggerall = numexplod (3) <=2
triggerall = stateno != [1000,5999]
trigger1 = var(25) = [88,89]
;trigger2 = var(25) = [188,189]
;trigger3 = var(25) = [288,289]
;trigger4 = var(25) = [388,389]
anim = 904
pos = -10,-10
supermove = 9999
scale = 1,1
postype = p1  ;p2,front,back,left,right
removetime = -2
pausemovetime = 9999
ontop = 1
ownpal = 1

;==========Smallest Spark========
[State -2, Explod]
type = Explod
triggerall = numexplod (2) <=2
triggerall = stateno != [1000,5999]
trigger1 = var(25) = [44,45]
;trigger2 = var(25) = [144,145]
;trigger3 = var(25) = [244,245]
;trigger4 = var(25) = [344,345]
anim = 903
pos = -10,-65
postype = p1  ;p2,front,back,left,right
supermove = 9999
pausemovetime = 9999
removetime = -2
ontop = 1
ownpal = 1

[State -2, Explod]
type = Explod
triggerall = numexplod (2) <=2
triggerall = stateno != [1000,5999]
trigger1 = var(25) = [66,67]
;trigger2 = var(25) = [166,167]
;trigger3 = var(25) = [266,267]
;trigger4 = var(25) = [366,367]
anim = 903
pos = 9,-45
postype = p1  ;p2,front,back,left,right
supermove = 9999
pausemovetime = 9999
removetime = -2
ontop = 1
ownpal = 1

[State -2, Explod]
type = Explod
triggerall = numexplod (2) <=2
triggerall = stateno != [1000,5999]
trigger1 = var(25) = [12,13]
;trigger2 = var(25) = [112,113]
;trigger3 = var(25) = [212,213]
;trigger4 = var(25) = [312,313]
anim = 2
pos = 12,-42
scale = .5,.5
postype = p1  ;p2,front,back,left,right
supermove = 9999
pausemovetime = 9999
removetime = -2
ontop = 1
ownpal = 1


[State -2, Explod]
type = Explod
triggerall = numexplod (2) <=2
triggerall = stateno != [1000,5999]
trigger1 = var(25) = [48,49]
;trigger2 = var(25) = [148,149]
;trigger3 = var(25) = [248,249]
;trigger4 = var(25) = [348,349]
supermove = 9999
pausemovetime = 9999
anim = 903
pos = -10,-20
scale = .5,.5
postype = p1  ;p2,front,back,left,right
removetime = -2
ontop = 1
ownpal = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Constant Sparkles Effect End
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
[Statedef -3]
[State -3, Landing Dust]
type = Explod
triggerall =  NumExplod(60) < 1
triggerall = Time = 3
trigger1 = StateNo = 52 ;Jump land
trigger2 = StateNo = 101 ;Run-fdw land
trigger3 = StateNo = 106 ;Run-back land
trigger4 = PrevStateNo = 52 && StateNo = 11 ;Jump land/crouch
persistent = 0
ID = 60
anim = 60
postype = p1
pos = 7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1 && Var(20) != 2
trigger1 = StateNo = 52 ;Jump land
trigger2 = StateNo = 101 ;Run-fwd land
trigger3 = StateNo = 106 ;Run-back land
value = 8, 1

;--------------------------------------------------
; Level-up sounds (uses Var(2))
[State -3, levelup var 0]
type = VarSet
trigger1 = power < 1000
v =  2
value = 0

[State -3, levelup snd 1]
type = PlaySnd
trigger1 = (power >= 1000) && (power < 2000) && (var(2) < 1) && (RoundState = 2)
value = 12,0

[State -3, levelup var 1]
type = VarSet
trigger1 = (power >= 1000) && (power < 2000)
v =  2
value = 1

[State -3, levelup snd 2]
type = PlaySnd
trigger1 = (power >= 2000) && (power < 3000) && (var(2) < 2) && (RoundState = 2)
value = 12,1

[State -3, levelup var 2]
type = VarSet
trigger1 = (power >= 2000) && (power < 3000)
v =  2
value = 2

[State -3, levelup snd 3]
type = PlaySnd
trigger1 = (power >= 3000) && (var(2) < 3) && (RoundState = 2)
value = 12,2

[State -3, levelup var 3]
type = VarSet
trigger1 = (power >= 3000)
v =  2
value = 3


;--------------------------------
; based on FlowaGirl and Ethan Lives codes
; taken with permission from McCready's Guido char
[State -3, Finish Hit Explod - Helper]
type = Helper
triggerall = WinKO && NumHelper(8900) = 0 && stateno != 3000
trigger1 = RoundState = 3
helpertype = Normal
name = "Finish Hit Explod"
id = 8900
pos = 0, 0
postype = p1
facing = 0
stateno = 8900
keyctrl = 0
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

; desperation quote
[State -3, PlaySnd]
type = PlaySnd
trigger1 = (Life <= 150) && (var(50) = 0)
value = S11,1

[State -3, VarSet]
type = VarSet
trigger1 = Life <= 150
v = 50
value = 1


; "Win by hyper" effect
[State -3, Explod]
type = Explod
triggerall = (RoundState = 3) && (Life > 0) && (NumExplod(12000) = 0)
trigger1 = stateno = 3000
trigger2 = stateno = 3101
trigger3 = stateno = 3500
anim = 12000
ID = 12000
pos = 0,0
postype = left
bindtime = 100
removetime = -2
sprpriority = -1
ownpal = 1



;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------

