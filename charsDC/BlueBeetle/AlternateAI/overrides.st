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

;------------------
; AI Activation Helper State - Primary Version
; (Credit to YongMing for the basic HitPause bugfix concept.)
;
; var(16) - First tick button activation prevention.
; var(2) - Used for pause/superpause and custom state check, basically.
; var(3) - (Super/)Pause & custom state-triggered dir detection disabler.
; var(4) - Persistent direction command detection enabler (due to 2002.04.14).
; var(9) - AutoTurn bug fixer.
; parent's var(57) - Parent's GameTime var, for pause and custom state check.
; parent's var(58) - Parent's primary AI variable.
;
; The code in this state is mostly simply copy/pasteable.
; But if you're using different indices for the parent's variables,
; or if you change your character's basic commands' names, you'll
; of course need to change the code in this state accordingly.

[StateDef 9741]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 9741, Safety]; Just in case your opponent is very poorly coded.
type = SelfState
trigger1 = !IsHelper
value = 5050

[State 9741, UglyHack]
type = VarSet
trigger1 = !var(16)
var(2) = 2

[State 9741, PauseCheck]
type = VarSet
trigger1 = GameTime > Parent,var(57)
trigger2 = !(Parent,Alive)
trigger3 = RoundState != 2
trigger4 = Parent,var(58)
trigger5 = var(3):=0
var(2) = (var(3):=1)+(var(4):=0)

[State 9741, Facing]
type = Turn
trigger1 = var(9):=(Facing != Parent,Facing)
trigger1 = !(var(4):=0)

[State 9741, DirTurnOnAI]
type = ParentVarSet
triggerall = !(var(3) || var(9))
trigger1 = Parent,command = "holdfwd"
trigger2 = Parent,command = "holdback"
trigger3 = Parent,command = "holdup"
trigger4 = Parent,command = "holddown"
trigger5 = !(var(4):=1)
var(59) = var(4)

[State 9741, DirTurnOffAI]
type = ParentVarSet
triggerall = !var(3)
triggerall = Parent,var(58)
trigger1 = command = "holdfwd"
trigger1 = Parent,command = "holdfwd"
trigger2 = command = "holdback"
trigger2 = Parent,command = "holdback"
trigger3 = command = "holdup"
trigger3 = Parent,command = "holdup"
trigger4 = command = "holddown"
trigger4 = Parent,command = "holddown"
var(59) = var(4):=0

[State 9741, ButtonTurnOnAI]
type = ParentVarSet
triggerall = !var(2)
trigger1 = Parent,command = "a"
trigger2 = Parent,command = "b"
trigger3 = Parent,command = "c"
trigger4 = Parent,command = "x"
trigger5 = Parent,command = "y"
trigger6 = Parent,command = "z"
trigger7 = Parent,command = "start"
var(59) = 1

[State 9741, ButtonTurnOffAI]
type = ParentVarSet
triggerall = !var(2)
trigger1 = command = "a"
trigger1 = Parent,command = "a"
trigger2 = command = "b"
trigger2 = Parent,command = "b"
trigger3 = command = "c"
trigger3 = Parent,command = "c"
trigger4 = command = "x"
trigger4 = Parent,command = "x"
trigger5 = command = "y"
trigger5 = Parent,command = "y"
trigger6 = command = "z"
trigger6 = Parent,command = "z"
trigger7 = command = "start"
trigger7 = Parent,command = "start"
var(59) = -1

[State 9741, UnPauseCheck]
type = VarSet
triggerall = var(2)
trigger1 = Parent,command = "a"
trigger2 = Parent,command = "b"
trigger3 = Parent,command = "c"
trigger4 = Parent,command = "x"
trigger5 = Parent,command = "y"
trigger6 = Parent,command = "z"
trigger7 = Parent,command = "start"
trigger8 = var(2) = 2
trigger8 = var(2):=0
var(2) = 2

[State 9741, Goodbye]
type = DestroySelf
triggerall = var(16):=1
trigger1 = Parent,var(59)
trigger2 = !(Parent,Alive)
trigger3 = RoundState != 2


