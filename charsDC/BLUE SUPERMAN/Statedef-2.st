;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]
;==================
[State -2, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "PalNo = %d, Var(40)= %d, BackEdgeDist = %d, FrontEdgeDist = %d, P2DX = %d, P2DY = %d"
params = PalNo, Var(40), BackEdgeDist, FrontEdgeDist, Ceil(P2Dist X), Ceil(P2Dist Y)
ignorehitpause = 1

[state -1]
type = helper
trigger1 = numhelper(1221) = 0
trigger1 = palno != 5 && (palno != [1,3]) && (palno != [8,9])
ID = 1221
stateno = 777;
;supermovetime = 40;0+(99999 * (StateNo=[3000,4999]))
;pausemovetime = 40;0+(99999 * (StateNo=[3000,4999]))

;-------------------------------------------------------------------------------
;KO Sound when defeated
;-------------------------------------------------------------------------------
[State -2, varKOsnd]
type=varset
trigger1=alive&&var(18)>0
trigger2=!alive&&var(18)<2
var(18)=ifelse(alive,0,var(18)+1)
ignorehitpause=1

[State -2, KOsnd]
type=playsnd
trigger1=!alive&&var(18)=1
trigger1=var(18):=2
value=5500,0
channel = -1
ignorehitpause=1
persistent=0
;-------------------------------------------------------------------------------
;Get Hit Sounds
;-------------------------------------------------------------------------------
[State -2, GetHit Snd]
type=playsnd
triggerall=alive&&time=1
triggerall=stateno=5000||stateno=5010
trigger1=gethitvar(animtype)>=2&&random<500
trigger2=gethitvar(animtype)=1&&random<375
trigger3=gethitvar(animtype)=0&&random<250
value=s5000,(0+(random%2));*10,ceil(random/200)
channel=20
ignorehitpause=1

[State -2, GetHit Snd]
type=playsnd
triggerall=alive&&time=1
trigger1=(stateno=5000||stateno=5010)&&numenemy
trigger1=gethitvar(fall)||(enemynear,hitdefattr=SCA,SA,HA)
trigger2=(stateno=5020||stateno=5070||stateno=5080)
trigger3=(stateno=5050||stateno=5100)&&(prevstateno!=[5000,5199])
value=s5000,(0+(random%2));*10,ceil(random/200)
channel=20
ignorehitpause=1
;-------------------------------------------------------------------------------
;damage dampenering
;-------------------------------------------------------------------------------
[State -2, Damage Dampener]; Scaling in action
type= attackmulset
triggerall = stateno !=[3000,3999] ; prevent damage scaling in supers between this range of statedef
;triggerall = NumHelper(3302) = 0
;triggerall = NumHelper(3304) = 0
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.9, 0.8**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
triggerall = stateno !=[3000,3999]; prevent damage scaling in supers between this range of statedef
;triggerall = NumHelper(3302) = 0
;triggerall = NumHelper(3304) = 0
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

[State -2, Damage Dampener]; Scaling in action
type= null;attackmulset
triggerall = stateno !=[3000,3999] ; prevent damage scaling in supers between this range of statedef
triggerall = NumHelper(3302) != 0 || NumHelper(3304) != 0
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 2, ifelse(enemynear, gethitvar(hitcount) = 1, 1.8, 1.6**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= null;attackmulset
triggerall = stateno !=[3000,3999]; prevent damage scaling in supers between this range of statedef
triggerall = NumHelper(3302) != 0 || NumHelper(3304) != 0
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 2.0
ignorehitpause= 1

[State -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(3377) != 0
trigger1 = StateNo != 3300
ID = 3377
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4020) != 0
trigger1 = StateNo != [3700,4200]
ID = 4020
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4165) != 0
trigger1 = StateNo != [3700,4200]
ID = 4165
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4164) != 0
trigger1 = StateNo != [3700,4200]
ID = 4164
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4163) != 0
trigger1 = StateNo != [3700,4200]
ID = 4163
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4162) != 0
trigger1 = StateNo != [3700,4200]
ID = 4162
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4161) != 0
trigger1 = StateNo != [3700,4200]
ID = 4161
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4160) != 0
trigger1 = StateNo != [3700,4200]
ID = 4160
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State -2, StopSnd]
type = StopSnd
trigger1 = StateNo != [3700,4200]
channel = 14
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4020)
trigger1 = StateNo = 4005
trigger1 = Anim = 4007
trigger1 = Time >= 3998
trigger2 = StateNo != [3700,4200]
id = 4020
ignorehitpause = 1
persistent = 1

; END

[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(886) != 0
trigger1 = MoveType = H
trigger2 = StateNo != 816
id = 886
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(34001) != 0
trigger1 = MoveType = H
trigger2 = StateNo != 3400
id = 34001
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(34002) != 0
trigger1 = MoveType = H
trigger2 = StateNo != 3400
id = 34002
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(7779) != 0
trigger1 = MoveType = H
trigger2 = StateNo != 3000
id = 7779
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(7879) != 0
trigger1 = MoveType = H
trigger2 = StateNo != [3700,4000]
id = 7879
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(7889) != 0
trigger1 = MoveType = H
trigger2 = StateNo != [3700,4000]
id = 7889
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(2000) != 0
trigger1 = MoveType = H
trigger2 = StateNo != [3705,4005]
id = 2000
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(793) != 0
trigger1 = MoveType = H
trigger2 = StateNo != [3705,4005]
id = 793
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(792) != 0
trigger1 = MoveType = H
trigger2 = StateNo != [3705,4005]
id = 792
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(795) != 0
trigger1 = MoveType = H
trigger2 = StateNo != [3705,4005]
id = 795
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(7999) != 0
trigger1 = MoveType = H
trigger2 = StateNo != [3705,4005]
id = 7999
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = Null;RemoveExplod
triggerall = NumExplod(8066) != 0
trigger1 = MoveType = H
trigger2 = StateNo != [3705,4005]
id = 8066
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(32001) != 0
trigger1 = MoveType = H
trigger2 = StateNo != 3200
id = 32001
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(31001) != 0
trigger1 = MoveType = H
trigger2 = StateNo != 3100
id = 31001
ignorehitpause = 1
persistent = 1

[state -2, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(866) != 0
trigger1 = MoveType = H
trigger2 = StateNo != [3300,3600]
id = 866
ignorehitpause = 1
persistent = 1

[State -2, AssertSpecial]
type = AssertSpecial
trigger1 = StateNo = [3700,4200]
trigger2 = NumTarget
trigger2 = Target, StateNo = 9910
flag = timerfreeze
ignorehitpause = 1
persistent = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumEnemy = 1
trigger1 = Enemy, MoveType = I
trigger2 = P2MoveType = I
v = 40
value = 0
ignorehitpause = 1
persistent = 1

;=========================================================================
; == Check if P1 is put into a P2 custom state... ==
;=========================================================================
[State -2, VarSet] 
type = VarSet
triggerall = !IsHelper
trigger1 = Var(57) != GameTime
v = 57
value = -1
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1
;;;; if Var(57) = -1 then P1 is custom-stated....
