;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

[State -2,弹墙特效]
type = Helper
triggerall = numtarget(240)
trigger1 = !numhelper(823)
trigger1 = target,stateno = 251 
helpertype = normal
ID =  823
stateno = 823
pos = -10,-70
postype = P2
facing = -1
keyctrl = 0
ownpal = 0
supermovetime = 1
pausemovetime = 1
name = "弹墙特效"
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State -2,弹墙特效]
type = Helper
triggerall = numtarget(3000)
trigger1 = !numhelper(823)
trigger1 = target,stateno = 1006 
helpertype = normal
ID =  823
stateno = 823
pos = -10,-70
postype = P2
facing = -1
keyctrl = 0
ownpal = 0
supermovetime = 1
pausemovetime = 1
name = "弹墙特效"
size.xscale = 0.5
size.yscale = 0.5
ignorehitpause = 1

[State 4100,1]
type = Helper
trigger1 = numhelper(1000000) = 0
trigger1 = time = 0
ID = 1000000
name = "Shazam Icon"
pos = ifelse(TeamSide = 1,18,302),53
facing =  1
postype = Left
ownpal = 1
sprpriority = -10
stateno = 1000000
 
[state 0]
type = varset
trigger1 = projhit1677 = 1
fvar(10) = fvar(10)*0.7

[State ]
Type=Explod
TriggerAll=(RoundState=2)&&(Alive)&&(MoveType=I)
Trigger1=(NumExplod(10000)=0)
Anim=6041
PosType=P1
Pos=0,-55
Scale=0.4,0.4
BindTime=-1
Sprpriority=4
OwnPal=1
RemoveTime=-2
ID=10000

[State HitSpark]
Type=VarSet
Trigger1=!(Movecontact=1)
var(54)=GameTime+1

[State HitSpark]
Type=Helper
triggerall = stateno != [800,850]
TriggerAll=(var(54)=GameTime)
Trigger1=(MoveHit)&&(NumEnemy)
Trigger1=(var(50)=1)
HelperType=Normal
Name="HitSpark"
ID=6000
Pos=(var(52)),(Floor(Pos Y-EnemyNear,Pos Y)+var(53))
Facing=IfElse((EnemyNear,Facing=Facing),1,-1)
PosType=P2
StateNo=6000
OwnPal=1
Persistent=0
IgnoreHitPause=1
PauseMoveTime=65536
SuperMoveTime=65536
size.xscale = .3
size.yscale = .3

[State HitSpark]
Type=Helper
triggerall = stateno != [800,850]
TriggerAll=(var(54)=GameTime)
Trigger1=(MoveHit)&&(NumEnemy)
Trigger1=(var(50)=1)
HelperType=Normal
Name="HitSpark" 
Pos=(var(52)),(Floor(Pos Y-EnemyNear,Pos Y)+var(53))
Facing=IfElse((EnemyNear,Facing=Facing),1,-1)
PosType=P2
StateNo = 8600
size.xscale = .5
size.yscale = .5
ID = 8600
OwnPal=1
Persistent=0
IgnoreHitPause=1
PauseMoveTime=65536
SuperMoveTime=65536

[State HitSpark]
Type=Helper
triggerall = stateno != [800,850]
TriggerAll=(var(54)=GameTime)
Trigger1=(MoveHit)&&(NumEnemy)
Trigger1=(var(50)=2)
HelperType=Normal
Name="HitSpark"
ID=6000
Pos=(var(52)),(Floor(Pos Y-EnemyNear,Pos Y)+var(53))
Facing=IfElse((EnemyNear,Facing=Facing),1,-1)
PosType=P2
StateNo=6000
OwnPal=1
Persistent=0
IgnoreHitPause=1
PauseMoveTime=65536
SuperMoveTime=65536
size.xscale = .4
size.yscale = .4

[State HitSpark]
Type=Helper
triggerall = stateno != [800,850]
TriggerAll=(var(54)=GameTime)
Trigger1=(MoveHit)&&(NumEnemy)
Trigger1=(var(50)=2)
HelperType=Normal
Name="HitSpark" 
Pos=(var(52)),(Floor(Pos Y-EnemyNear,Pos Y)+var(53))
Facing=IfElse((EnemyNear,Facing=Facing),1,-1)
PosType=P2
StateNo = 8610
size.xscale = .5
size.yscale = .5
ID = 8600
OwnPal=1
Persistent=0
IgnoreHitPause=1
PauseMoveTime=65536
SuperMoveTime=65536

