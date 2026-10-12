; States file for (Character) -- Overrides and Common states
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State 0, VarSet]
type = VarSet
trigger1 =  ctrl
trigger1 = var(41) != 0
v = 41
value = 0


[State 0, VarSet]
type = VarSet
trigger1 =  pos y = 0
trigger1 = var(42) != 0
v = 42
value = 0


[State 0, EnvShake]
type = EnvShake
triggerall = numhelper(3001)>0
trigger1 = timemod = 10,1
time = 20
freq = 60
ampl = -4
phase = 90

[State 0, ChangeState]
type = ChangeState
triggerall = ctrl
triggerall = MoveType != H
triggerall = var(42) = 0
triggerall = vel y > 0
trigger1 = !var(59) && command = "holdup"
trigger2 = var(59) && random < 500
value =949
ctrl = 0


[State -2, gethits]         ; custom gethit sounds
type = PlaySnd
triggerall = (stateno = [5000,5210]) && (Time = 0) && (!IsHelper)
trigger1 = anim = 5002  ; standing hard hit high
trigger2 = anim = 5012  ; stand hard hit low
trigger3 = anim = 5022  ; crouching hard hit
trigger4 = anim = 5030  ; air hit
trigger5 = anim = 5070  ; tripped
persistent = 0
value = 172,3

[State -2, gethits]         ; custom gethit sounds
type = PlaySnd
triggerall = (stateno = [5000,5210]) && (Time = 0) && (!IsHelper)
trigger1 = anim = 5001  ; standing hard hit high
trigger2 = anim = 5011  ; stand hard hit low
trigger3 = anim = 5021  ; crouching hard hit
persistent = 0
value = 172,4

;Damage Dampener Variable
[State -2, Damage based on hits]
type=varset
trigger1= numenemy
fvar(12)= ifelse(enemynear,gethitvar(hitcount)<3, 24, ifelse(enemynear,gethitvar(hitcount)>=24, 2, 26-enemynear,gethitvar(hitcount))) / 24.0  ;CFJ
;fvar(12)= ifelse(enemynear,gethitvar(hitcount)=0, 1, ifelse(enemynear,gethitvar(hitcount)=1, .9, .8**enemynear,gethitvar(hitcount)))  ;MVC
ignorehitpause=1

;Damage Dampener Variable Reset
[State -2, Reset var when the opponent recovers]
type=varset
trigger1= numenemy
trigger1= (enemynear,movetype!=H)
trigger2= !numenemy
fvar(12)=1

;Damage Dampener
[State -2, Dampener itself]
type=attackmulset
trigger1= 1
value=fvar(12)
ignorehitpause=1

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
;[Statedef -3]

[State -3,]
type = StopSnd
trigger1 =  ((prevstateno = [191,193]) || (prevstateno = [7196,7198])) && roundstate = 2
channel = 1

[Statedef -3]

[State -3, Landing Dust]
type = explod
triggerall = Time = 1
trigger1 = stateno = 52 ;Jump land
trigger2 = stateno = 106 ;Run-back land
trigger3 = stateno = 1212 ;Run-back land
anim = 6007
id = 6007
postype = p1
pos = 0,0
ownpal = 1
bindtime = 1
scale = 0.7, 0.7
sprpriority = -2
persistent = 0
removeongethit = 0

[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1 && Var(20) != 2
trigger1 = StateNo = 52 ;Jump land
trigger2 = stateno = 661
value = 8, 1

[State -3, VarSet]
type = VarSet
triggerall = var(50) != 1
trigger1 = Life <= 0
v = 50
value = 1

[State -3, GetHit Snd]
type=playsnd
triggerall= alive && time=1
triggerall= stateno=5000 || stateno=5010
trigger1= gethitvar(animtype)>=2 && random<500
trigger2= gethitvar(animtype)=1 && random<375
trigger3= gethitvar(animtype)=0 && random<250
value=S8000, 9+random%2
channel=0
ignorehitpause=1

[State -3, GetHit Snd]
type=playsnd
triggerall= alive && time=1
trigger1= (stateno=5000 || stateno=5010) && numenemy
trigger1= gethitvar(fall) || (enemynear,hitdefattr=SCA,SA,HA)
trigger2= (stateno=5020 || stateno=5070 || stateno=5080)
trigger3= (stateno=5050 || stateno=5100) && (prevstateno!=[5000,5199])
value=S8000,11+random%2
channel=0
ignorehitpause=1

;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
