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
; RUN_FWD
;Project X Run
; RUN_FWD
[StateDef 100]
type    = S
movetype = I
physics = N
anim = 100
sprpriority = 1
velset = 5, 0
ctrl = 0

[State 0, Explod]
type = Explod
trigger1 = time = 5
trigger2 = time = 7
trigger3 = time = 9
trigger4 = time = 11
trigger5 = time = 13
trigger6 = time = 15
trigger7 = time = 17
trigger8 = time = 19
trigger9 = time = 21
trigger10 = time = 23
trigger11 = time = 25
trigger12 = time = 27
anim = 36 + ((Random * 4) / 1000)
ID = 103
pos = -27,-43-(Random/50)
vel = .3,-.5
accel = 0,0.025
scale = .5,.5
facing = -1
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = 66
sprpriority = 5
removeongethit = 0

[State 0, Explod]
type = Explod
triggerall = numexplod(42)<42
trigger1 =  timemod = 3,1
anim = 30 + ((Random * 6) / 1000)
ID = 42
pos = 0,4-(Random/500)
postype = p1;
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,0.5
sprpriority = 15
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 100,0

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
trigger1 = command = "holdup";Time = 135
value = 40
ctrl = 1

[State 100, 4]
type = ChangeState
trigger1 = command = "x";Time = 135
value = 200
ctrl = 0

[State 100, 4]
type = ChangeState
trigger1 = command = "y";Time = 135
value = 210
ctrl = 0

[State 100, 4]
type = ChangeState
trigger1 = command = "z";Time = 135
value = 220
ctrl = 0

[State 100, 4]
type = ChangeState
trigger1 = command = "a";Time = 135
value = 230
ctrl = 0

[State 100, 4]
type = ChangeState
trigger1 = command = "b";Time = 135
value = 240
ctrl = 0

[State 100, 4]
type = ChangeState
trigger1 = command = "c";Time = 135
value = 250
ctrl = 0