[State HitSpark]
Type=Helper
triggerall = stateno != [800,850]
TriggerAll=(var(54)=GameTime)
Trigger1=(MoveHit)&&(NumEnemy)
Trigger1=(var(50)=3)
HelperType=Normal
Name="HitSpark"
ID=6000
Pos=(var(52)),(Floor(Pos Y-EnemyNear,Pos Y)+var(53))
Facing=IfElse((EnemyNear,Facing=Facing),1,-1)
PosType=P2
StateNo=6000
OwnPal=1
Persistent=0
IgnoreHitPause=1
PauseMoveTime=65536
SuperMoveTime=65536
size.xscale = .5
size.yscale = .5

[State HitSpark]
Type=Helper
triggerall = stateno != [800,850]
TriggerAll=(var(54)=GameTime)
Trigger1=(MoveHit)&&(NumEnemy)
Trigger1=(var(50)=3)
HelperType=Normal
Name="HitSpark" 
Pos=(var(52)),(Floor(Pos Y-EnemyNear,Pos Y)+var(53))
Facing=IfElse((EnemyNear,Facing=Facing),1,-1)
PosType=P2
StateNo = 8620
size.xscale = .5
size.yscale = .5
ID = 8620
OwnPal=1
Persistent=0
IgnoreHitPause=1
PauseMoveTime=65536
SuperMoveTime=65536

[State HitSpark]
Type=Helper
triggerall = stateno != [800,850]
TriggerAll=(var(54)=GameTime)
Trigger1=(MoveGuarded)&&(NumEnemy)
Trigger1=(var(51)=1)
HelperType=Normal
Name="HitSpark"
ID=21
Pos=(var(52)),(Floor(Pos Y-EnemyNear,Pos Y)+var(53))
Facing=IfElse((EnemyNear,Facing=Facing),1,-1)
PosType=P2
StateNo=10000
OwnPal=1
Persistent=0
IgnoreHitPause=1
PauseMoveTime=65536
SuperMoveTime=65536
[State HitSpark]
Type=Helper
triggerall = stateno != [800,850]
TriggerAll=(var(54)=GameTime)
Trigger1=(MoveGuarded)&&(NumEnemy)
Trigger1=(var(51)=2)
HelperType=Normal
Name="HitSpark"
ID=22
Pos=(var(52)),(Floor(Pos Y-EnemyNear,Pos Y)+var(53))
Facing=IfElse((EnemyNear,Facing=Facing),1,-1)
PosType=P2
StateNo=10000
OwnPal=1
Persistent=0
IgnoreHitPause=1
PauseMoveTime=65536
SuperMoveTime=65536
[State HitSpark]
Type=Helper
triggerall = stateno != [800,850]
TriggerAll=(var(54)=GameTime)
Trigger1=(MoveGuarded)&&(NumEnemy)
Trigger1=(var(51)=3)
HelperType=Normal
Name="HitSpark"
ID=23
Pos=(var(52)),(Floor(Pos Y-EnemyNear,Pos Y)+var(53))
Facing=IfElse((EnemyNear,Facing=Facing),1,-1)
PosType=P2
StateNo=10000
OwnPal=1
Persistent=0
IgnoreHitPause=1
PauseMoveTime=65536
SuperMoveTime=65536

[state 250,11 - Slam Dust]
type = helper
triggerall = !numhelper(60120)
trigger1 = numtarget(650)
trigger1 = target(650), stateno = 328
persistent = 0
stateno = 60120
ID = 60120
postype = p2
pos = 0,500

[State 0, Helper]		;Helper Summon code
type = Helper
triggerall = !numhelper(293)
trigger1 = numtarget(1300)
trigger1 = target(1300), stateno = 328
name = "Smash"
ID = 293
stateno = 293
pos = 0,500
postype = p2    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = 0.5
size.yscale = 0.5

