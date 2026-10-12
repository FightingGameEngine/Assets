;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State -2, debug]       ; (debug clipboard)
type = DisplayToClipboard
trigger1 = 1 ;Alive
text = "pos %d, var(24) %d, Pos Y: %f"
params = screenpos x, var(24), Pos Y

[State 1200, Remove 1205]
type = Removeexplod
trigger1 = anim != 1200
iD = 1205
IgnoreHitPause = 1

[State 1200, Remove 1206]
type = Removeexplod
trigger1 = anim != 1201
ID = 1206
IgnoreHitPause = 1

[State 1200, Remove Ox]
type = Removeexplod
trigger1 = 3000
trigger1 = animelemtime(7) > 20 ;6) > 20
trigger2 = anim != 3000
ID = 3010
IgnoreHitPause = 1

;=========AvX Public Release Damage Dampiner===========
;The AvX project contains a Damage Multiplier. Such a system would create
;an unfair advantage outside of the closed game proejct. A damage dampiner
;has been added to the character in order to balance the large combo system
;found in the AvX game.

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

;============================================================

[State 220, VarAdd]
type = VarAdd
triggerall = enemynear,movetype=H
trigger1 = prevstateno = 220
v = 20
value = 1
persistent = 0

[State -2, VarSet]
type = VarSet
trigger1 = enemynear,movetype!=H
v = 20
value = -1

[State -2, VarSet]
type = VarSet
trigger1 = enemynear,movetype!=H
v = 21
value = 0

[State -2, VarSet]
type = VarSet
trigger1 = enemynear,movetype!=H
v = 22
value = 0

[State -2, VarSet]
type = VarSet
trigger1 = enemynear,movetype!=H
v = 23
value = 0

[State -2, VarSet]
type = VarSet
trigger1 = enemynear,movetype!=H
v = 24
value = 0

[State -2, VarSet]
type = VarSet
trigger1 = enemynear,movetype!=H
v = 25
value = 0

[State -2, PosSet]
type = PosSet
trigger1 = Alive
z = 0.9

[State -2, Stop Intro Sound]
type = StopSnd
trigger1 = roundstate = 2
channel = 20

[State -2]
type = AfterImage
trigger1 = numexplod(3301)>0 && Time%80 = 0
time = 80
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  170,0,0
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add1;add1;AS250D250;none
Length = 10
FrameGap = 2

[State -2, PalFX]
type = PalFX
triggerall = numexplod(3301) > 0
trigger1 = timemod = 20,0
time = 50
add = 60,0,0
color = 128
sinadd = 60,0,0,50
ignorehitpause = 1

[State -2, LifeAdd]
type = LifeAdd
trigger1 = numexplod(3301) > 0
trigger1 = timemod = 20,0
value = 5;1

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = stateno != 1011 && stateno != 1050
id = 8001

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

[State -2, gethits]         ; custom gethit sounds
type = PlaySnd
triggerall = (stateno = [5000,5210]) && (Time = 0) && (!IsHelper)
trigger1 = anim = 5002  ; standing hard hit high
trigger2 = anim = 5012  ; stand hard hit low
trigger3 = anim = 5022  ; crouching hard hit
trigger4 = anim = 5030  ; air hit
trigger5 = anim = 5070  ; tripped
persistent = 0
value = 4,0

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
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
[Statedef -3]

[State -3, Stop Messing around 1100]
type = Changestate
triggerall = var(59)
triggerall = time = 1
triggerall = stateno = 1100 || stateno = 420
trigger1 = P2bodydist X = [-1,50]
value = ifelse(enemynear,statetype = A,210,400)

[State -3, Stop Messing around 1100]
type = Changestate
triggerall = var(59)
triggerall = time = 1
triggerall = stateno = 1100 || stateno = 420
trigger1 = P2bodydist X = [51,100]
value = 250

[State -3, Stop Messing around 1100]
type = Changestate
triggerall = var(59)
triggerall = stateno = 1100
triggerall = time = 1
trigger1 = P2bodydist X = [101,149]
value = 1200

[State -3, Stop Messing around 1000]
type = Changestate
triggerall = var(59)
triggerall = stateno = 1000
triggerall = time = 1
trigger1 = P2bodydist X = [-1,50]
value = ifelse(enemynear,statetype = A,210,400)

[State -3, Stop Messing around 1000]
type = Changestate
triggerall = var(59)
triggerall = stateno = 1000
triggerall = time = 1
trigger1 = P2bodydist X = [51,90]
value = 250

[State -3, Stop Messing around 1000]
type = Changestate
triggerall = var(59)
triggerall = stateno = 1100
triggerall = time = 1
trigger1 = enemynear,movetype != H
trigger1 = P2bodydist X = [91,129]
value = 1200


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