;------------------
; AI Activation Helper State - Compatibly Partnered Version
;
; var(1) - First tick dir activation prevention
; var(2) - Used for pause/superpause and custom state check, basically.
; var(3) - (Super/)Pause & custom state-triggered dir detection disabler.
; var(4) - Hitpause check.
; var(5) - No button on previous tick.
; var(6) - Any dir on this tick.
; var(7) - Any button on this tick.
; var(8) - Matching partner button detected.
; var(9) - AutoTurn bug fixer.
; parent's var(57) - Parent's GameTime var, for pause and custom state check.
; parent's var(59) - Parent's primary AI variable.
;
; The code in this state is mostly simply copy/pasteable.
; But if you're using different indices for the parent's variables,
; or if you change your character's basic commands' names, you'll
; of course need to change the code in this state accordingly.

[StateDef 9742]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 9742, Safety]; Just in case your opponent is very poorly coded.
type = SelfState
trigger1 = !IsHelper
value = 0

[State 9742, PauseCheck]
type = VarSet
trigger1 = (GameTime>Parent,var(57))
trigger2 = !(Parent,Alive)
trigger3 = (RoundState != 2)
trigger4 = Parent,var(59)
trigger5 = (var(3):=0)
var(2) = (var(3):=1)

[State 9742, Facing]
type = Turn
trigger1 = (var(9):=(Facing != Parent,Facing))

[State 9742, ParentDirCheck]
type = VarSet
trigger1 = (Parent,command = "holdfwd")
trigger2 = (Parent,command = "holdback")
trigger3 = (Parent,command = "holdup")
trigger4 = (Parent,command = "holddown")
trigger5 = (var(6):=0)
var(6) = 1

[State 9742, ParentButtonCheck]
type = VarSet
trigger1 = (Parent,command = "a")
trigger2 = (Parent,command = "b")
trigger3 = (Parent,command = "c")
trigger4 = (Parent,command = "x")
trigger5 = (Parent,command = "y")
trigger6 = (Parent,command = "z")
trigger7 = (Parent,command = "start")
trigger8 = (var(7):=0)
var(7) = 1

[State 9742, SameButtonCheck]
type = VarSet
triggerall = var(7)
triggerall = !var(2)
triggerall = NumPartner
trigger1 = (Parent,command = "a")
trigger1 = (Partner,command = "a")
trigger2 = (Parent,command = "b")
trigger2 = (Partner,command = "b")
trigger3 = (Parent,command = "c")
trigger3 = (Partner,command = "c")
trigger4 = (Parent,command = "x")
trigger4 = (Partner,command = "x")
trigger5 = (Parent,command = "y")
trigger5 = (Partner,command = "y")
trigger6 = (Parent,command = "z")
trigger6 = (Partner,command = "z")
trigger7 = (Parent,command = "start")
trigger7 = (Partner,command = "start")
trigger8 = (var(15):=0)
var(15) = 1

[State 9742, DirTurnOnAI]
type = ParentVarSet
trigger1 = var(1)
trigger1 = var(6)
trigger1 = !var(3)
trigger1 = !var(4)
trigger1 = !var(9)
var(59) = 1

[State 9742, DirTurnOffAI]
type = ParentVarSet
triggerall = var(6)
triggerall = !var(3)
triggerall = Parent,var(59)
trigger1 = (command = "holdfwd")
trigger1 = (Parent,command = "holdfwd")
trigger2 = (command = "holdback")
trigger2 = (Parent,command = "holdback")
trigger3 = (command = "holdup")
trigger3 = (Parent,command = "holdup")
trigger4 = (command = "holddown")
trigger4 = (Parent,command = "holddown")
var(59) = 0

[State 9742, ButtonTurnOnAI]
type = ParentVarSet
trigger1 = var(5)
trigger1 = var(7)
trigger1 = !var(2)
trigger1 = !var(15)
var(59) = 1

[State 9742, ButtonTurnOffAI]
type = ParentVarSet
triggerall = var(7)
triggerall = !var(2)
triggerall = !var(8)
trigger1 = (command = "a")
trigger1 = (Parent,command = "a")
trigger2 = (command = "b")
trigger2 = (Parent,command = "b")
trigger3 = (command = "c")
trigger3 = (Parent,command = "c")
trigger4 = (command = "x")
trigger4 = (Parent,command = "x")
trigger5 = (command = "y")
trigger5 = (Parent,command = "y")
trigger6 = (command = "z")
trigger6 = (Parent,command = "z")
trigger7 = (command = "start")
trigger7 = (Parent,command = "start")
var(59) = -1