[State 100, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


; RUN_FWD
[Statedef 105]
type    = S
movetype = I
physics = N
anim = 105
sprpriority = 1
velset = -5, 0
ctrl = 0

[State 0, Explod]
type = Explod
triggerall = numexplod(42)<42
trigger1 =  timemod = 3,1
anim = 30 + ((Random * 6) / 1000)
ID = 42
pos = 0,4-(Random/500)
postype = p1;
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,0.5
sprpriority = 15
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 100,0

[State 0, Explod]
type = Explod
trigger1 = time = 5
trigger2 = time = 7
trigger3 = time = 9
trigger4 = time = 11
trigger5 = time = 13
trigger6 = time = 15
trigger7 = time = 17
trigger8 = time = 19
trigger9 = time = 21
trigger10 = time = 23
trigger11 = time = 25
trigger12 = time = 27
anim = 36 + ((Random * 4) / 1000)
ID = 103
pos = 35,-70-(Random/50)
vel = .3,-.5
accel = 0,0.025
scale = .5,.5
facing = -1
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
sprpriority = 5
removeongethit = 0

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
trigger1 = animtime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

;=========AvX Special Get Hit State Recognition===========
;Fvar(30)
;0 = Not Hit
;1 = Ground Bounce - stateno 5130
;2 = Wall Bounce - stateno 5045
;3 = Both

[State -2, VarSet]
type = VarSet
trigger1 = fvar(30) = 0
trigger1 = enemynear,stateno = 5132 ;Ground Bounce
fv = 30
value = 1

[State -2, VarSet]
type = VarSet
trigger1 = fvar(30) = 0
trigger1 = enemynear,stateno = 5048 ;Wall Bounce
fv = 30
value = 2

[State -2, VarSet]
type = VarSet
trigger1 = fvar(30) = 2
trigger1 = enemynear,stateno = 5132 ;Ground Bounce
trigger2 = fvar(30) = 1
trigger2 = enemynear,stateno = 5048 ;Wall Bounce
fv = 30
value = 3

[State -2, VarSet]
type = VarSet
trigger1 = fvar(30) > 0
trigger1 = enemynear,movetype!=H
fv = 30
value = 0

[State -2, VarSet];OTG Recognition
type = VarSet
trigger1 = fvar(29) > 0
trigger1 = stateno != 1200
trigger1 = enemynear,movetype!=H
fv = 29
value = 0

[State -2, VarSet]
type = ParentVarSet
trigger1 = hitdefattr = SCA, NA, NP, NT
trigger1 = enemynear, movetype =H
fv = 25
value = 1

[State -2, VarSet]
type = VarSet
trigger1 = hitdefattr = SCA, NA, NP, NT
trigger1 = enemynear, movetype =H
fv = 25
value = 1

[State -2, VarSet]
type = VarSet
trigger1 = movetype !=A
trigger1 = enemynear, movetype !=H
fv = 25
value = 0

[State -2, VarSet]
type = ParentVarSet
trigger1 = hitdefattr = SCA, SA, SP, ST
trigger1 = enemynear, movetype =H
fv = 26
value = 1

[State -2, VarSet]
type = VarSet
trigger1 = hitdefattr = SCA, SA, SP, ST
trigger1 = enemynear, movetype =H
fv = 26
value = 1

[State -2, VarSet]
type = VarSet
trigger1 = movetype !=A
trigger1 = enemynear, movetype !=H
fv = 26
value = 0

[State -2, VarSet]
type = ParentVarSet
trigger1 = hitdefattr = SCA, HA, HP, HT
trigger1 = enemynear, movetype =H
fv = 27
value = 1

[State -2, VarSet]
type = VarSet
trigger1 = hitdefattr = SCA, HA, HP, HT
trigger1 = enemynear, movetype =H
fv = 27
value = 1

[State -2, VarSet]
type = VarSet
trigger1 = movetype !=A
trigger1 = enemynear, movetype !=H
fv = 27
value = 0

[State -2, Varadd];hitcount
type = Varadd
trigger1 = movehit
trigger1 = enemynear, time = 0
trigger1 = p2stateno = [5000,5899]
fv = 28
value = 1
ignorehitpause = 1

[State -2, VarSet];hitcount
type = VarSet
trigger1 = movetype !=A
trigger1 = enemynear, movetype !=H
trigger1 = p2stateno != [5000,5899]
fv = 28
value = 0



;==============================

[State 0, VarSet]
type = VarSet
triggerall = var(41) = 0
trigger1 = movehit
v = 41
value = 1


[State 0, VarSet]
type = VarSet
triggerall = var(42) != 0
trigger1 =  ctrl
v = 42
value = 0

[State 0, VarSet]
type = VarSet
triggerall = var(43) != 0
trigger1 =  ctrl
v = 43
value = 0

[State 0, Explod]
type = Explod
triggerall = numexplod(1280)=0
trigger1 = p2stateno = 1900 && p2movetype = H
anim = 1001
ID =1001
pos = 40,-70
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 1,1
sprpriority = 10
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 0, Explod]
type = Explod
triggerall = numexplod(1003)=0
trigger1 = p2stateno = 1070 && p2movetype = H
trigger2 = p2stateno = 830 && p2movetype = H
anim = 1003
ID = 1003
pos = 0,-100
postype = p2;,front,back,left,right
bindtime = -1
removetime = -2
supermove
pausemove
scale = 0.5,0.5
sprpriority = 10
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
triggerall = numexplod(1015)=0
trigger1 = p2stateno = 1080 && p2movetype = H
anim = 1015
ID = 1015
pos = 0,-80
postype = p2;,front,back,left,right
bindtime = -1
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 10
ownpal = 1
removeongethit = 1


[State 0, Explod]
type = Explod
triggerall = numexplod(3231)=0
trigger1 = p2stateno = 3250 && p2movetype = H
anim = 3231
ID = 3231
pos = 0,0
postype = p2;,front,back,left,right
bindtime = -1
removetime = -1
supermove
pausemove
scale = 1,1
sprpriority = 10
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
triggerall = numexplod(3231)=1
triggerall = numexplod(3232)=0
trigger1 = p2stateno != 3250
anim = 3232
ID = 3232
pos = 0,0
postype = p2;,front,back,left,right
bindtime = 1
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 10
ownpal = 1
removeongethit = 1


