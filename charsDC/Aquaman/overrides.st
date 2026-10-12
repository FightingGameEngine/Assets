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
[Statedef 100]
type    = A
movetype = I
physics = N
anim = 100
sprpriority = 1
velset = const(velocity.run.fwd.x), 0

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S8,0

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S172,17

[State 100, lines]
type = Explod
trigger1 = time = 0
anim = 101
ID = 101
removetime = -2
vel = const(velocity.run.fwd.x), 0
postype = p1
pos = -20,0
sprpriority = 5
bindtime = 1
ownpal = 1

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
trigger1 = Time = 35
value = IfElse(Pos Y < 0, 948, 0)
ctrl = 1


;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State -2, debug]       ; (debug clipboard)
type = DisplayToClipboard
trigger1 = 1 ;Alive
text = "PalNo: %d - X Dist: %f"
params = PalNo, P2bodydist X

[State -2, PosSet]
type = PosSet
trigger1 = Alive
z = 0.9

[State 0, ChangeState]
type = ChangeState
triggerall = Var(59) >= 1
trigger1 = Stateno = 40
value = 0
ctrl = 1
;anim =
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
triggerall = Var(59) >= 1
trigger1 = Stateno = 20
value = 21
;anim =
ignorehitpause = 1


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

[State 0, ChangeState]
type = ChangeState
triggerall = stateno = 0
trigger1 = enemynear,name="Namor" && enemynear, var(10) = 1
value = 3301
ctrl = 0
;anim =
;ignorehitpause =
;persistent =


  [State -2, Clear DF Var]
type = VarSet
trigger1 = RoundState = 4
v = 5
value = 0

[State -2, Remove Foreground]
type = AssertSpecial
trigger1 = var(5) = 1
flag = NoFG
ignorehitpause = 1

[State -2, Remove BackGround]
type = AssertSpecial
triggerall = NumExplod(1005) = 1
trigger1 = var(5) = 1
flag = NoBG
ignorehitpause = 1




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