[State 9742, UnPauseCheck]
type = VarSet
triggerall = var(2)
triggerall = !var(4)
trigger1 = var(7)
trigger2 = (var(2) = 2)
trigger2 = (var(2):=0)
var(2) = 2

[State 9742, Goodbye]
type = DestroySelf
trigger1 = Parent,var(59)
trigger2 = !(Parent,Alive)
trigger3 = (RoundState != 2)

[State 9742, HitPauseCheck]
type = VarSet
trigger1 = var(6)
trigger2 = var(7)
trigger3 = !(Parent,HitPauseTime)
var(4) = Parent,HitPauseTime

[State 9742, Delay]
type = VarSet
trigger1 = (var(1):=1)
var(5) = !var(7)


;------------------
; XOR Method's HitPauseTime Helper State

[StateDef 9743]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 9743, Safety]; Just in case your opponent is very poorly coded.
type = SelfState
trigger1 = !IsHelper
value = 0

[State 9743, HitPauseTime]
type = VarSet
trigger1 = !(Parent,HitPauseTime)
trigger2 = (GameTime>Parent,var(57))
var(1) = Parent,HitPauseTime

[State 9742, Goodbye]
type = DestroySelf
trigger1 = (Parent,var(59) = 1)
trigger2 = !(Parent,Alive)
trigger3 = (RoundState != 2)
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


[Statedef -3]
; These next two controllers must be placed here, after the above CPU
; VarSet controller and before the below GameTime VarSet controller.
[State -3, Reset]
type = VarAdd
trigger1 = var(56) > 0 && !IsHelper
var(56) = -1

[State -3, Delay]
type = VarSet
trigger1 = var(57) < GameTime-1 && !IsHelper
var(56) = 31
IgnoreHitPause = 1

[Statedef -3]
[State -3, AI Helper - Compatibly Partnered Version]
type = Helper
trigger1 = !var(59) && !IsHelper
trigger1 = !NumHelper(9742)
trigger1 = Alive && RoundState = 2
trigger1 = NumPartner
trigger1 = Partner,SelfAnimExist(9741)
HelperType = normal
name = "AI Helper (Simul Version)"
ID = 9742
pos = 9999999,99999
StateNo = 9742
KeyCtrl = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

; If you want to use the Guard mode, Dummy mode, Distance, or Button jam dummy
; control options in Training mode without activating the dummy's AI while
; working on the character, then all you need to do is temporarily disable
; this controller.  Or, if you want to permanently disable this controller in
; Training mode, then you could use the Training mode detection code available
; from my site ( http://www.mugenguild.net/~winane/ ), and then just add a
; "(var(59)&63)>30" triggerall to this controller.
; Alternatively, you can just set "Dummy control" to "Manual", press a P2 button
; to kill the AI helper, and then set dummy control back to "Cooperative".  (In
; fact, setting dummy control to manual isn't even necessary, if you press the
; P2 button prior to the first time you pause.)
[State -3, AI Helper]
type = Helper
triggerall = !var(59) && !IsHelper
triggerall = !NumHelper(9741)
triggerall = Alive && RoundState = 2
trigger1 = !NumPartner
trigger2 = !(Partner,SelfAnimExist(9741))
HelperType = normal
name = "AI Helper"
ID = 9741
pos = 9999999,99999
StateNo = 9741
KeyCtrl = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647


[State -3, TurnBackOnAI]
type = VarSet
trigger1 = var(59) = -2 && !IsHelper
trigger1 = Alive && RoundState = 2
var(59) = 1

; It is very important that this controller NOT be moved to State -2, as putting
; it there would defeat the entire purpose of the controller, allowing the
; helper method to erroneously set the AI variable.
; And within State -3, don't put any ChangeState controllers before this
; controller, lest you unnecessarily delay your character's AI activation.
[State -3, GameTimeVar]
type = VarSet
trigger1 = !IsHelper
var(57) = GameTime
IgnoreHitPause = 1

;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