[State 0, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3231)=1
trigger1 = p2stateno != 3250
id = 3231


;[State 0, Explod]
;type = Explod
;triggerall = numexplod(3320)=0
;trigger1 = p2stateno = 3350 && p2movetype = H
;anim = 3320
;ID = 3320
;pos = 0,0
;postype = back;,left,right
;bindtime = -1
;removetime = 150
;scale = 0.5,0.5
;sprpriority = 150
;ontop = 0
;shadow = 0,0,0
;ownpal = 0
;removeongethit = 0
;
;[State 0, RemoveExplod]
;type = RemoveExplod
;triggerall = numexplod(3320)=1
;trigger1 = p2stateno != 3350
;id = 3320



[State -2, debug]       ; (debug clipboard)
type = DisplayToClipboard
trigger1 = 1 ;Alive
text = "PalNo: %d - Pos Y: %f"
params = PalNo, Pos Y

[State -2, PosSet]
type = PosSet
trigger1 = Alive
z = 0.9





[State -2, jump landing sound]   ; custom jump-landing sound
triggerall = Time = 1
trigger1 = stateno = 52
trigger2 = stateno = 106
trigger3 = stateno = 661
type = PlaySnd
persistent = 0
value = 8,1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(3154)>0
trigger1 = ctrl
id = 3154

[State -2, gethits]         ; custom gethit sounds
type = PlaySnd
triggerall = (stateno = [5000,5210]) && (Time = 0) && (!IsHelper)
trigger1 = anim = 5002  ; standing hard hit high
trigger2 = anim = 5012  ; stand hard hit low
trigger3 = anim = 5022  ; crouching hard hit
trigger4 = anim = 5030  ; air hit
trigger5 = anim = 5070  ; tripped
persistent = 0
value = 171,19

[State -2, gethits]         ; custom gethit sounds
type = PlaySnd
triggerall = (stateno = [5000,5210]) && (Time = 0) && (!IsHelper)
trigger1 = anim = 5001  ; standing hard hit high
trigger2 = anim = 5011  ; stand hard hit low
trigger3 = anim = 5021  ; crouching hard hit
persistent = 0
value = 171,18


[State -2, superjump opponent locator]
type = Helper
triggerall = (NumHelper(0) = 0)
trigger1 = (Pos Y < -200) && (P2Dist Y > 50)
ID = 0
pos = 0,-120
postype = p2
stateno = 910
facing = 1


;damage dampenering
[State -2, Damage Dampener]; Scaling in action
type= attackmulset
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.96, 0.92**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1


[State -2]
type = ScreenBound
triggerall = StateNo = 810
trigger1 = P2StateNo = 830
value = p2bodydist x < 30 && BackEdgeDist < 30


[State -2]
type = null;ChangeState
triggerall = roundstate = 2
triggerall = Movetype != H && Stateno != 100
trigger1 = BackEdgeDist < -10 -const(size.ground.front)-const(size.ground.back)
trigger1 = StateType != A
value = 101


[State 0, Helper]
type = Helper
triggerall = numhelper(126) = 0
trigger1 =  (anim = 120 || anim = 130 || anim = 140 || anim = 150)
helpertype = normal ;player
name = "escudo"
ID = 126
stateno = 126
pos = 0,0
postype = p1    ;p2,front,back,left,right
ownpal = 1
ignorehitpause = 1
persistent = 1

[State -2, StopAI]
type = VarSet
triggerall = var(59) > 0 && !IsHelper
trigger1 = RoundState != 2
trigger2 = !Alive
var(59) = -2
IgnoreHitPause = 1

[State -2, Simplifier]
type = VarSet
triggerall = !IsHelper
trigger1 = var(59) = 1
trigger2 = var(0):=0
var(0) = 1
IgnoreHitPause = 1

[State -2, DTC]
type = DisplayToClipboard
trigger1 = 1
text = "var(59) = %d, var(0) = %d, RoundState = %d, IsHomeTeam = %d, var(57) = %d"
params = var(59), var(0), RoundState, IsHomeTeam, var(57)
IgnoreHitPause = 1