[state 0 - No more air-combo]
type = varset
trigger1 = numenemy = 1
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
trigger3 = numenemy = 2
trigger3 = enemy(0),movetype != H
trigger3 = enemy(1),movetype != H
var(29) = 0 

[State -2, P2 Recovery]
type= targetstate
trigger1= numtarget(555)


trigger1= (target(555), stateno=5020) && (target(555), alive) && (target(555), hitfall)
ID= 555
value= 5085
ignorehitpause= 1

[State -2, Reset var when the opponent recovers]
type = Varset
trigger1 = numenemy = 1
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
trigger3 = numenemy = 2
trigger3 = enemy(0),movetype != H
trigger3 = enemy(1),movetype != H
fvar(10) = 1

[State -2, Final Dampen]
type = null
trigger1 = (fvar(11) := fvar(10)) || 1
ignorehitpause = 1

[State -2, Dampener itself]
type = Attackmulset
trigger1 = 1
value = fvar(11)
ignorehitpause = 1

[State -1, DTCB]
type = displaytoclipboard
trigger1 = 1
text = "Damage Dampener: %f"
params = fvar(11)
ignorehitpause = 1

[State -2, P2 Facing]
type= targetfacing
trigger1= movecontact=1 && numtarget=1
trigger1= !(target,hitshakeover) && !(target,hitfall) && (target,time<=1)
value= ifelse(p2dist x>=0, -1, 1)
ignorehitpause= 1

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
[State -2, gethits]         ; custom gethit sounds
type = PlaySnd
triggerall = random < 200
triggerall = (stateno = [5000,5210]) && (Time = 1) && (!IsHelper)
trigger1 = anim = 5030  ; air hit
trigger2 = anim = 5070  ; tripped
persistent = 1
value = S5000,0

[State -3, hurt Sound 1]
type = PlaySnd
triggerall = Time = 1
triggerall = random < 400
trigger1 = Stateno = 5000 || Stateno = 5020
trigger1 = movetype = H
value = S5000,1

[State -3, hurt Sound 1]
type = PlaySnd
triggerall = Time = 1
triggerall = random < 400
trigger1 = Stateno = 5010
trigger1 = movetype = H
value = S5000,2

 
; END

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]
 

[State -3, Prevent Crossup]
type = width
trigger1 = movetype != H
edge = 8, 0
ignorehitpause = 1

[State -3, Prevent Undergound Juggles by POTS]
type= targetbind
trigger1= movehit=1
trigger1= numtarget=1 && numenemy
trigger1= (target,time<=1) && (target,ID=enemynear,ID)
trigger1= !(target,hitshakeover) && (target, hitfall) && (target, pos y>0)
pos= ceil(p2dist x), ceil(-pos y)
ignorehitpause= 1

;-------------------------------------------------------------------------------
;Phantom of the Server Corner Push System
;-------------------------------------------------------------------------------
[State -3, Corner Push]; Reset
type= varset
trigger1= fvar(5)
trigger1= numtarget
trigger1= (target, hitover) || (target, gethitvar(hitshaketime) > 0 && target, time <= 0)
fvar(5)= 0

[State -3, Corner Push]; Get initial velocity
type= varset
trigger1= movecontact=1 && numtarget
fvar(5)= (target, gethitvar(xvel))
ignorehitpause= 1

[State -3, Corner Push]; Apply corner push
type= posadd
triggerall= fvar(5)
triggerall= (statetype = S || statetype = C) && numtarget
triggerall= !hitpausetime && (target, gethitvar(hitshaketime) <= 0)
triggerall= (target, statetype = S || target, statetype = C) && !(target, gethitvar(yvel)) && !(target, hitfall); See note below
trigger1= target, frontedgebodydist <= abs(target, vel x)
trigger1= (target, gethitvar(xvel) * target, facing) > 0
trigger2= target, backedgebodydist <= abs(target, vel x)
trigger2= (target, gethitvar(xvel) * target, facing) < 0
x= ifelse(target, frontedgebodydist <= 0, -1, 1) * (target, facing) * fvar(5)

[State -3, Corner Push]; Apply friction to the velocity
type= varset
trigger1= numtarget
trigger1= target, gethitvar(hitshaketime) <= 0
fvar(5)= fvar(5) * 0.85


; END