[State -3, AI‹N“®—pƒwƒ‹ƒp[]
type=helper
trigger1=!NumHelper(10000)
trigger1=roundstate=2
trigger1=alive
trigger1=var(59)=0
Trigger1=PrevStateNo=191||PrevStateNo=5900
Trigger1=ctrl&&stateno=0
helpertype=normal
name="AI"
stateno=10000
ID=10000
pos=9999,9999
keyctrl=1
pausemovetime=2147483647
supermovetime=2147483647
persistent = 0

;”O‚Ì‚½‚ß«‚à•t‚¯‚Ä‚¨‚­
[State -3, ŠÖŒW–³‚¢ƒXƒe[ƒg‚És‚©‚È‚¢‚æ‚¤‚É]
type=changestate
trigger1= ishelper(10000)
trigger1= stateno!=10000
value=10000

[State -3, ???????]
type = VarRandom
triggerall = var(59) >= 1
;triggerall = stateno = [0,12]
triggerall = animelemtime(2) > 0
;trigger1   = ctrl
trigger1   = roundstate = 2
v = 58
range = 0,99

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
triggerall = WinKO && NumHelper(8900) = 0
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
trigger1 = (RoundState = 3) && (Life > 0) && (NumExplod(12000) = 0)
anim = 12000
ID = 12000
pos = 0,0
postype = left
bindtime = 100
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
;[State -3, Overide Hits]
;type = HitOverRide
;trigger1 = StateNo = 3301  ||  StateNo = 3320  ||   StateNo = 3330
;trigger2 = StateNo = 3340  ||  StateNo = 3350  ||   StateNo = 3360
;trigger3 = StateNo = 3370  ||  StateNo = 3380  ||   StateNo = 3210
;;trigger4 = StateNo = 1012
;time = 2
;slot = 0
;attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;stateno = 3210


; Decrement DF counter if in DF mode
[State -3, Decrement DF]
type = VarAdd
triggerall = var(4) > 0
trigger1 = var(5) = 1
trigger1 = StateNo != 3100
v = 4
value = -1
ignorehitpause = 1

; Leave DF mode if counter = 0 or other conditions met
[State -3, Leave DF]
type = ChangeState
triggerall = var(5) = 1
triggerall = StateNo != 3100
trigger1 = var(4) <= 0
trigger2 = life = 0
trigger3 = Win
trigger4 = command = "qcb_2k"
trigger4 = !var(11)
trigger5 = RoundState = 3
value = 3200
;------------
; Hyper Armor for DF mode
[State -3, DF VarSet]
type = VarSet
trigger1 = var(5) = 1
trigger1 = MoveType != H
var(3) = StateNo

[State -3, Overide Hits]
type = HitOverRide
trigger1 = var(5) = 1
time = 2
slot = 0
attr = SCA, AA, AP, AT
stateno = 3211

[State -3, Don't Leave 3000's During DF]
type = ChangeState
trigger1 = var(5) = 1
trigger1 = Movetype = H
trigger1 = Stateno != 3211
value = 3050

[State -3, Remove Foreground]
type = AssertSpecial
trigger1 = var(5) = 1
flag = NoFG
ignorehitpause = 1


[State -3, 2]
type = PlaySnd
triggerall = Time = 1
triggerall = Life
triggerall = random % 10 > 5
trigger1 = stateno = 5000 || stateno = 5020
trigger1 = anim != 5000 && anim != 5010
trigger2 = stateno = 5010
trigger2 = anim != 5020
value = 172,7
channel = 0
ignorehitpause = 1
volume = 255

[State -3, 2]
type = PlaySnd
triggerall = Time = 1
triggerall = Life
triggerall = random % 10 > 5
trigger1 = stateno = 5000 || stateno = 5020
trigger1 = anim != 5000 && anim != 5010
trigger2 = stateno = 5010
trigger2 = anim != 5020
value = 172,9
channel = 0
ignorehitpause = 1
volume = 255
;========================================================================
;========================================================================
;--------------------A.I Commands----------------------------------------

[State -1, Throw]
type = ChangeState
value = 800
TriggerAll=var(59)
TriggerAll=RoundState = 2
TriggerAll=StateType != A
TriggerAll=EnemyNear,StateType != L
;TriggerAll=EnemyNear,MoveType != H
TriggerAll=EnemyNear,MoveType = I
TriggerAll=P2BodyDist X=[-5,10]
TriggerAll=EnemyNear,StateType!=A
triggerall=Frontedgedist >= 50
Trigger1=Ctrl||Stateno = 21 || Stateno = 52
Trigger1 = Random <= 500
Trigger2=Ctrl||Stateno = 21 || Stateno = 52
Trigger2 = (EnemyNear,StateNo=[120,159])

[State -1, Throw]
type = ChangeState
value = 800
TriggerAll=var(59) != 0
TriggerAll=RoundState = 2
TriggerAll=StateType != A
TriggerAll=EnemyNear,StateType != L
TriggerAll=EnemyNear,MoveType != H
TriggerAll=EnemyNear,MoveType = I
TriggerAll=P2BodyDist X=[-5,10]
TriggerAll=EnemyNear,StateType!=A
triggerall=Frontedgedist >= 50
Trigger1=Ctrl||StateNo = 100 || (Stateno=21)
Trigger1 = Random <= var(59)*38
;trigger1 = Var(10)<=0
Trigger2=Ctrl||StateNo = 100 || (Stateno=20)
Trigger2 = (EnemyNear,StateNo=[120,159])

[State -1, Idle]
type = changestate
value = 0
triggerall = Var(59) && numenemy&&roundstate = 2 && statetype != A && enemynear, movetype = A && (p2stateno=[5100,5220])
trigger1=ctrl

[State -1, AI run]
type=changestate
value=21
triggerall = roundstate = 2
triggerall = p2stateno!=800 || p2bodydist x >10
triggerall=(var(59)!=0) && statetype!=A && ctrl
triggerall=p2statetype!=L
trigger1= (stateno!=[20,105]) && p2movetype!=A && (p2bodydist x=[5,149])

;AI Coding
[State -3];‹ó’†Žž
Type = ChangeState
Value = 120
TriggerAll = RoundState = 2
TriggerAll = Var(59) > 0
TriggerAll = StateType = A
TriggerAll = Ctrl || (Stateno = [20,21])
TriggerAll = IfElse(Facing*(EnemyNear,Facing)*P2Dist X >0,(Abs(P2Dist X) <= 60),1)
Trigger1 = InGuardDist || (Facing*(EnemyNear,Facing)*P2Dist X >0 && P2MoveType = A)
Trigger1 = EnemyNear,HitDefAttr = SC,NA,SA,HA,NP,SP,HP || EnemyNear,HitDefAttr = A,NA,SA,HA,NP,SP,HP
Trigger2 = InGuardDist || Facing*(EnemyNear,Facing)*P2Dist X >0 
Trigger2 = Enemy,NumProj > 0 
Trigger3 = EnemyNear,HitDefAttr = SC,NA,SA,HA,NP,SP,HP || EnemyNear,HitDefAttr = A,NA,SA,HA,NP,SP,HP
Trigger3 = P2BodyDist X < 0
Trigger4 = EnemyNear,Vel X > 0
Trigger4 = EnemyNear,HitDefAttr = SC,NA,SA,HA,NP,SP,HP || EnemyNear,HitDefAttr = A,NA,SA,HA,NP,SP,HP
Trigger5 = Enemy,NumHelper
Trigger5 = InGuardDist

[State -3];’nãŽž
Type = ChangeState
Value = 120
TriggerAll = RoundState = 2
TriggerAll = Var(59) > 0
TriggerAll = StateType != A
TriggerAll = Ctrl || (Stateno = [20,21])
TriggerAll = IfElse(Facing*(EnemyNear,Facing)*P2Dist X >0,(Abs(P2Dist X) <= 60),1)
Trigger1 = InGuardDist || (Facing*(EnemyNear,Facing)*P2Dist X >0 && P2MoveType = A)
Trigger1 = EnemyNear,HitDefAttr = SC,NA,SA,HA,NP,SP,HP || EnemyNear,HitDefAttr = A,NA,SA,HA,NP,SP,HP
Trigger2 = InGuardDist || Facing*(EnemyNear,Facing)*P2Dist X >0 
Trigger2 = Enemy,NumProj > 0 
Trigger3 = EnemyNear,HitDefAttr = SC,NA,SA,HA,NP,SP,HP || EnemyNear,HitDefAttr = A,NA,SA,HA,NP,SP,HP
Trigger3 = P2BodyDist X < 0
Trigger4 = EnemyNear,Vel X > 0
Trigger4 = EnemyNear,HitDefAttr = SC,NA,SA,HA,NP,SP,HP || EnemyNear,HitDefAttr = A,NA,SA,HA,NP,SP,HP
Trigger5 = Enemy,NumHelper
Trigger5 = InGuardDist



[State -1, Fall Recovery]
type = changestate
value = 5210
triggerall = Var(59) != 0
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall= stateno = 5050 && canrecover
triggerall = vel y > 0 && pos y < -20
trigger1 = random <= 850

[State -1, Fall Recovery]
type = changestate
value = 5200
triggerall = Var(59) != 0
triggerall= numenemy
triggerall= roundstate = 2 && alive
triggerall= stateno = 5050 && gethitvar(fall.recover)
trigger1 = vel y > 0 && pos y >= -5

[State -3,??????]
Type     = ChangeState
Value    = 42
Triggerall = var(59) > 0
Triggerall = StateType != A
Triggerall = EnemyNear,StateType != L
Triggerall = EnemyNear,MoveType = H
Triggerall = EnemyNear,Statetype = A
Triggerall = EnemyNear, Stateno != [120,152]
triggerall=Roundstate=2
Triggerall = !inguarddist
Triggerall = Ctrl||StateNo = 21
triggerall = p2stateno != 1110
triggerall = P2bodydist X = [20,90]
trigger1 = Random <= var(59)*60

[State -3,??????]
Type     = ChangeState
Value    = 41
Triggerall = var(59) > 0
Triggerall = StateType != A
Triggerall = EnemyNear,StateType != L
Triggerall = EnemyNear,MoveType != A
Triggerall = EnemyNear,Statetype != A
Triggerall = EnemyNear, Stateno != [120,152]
triggerall=Roundstate=2
Triggerall = !inguarddist
Triggerall = Ctrl||StateNo = 21
triggerall = P2bodydist X = [20,50]
trigger1 = Random <= var(59)*60

; Hyper1
[State -1, Hyper1]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
trigger1 = p2statetype = L
trigger1 = p2bodydist X = [-5,100]
trigger1 = Backedgedist <= 100
trigger1 = Var(58) = [70,99]
trigger1 = Ctrl || Stateno = 21
trigger2 = Teammode = Simul
trigger2 = p2stateno = [5000,5070]
trigger2 = Partner, ALIVE
trigger2 = p2bodydist X = [50,135]
trigger2 = Backedgedist >= 30
trigger2 = Var(58) = [50,85]
trigger2 = Ctrl || Stateno = 21
trigger3 = p2statetype = S
trigger3 = p2movetype = A
trigger3 = Enemy, Numproj <= 0
trigger3 = Ctrl || Stateno = 21
trigger3 = p2bodydist X = [100,205]

; Hyper1
[State -1, Hyper1]
type = ChangeState
value = 3400
triggerall = power >= 1000
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
trigger1 = p2stateno = 1110
trigger1 = Ctrl || Stateno = 21
trigger1 = p2bodydist X = [-10,100]
trigger2 = p2stateno = [5050,5070]
trigger2 = Var(58) = [60,70]
trigger2 = Ctrl || Stateno = 21
trigger2 = p2bodydist X = [50,150]
trigger2 = p2bodydist Y = [-100,0]

; Hyper1
[State -1, Hyper1]
type = ChangeState
value = 3100
triggerall = power >= 1000
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
trigger1 = Random < 25
trigger1 = p2bodydist X = [100,200]
trigger1 = p2bodydist Y = [0,50]
trigger1 = Ctrl || Stateno = 21
trigger1 = Var(58) = [50,70]
trigger1 = Life >= 200

[State -1, Hyper1]
type = ChangeState
value = 3500
triggerall = power >= 1000
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
trigger1 = p2bodydist X = [110,240]
trigger1 = p2stateno = [5050,5070]
trigger1 = Ctrl || Stateno = 21
trigger1 = Var(58) = [20,55]
trigger1 = Random < 777

;---------------------------------------------------------------------------


 

; Special1
[State -1, Special1]
type = ChangeState
value = 1100
triggerall = (!IsHelper) && enemynear, stateno != 1110
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
trigger1 = p2bodydist X = [75,105]
trigger1 = Var(58) = [40,55]
trigger1 = p2movetype = I
trigger1 = p2statetype = S
trigger1 = Ctrl || Stateno = 21
trigger2 = Stateno = 410
trigger2 = Moveguarded
trigger2 = Random < 350

; Special1
[State -1, Special1]
type = ChangeState
value = 1200
triggerall = numhelper(1201) = 0
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
trigger1 = Var(58) = [0,70]
trigger1 = p2bodydist X = [-5,80]
trigger1 = Ctrl || Stateno = 21
trigger1 = p2stateno = [5050,5070]
trigger2 = Frontedgedist <= 85
trigger2 = Stateno = 250
trigger2 = Movecontact
trigger3 = Frontedgedist <= 85
trigger3 = Stateno = 450
trigger3 = Movecontact
trigger4 = p2stateno = 1110
trigger4 = p2bodydist X = [-5,80]
trigger4 = Power < 1000
trigger4 = Ctrl || Stateno = 21

; Special1
[State -1, Special1]
type = ChangeState
value = 1400
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = numexplod(1403) = 0
triggerall = (!IsHelper) && enemynear, stateno != 1110
trigger1 = p2bodydist X = [165,210]
trigger1 = p2statetype = C
trigger1 = Random < 777
trigger1 = Ctrl || Stateno = 20
trigger2 = Stateno = 420
trigger2 = Movehit
trigger3 = Teammode = Simul
trigger3 = p2bodydist X = [165,210]
trigger3 = p2stateno = [5000,5050]
trigger3 = Ctrl || Stateno = 21
trigger4 = Ctrl || Stateno = 21
trigger4 = p2bodydist X = [100,150]
trigger4 = p2bodydist Y = [-100,-50]
trigger4 = Var(58) = [30,45]
trigger4 = p2statetype = A
trigger4 = Random <= 777

; Special1
[State -1, Special1]
type = ChangeState
value = 1000
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
trigger1 = p2bodydist X = [175,250]
trigger1 = Var(58) = [20,60]
trigger1 = Ctrl || Stateno = 21
trigger1 = p2movetype = A
trigger1 = Enemy, Numproj <= 0
trigger2 = p2bodydist X = [175,250]
trigger2 = Ctrl || Stateno = 21
trigger2 = Var(58) = [70,99]
trigger2 = p2movetype = I
trigger2 = Random < 500



;---------------------------------------------------------------------------
; Standing Push Block (AKA advancing guard)
;[State -1, SPushBlock]
;type = ChangeState
;value = 750
;triggerall = command = "pushblock" && StateType = S && !Var(59)
;trigger1 = StateNo = 130
;trigger2 = StateNo = [150, 151]
;
;;---------------------------------------------------------------------------
;; Crouching Push Block
;[State -1, CPushBlock]
;type = ChangeState
;value = 752
;triggerall = command = "pushblock" && StateType = C && !Var(59)
;trigger1 = StateNo = 131
;trigger2 = StateNo = [152, 153]
;
;;---------------------------------------------------------------------------
;; Air Push Block
;[State -1, APushBlock]
;type = ChangeState
;value = 754
;triggerall = command = "pushblock" && StateType = A && !Var(59)
;trigger1 = StateNo = 132
;trigger2 = StateNo = [154, 155]

;---------------------------------------------------------------------------
;Back Dash
[State -1, BackDash]
type = ChangeState
value = 105
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
trigger1 = p2stateno = 5120
trigger1 = p2bodydist X = [-5,20]
trigger1 = Ctrl || Stateno = 21
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) >= 0
triggerall = numenemy
triggerall = statetype != A && life >= 0.5 * lifemax
triggerall = (enemynear, life) <= 0.5 * (enemynear, lifemax)
triggerall = Stateno != 195
triggerall = Prevstateno != 195
trigger1 = ctrl
trigger1 = p2dist x >= 160 && !(enemynear, ctrl)
trigger1 = (enemynear, movetype = H) && (enemynear, hitfall) && random < 100

;---------------------------------------------------------------------------
; Throws
;
; (none yet)
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Standing basics
;
; Punches: 200, 210, 220
; Kicks: 230, 240, 250
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = Var(58) = [0,20]
trigger1 = p2bodydist X = [-5,50]
trigger1 = Ctrl || Stateno = 21
trigger1 = p2statetype != A

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 200
trigger1 = Movecontact

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Z]
type = ChangeState
value = 800
triggerall = var(59)
Triggerall = Roundstate = 2
Triggerall = Statetype != A
triggerall = EnemyNear,statetype != L
triggerall = EnemyNear,movetype != H
triggerall = EnemyNear,stateno != [130,153]
triggerall = EnemyNear,stateno != [5000,5299]
Triggerall = P2bodyDist x = [-10,10]
triggerall = (stateno=[120,140])||(prevstateno=[800,810])||(StateNo=800&&AnimElemTime(7)>=0)||(StateNo=810&&AnimElemTime(7)>=0)||!inguarddist
triggerall = ctrl||(stateno=[120,140])||stateno=21
trigger1 = EnemyNear,stateno=52