[State -2, ATC]
type = AppendToClipboard
trigger1 = 1
text = "\nMatchNo = %d, var(56) = %d"
params = MatchNo, var(56)
IgnoreHitPause = 1

; Essa VAR só será ligada quando um round anterior for vencido.

[State -2, 1]
type = varset
trigger1 = Win = 1
;trigger1 = !NumHelper(9010)  ;Helper que tonteia o inimigo.
var(58) = 1

; Quando oponente morre, ela reseta.

[State -2, 2]
type = null;varset
trigger1 = Win = 1
trigger1 = NumHelper(9010)
trigger1 = p2life != 0
var(58) = 0

; Qaundo oponente estiver com 1 de energia, ele morre com qualquer golpe.

[State -2, 3]
type = AttackMulSet
triggerall = !Var(58) && p2Life <= 1
trigger1 = RoundNo != 1 && Win = 0
trigger2 = P2StateNo = 003
value = 9999

; Sem música
[state -2, 4]
type = AssertSpecial
trigger1 = NumHelper(9010)=1
flag = nobardisplay
;flag2 = nomusic

;----------------------------------------------------------------------

; Sem lentidão no K.O.
[State -2, 2]
type = AssertSpecial
trigger1 = 1
flag = nokoslow
ignorehitpause = 1

;----------------------------------------------------------------------

; Para ter noção de distancia entre P1 e P2 .
[State -2, 4]
type = DisplayToClipBoard
trigger1 = 1
text = "P2BodyDist X %f, P2BodyDist Y %f, Var(58) = %d StageID:%d"
params = P2bodydist x, p2bodydist y, Var(58), var(22)

;-------------------------------------------------------
;batendo na parede "efeito"

[state -2, Wall HitSpark by incas]
type = explod
triggerall = Enemy, StateNo = 3507
trigger1 = Enemy, Animelemtime(1)=1
anim = 10170
postype = P2
pos = -40,-50
sprpriority = 999
ignorehitpause = 1
persistent = 1
supermove = 1
supermovetime = 20
pausemovetime = 20
removetime = 20

[State -2, Wall HitSpark - PlaySnd by by incas]
type = PlaySnd
triggerall = Enemy, StateNo = 3507
trigger1 = Enemy, Animelemtime(1)=1
value = 12,1
volume = 0
channel = 5


;---------------------------------------------------------

[State -2,HitCountAdd]
Type=VarAdd
TriggerAll=EnemyNear,Time=0
Trigger1=MoveHit|ProjHit=1
Trigger2=NumHelper>0
Trigger2=Helper,MoveHit
var(3)=Ifelse(uniqhitcount>hitcount,2,1+(var(3)<0))
IgNoreHitPause=1
[State -1.Hitfinish]
Type=VarSet
Trigger1=var(3)>0&P2MoveType!=H
var(3)=0

[State -2,HitCountAdd]
Type=VarAdd
TriggerAll=EnemyNear,Time=0
Trigger1=MoveHit|ProjHit=1
Trigger2=NumHelper>0
Trigger2=Helper,MoveHit
var(2)=Ifelse(uniqhitcount>hitcount,2,1)
IgNoreHitPause=1
[State -1.Hitfinish]
Type=VarSet
Trigger1=var(3)>0&P2MoveType!=H
var(3)=0

;----------------------------------------------------------
[State FINISH HIM!!]
type = Helper
trigger1 = ctrl && P2Life <= 1 && !NumHelper(9010) && P2StateNo != 003 && statetype = S && RoundNo != 1
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = var(58) > 0
ID = 9010
pos = 160, -140
postype = left
stateno = 9010
helpertype = normal
name = "Finish Him!!"
keyctrl = 0
ownpal = 1;

[State noDaño]
type = NotHitBy
trigger1 = numhelper(9010)
trigger1 = helper(9010),anim = 9010
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 10
ignorehitpause = 1

;---------------------------------------------------