[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 210
trigger1 = MoveHit

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = Var(58) = [21,40]
trigger1 = p2bodydist X = [-5,45]
trigger1 = Ctrl || Stateno = 21
trigger1 = p2statetype != A
;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 230
trigger1 = Movecontact
;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 240
trigger1 = MoveHit

;---------------------------------------------------------------------------
; Crouching basics
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = Var(58) = [41,60]
trigger1 = p2bodydist X = [-5,40]
trigger1 = Ctrl || Stateno = 21
trigger1 = p2statetype != A

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 400
trigger1 = Movecontact

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 410
trigger1 = Movehit

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = Var(58) = [61,90]
trigger1 = p2bodydist X = [-5,40]
trigger1 = Ctrl || Stateno = 21
trigger1 = p2statetype != A

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 430
trigger1 = Movecontact

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 440
trigger1 = Movehit
trigger2 = Stateno = 210
trigger2 = Moveguarded
trigger3 = stateno = 240
trigger3 = Moveguarded

;---------------------------------------------------------------------------
; Air basics
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = Roundstate = 2
triggerall = (StateType = A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = p2bodydist Y = [-85,5]
trigger1 = p2bodydist X = [-5,45]
trigger1 = Ctrl
trigger1 = p2statetype = A

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = Roundstate = 2
triggerall = (StateType = A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 600
trigger1 = Movecontact

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = Roundstate = 2
triggerall = (StateType = A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 610
trigger1 = Movecontact
trigger2 = Stateno = 105
trigger2 = Ctrl

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = Roundstate = 2
triggerall = (StateType = A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = p2bodydist Y = [-90,0]
trigger1 = p2bodydist X = [-5,30]
trigger1 = Ctrl
trigger2 = Ctrl
trigger2 = p2bodydist X = [-5,30]
trigger2 = p2bodydist Y = [-65,25]
trigger2 = p2statetype != A

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = Roundstate = 2
triggerall = (StateType = A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 630
trigger1 = Movecontact

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = Roundstate = 2
triggerall = (StateType = A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 640
trigger1 = Movecontact
trigger1 = p2statetype = A

;------------------------------------------------------------------------

[State -1, Crouch Light Punch]
type = ChangeState
value = 3120
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 3110
trigger1 = Movecontact

[State -1, Crouch Light Punch]
type = ChangeState
value = 3130
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 3120
trigger1 = MoveHit

[State -1, Crouch Light Punch]
type = ChangeState
value = 3150
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 3140
trigger1 = Movecontact

[State -1, Crouch Light Punch]
type = ChangeState
value = 3160
triggerall = Roundstate = 2
triggerall = (StateType != A)
triggerall = Var(59)>=1
triggerall = p2statetype != L
trigger1 = stateno = 3150
trigger1 = MoveHit

;========================================================================




;--------------------------------------------------
;========================<SUPER PAUSE FX>=============================
;Level 1 Super FX
[StateDef 8500]
type = A
velSet = 0,0
anim = 8500
sprPriority = 5

[State 8500, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8500, BGpalFX]
type = BGpalFX
trigger1 = Time < 39
time = 1
color = 0
mul = 0,0,256

[State 8500, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8500, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8500, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)

[State 8500, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5,0.5

[State 8500, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256

[State 8500, Lines Explod]
type = Explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8501
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8500, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8500, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1 - (0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8500, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8500, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 - (0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8500, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8502
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 32
superMoveTime = -1

[State 8500, Scale Circle Explod]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8500, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8500, End]
type = DestroySelf
trigger1 = Time >= 40

;==================================================
[Statedef 10000]
anim=10000;???????\???????¢±???????¢?¢????“???????????‘S‘R??‘????¢
ctrl=0

[State 10000,?????¢???{‘??????????§???????s]
type=selfstate
trigger1=!ishelper
value=0

[State 10000,?v???C???[”?’?]
type=varset
trigger1=command="up"&&root,command="up"
trigger2=command="down"&&root,command="down"
trigger3=command="back"&&root,command="back"
trigger4=command="fwd"&&root,command="fwd"
trigger5=command="a"&&root,command="a"
trigger6=command="b"&&root,command="b"
trigger7=command="c"&&root,command="c"
trigger8=command="x"&&root,command="x"
trigger9=command="y"&&root,command="y"
trigger10=command="z"&&root,command="z"
trigger11=command="start"&&root,command="start"
var(59)=-1

[State 10000,?§??????????]
Type = DestroySelf
triggerAll = isHelper
Trigger1 = root,var(59)||var(59)=-1
trigger2=command="up"&&root,command="up"
trigger3=command="down"&&root,command="down"
trigger4=command="back"&&root,command="back"
trigger5=command="fwd"&&root,command="fwd"
trigger6=command="a"&&root,command="a"
trigger7=command="b"&&root,command="b"
trigger8=command="c"&&root,command="c"
trigger9=command="x"&&root,command="x"
trigger10=command="y"&&root,command="y"
trigger11=command="z"&&root,command="z"
trigger12=command="start"&&root,command="start"

[State 10000,?×??ON]
type=varset
triggerall=var(59)!=-1
trigger1=root,command="up"
trigger2=root,command="down"
trigger3=root,command="back"
trigger4=root,command="fwd"
trigger5=root,command="a"
trigger6=root,command="b"
trigger7=root,command="c"
trigger8=root,command="x"
trigger9=root,command="y"
trigger10=root,command="z"
trigger11=root,command="start"
var(59)=1


;---------------------------------------------------------------------------

;===========================================================================
; AI Walk
[Statedef 21]
type    = S
physics = S
sprpriority = 0
ctrl = 1

[State 20, 1]
type = VelSet
triggerall = var(59) && roundstate = 2
trigger1 = EnemyNear,stateno != [5000,5020]
trigger1 = P2bodydist X > 10
trigger2 = EnemyNear,stateno = [5000,5020]
trigger2 = P2bodydist X > 10
x = const(velocity.walk.fwd.x)

[State 20, 2]
type = VelSet
triggerall = var(59) && roundstate = 2
trigger1 = EnemyNear,stateno != [5000,5020]
trigger1 = P2bodydist X < 5
x = const(velocity.walk.back.x)

[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20

[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21

[State 0, Turn]
type = Turn
trigger1 = p2dist X <= -5
trigger1 = animelem = 1
;ignorehitpause = 
;persistent = 

;---------------------------------------------------------------------------
; AI Jump Start (Low)
[Statedef 41]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, 2]
type = VarSet
trigger1 = 1
sysvar(1) = 1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y) / 2

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; AI Jump Start
[Statedef 42]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, 2]
type = VarSet
trigger1 = 1
sysvar(1) = 1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1