[State -2, Sangue Pingando]
type = Helper
triggerall = (time%25) = 1
triggerall = var(22)=0
trigger1 = Enemy, Anim=70772
helpertype = Normal
ID = 695
name = "Sanguepingando"
postype = p2
facing = 1
pos = -20,-170
stateno = 695
ownpal = 1
keyctrl = 0
size.xscale=1
size.yscale=1


[State -2, Sangue Pingando]
type = Helper
triggerall = NumHelper(9010)=1
triggerall = (time%15) = 1
triggerall = Enemy, Anim=70772
trigger1 = (var(22) = 5011||var(22) = 5033)
helpertype = Normal
ID = 695
name = "Sanguepingando"
postype = p2
pos = -40,-260
stateno = 695
ownpal = 1
keyctrl = 0
size.xscale=1
size.yscale=1


[State -2, Sangue Pingando]
type = Helper
;triggerall = NumHelper(9010)=1
triggerall = (time%15) = 1
triggerall = Enemy, Anim=70772
trigger1 = (var(22)!= 5011||var(22)!= 5033||var(22)!=5005||var(22)!=5014||var(22)!=5015||var(22)!=5008||var(22)!=5018||var(22)!=5010||var(22)!=5017||var(22)!= 5019)
helpertype = Normal
ID = 695
name = "Sanguepingando"
postype = p2
pos = -40,-240
stateno = 695
ownpal = 1
keyctrl = 0
size.xscale=1
size.yscale=1

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
[Statedef -3]
[State -3, Landing Dust]
type = Explod
triggerall =  NumExplod(60) < 1
triggerall = Time = 3
trigger1 = StateNo = 52 ;Jump land
trigger2 = StateNo = 106 ;Run-back land
trigger3 = PrevStateNo = 52 && StateNo = 11 ;Jump land/crouch
trigger4 = stateno = 661
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
trigger2 = StateNo = 106 ;Run-back land
trigger3 = stateno = 661
value = 8, 1



[State -3, Landing Dust]
type = Explod
triggerall =  NumExplod(2180) = 0
trigger1 = pos y = 0
trigger1 = time > 20
trigger1 = lose = 1
persistent = 0
ID = 2180
anim = 2180
postype = p1
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -22
ownpal = 1

[State -2, gethit light]
type = PlaySnd
triggerall = Time = 1 && !IsHelper
triggerall = Random <= 499
trigger1 = anim = 5000  ; standing weak hit high
trigger2 = anim = 5010  ; stand weak hit low
trigger3 = anim = 5020  ; crouching weak hit
persistent = 0
channel = 0
persistent = 1
value = 5000,20+((Random * 4) / 1000)

[State -2, gethit med]
type = PlaySnd
triggerall = Time = 1 && !IsHelper
triggerall = Random <= 499
trigger1 = anim = 5001  ; standing med hit high
trigger2 = anim = 5011  ; stand med hit low
trigger3 = anim = 5021  ; crouching med hit
trigger4 = anim = 5030  ; air hit
persistent = 0
channel = 0
persistent = 1
value = 5000,15+((Random * 4) / 1000)

[State -2, gethit hard]
type = PlaySnd
triggerall = (stateno = [5000,5210]) && (Time = 1) && (!IsHelper)
triggerall = Random <= 350
trigger1 = anim = 5002  ; standing hard hit high
trigger2 = anim = 5012  ; stand hard hit low
trigger3 = anim = 5022  ; crouching hard hit
trigger4 = anim = 5030  ; air hit
trigger5 = anim = 5070  ; tripped
persistent = 0
channel = 0
persistent = 1
value = 5000,9+((Random * 6) / 1000)

; desperation quote
[State -3, PlaySnd]
type = PlaySnd
trigger1 = (Life <= 90) && (var(51) = 0)
value = 5000,4

[State -3, VarSet]
type = VarSet
triggerall = var(51) != 1
trigger1 = Life <= 90
v = 51
value = 1

; desperation quote
[State -3, PlaySnd]
type = PlaySnd
trigger1 = (Life <= 0) && (var(50) = 0)
value = 5000,((Random * 3) / 1000)

[State -3, VarSet]
type = VarSet
triggerall = var(50) != 1
trigger1 = Life <= 0
v = 50
value = 1


;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------

