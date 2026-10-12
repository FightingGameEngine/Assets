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
; HIT_BOUNCE (hit ground)
[Statedef 5600]
type    = L
movetype= H
physics = N

[State 5600, 1]
type = VelSet
trigger1 = !time
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 5600, EnvShake]
type = FallEnvShake
trigger1 = !time

[State 5600, Var] ;Save fall velocity
type = VarSet
trigger1 = !time
sysvar(1) = floor(vel y)

[State 5600, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = !time
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5600, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = !time
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 5600, 4]
type = PosSet
trigger1 = !time
y = 0

[State 5600, 5]
type = VelSet
trigger1 = !time
y = 0

[State 5600, 6] ;Reduce speed
type = VelMul
trigger1 = !time
x = 0.75

[State 5600, 7]
type = ChangeState
trigger1 = !time
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110 ;HIT_LIEDOWN

[State 5600, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5600, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5600, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5600, 11]
type = PosFreeze
trigger1 = 1

[State 5600, 12]
type = ChangeState
trigger1 = !Animtime
value = 5601

[State 5600, 13]
type = ForceFeedback
trigger1 = !time
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20


;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 5601]
type    = L
movetype= H
physics = N

[State 5601, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = !time
trigger1 = anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160

[State 5601, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = !time
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 5601, 3]
type = HitFallVel
trigger1 = !time

[State 5601, 4]
type = PosSet
trigger1 = !time
y = 20

[State 5601, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .4

[State 5601, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
type = ChangeState
value = 5610


;---------------------------------------------------------------------------
; HIT_LIEDOWN
[Statedef 5610]
type    = L
movetype= H
physics = N

[State 5610, EnvShake]
type = FallEnvShake
trigger1 = !time

[State 5610, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5610, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = !time
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 5610, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = !time
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 5610, 4]
type = HitFallDamage
trigger1 = !time

[State 5610, 5]
type = PosSet
trigger1 = !time
y = 0

[State 5610, Var] ;Get fall velocity
type = VarSet
trigger1 = !time
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5610, 6]
type = PlaySnd
trigger1 = !time
trigger1 = !SysVar(0)
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5610, 7]
type = GameMakeAnim
trigger1 = !time
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5610, 8]
type = VelSet
trigger1 = !time
y = 0

[State 5610, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = !Animtime
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 5610, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = !Animtime
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

[State 5610, 11] ;If just died
type = ChangeState
triggerall = !alive
trigger1 = !Animtime
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 5610, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = !time
sysvar(0) = 0

[State 5610, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5610, 14]
type = ForceFeedback
trigger1 = alive
trigger1 = !time
time = 8
ampl = 240
waveform = sine

[State 5610, 15]
type = ForceFeedback
trigger1 = !alive
trigger1 = !time
ampl = 200, 7, -.467
time = 30
waveform = sine

[State 5610, 16]
type = SelfState
triggerall = alive
trigger1 = time >= 40
;trigger2 = Anim = [5110,5119]
value = 5120



;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------
;~~~~~~~~~~~~~~~~~~~~~
;エフェクト表示設定(Change Effect)
[State -1]
type = parentVarset
trigger1 = time=0
fvar(0)=0
;(0 OR 1 OR 2(0:PS2版, 1：スーパーコンボ（超必殺技）発動エフェクトが小さい, 2:FINISH時のエフェクトを非表示, 3:1と2の両方))
;(0 OR 1 OR 2(0:PS2, 1:Effect of Super Aurts is smaller, 2:Effect is invinsible in finish, 3:1and2))

;キャンセル受付時間
[State -1]
type = parentVarset
trigger1 = time=0
fvar(21)=0;←(0 OR -1(0:原作どおり,1：キャンセル受付時間が長くなる（原作とは違う）))
;-----------------------------
;技調整（弱体化）(未実装)
;Moves Adjustment(Weakening) (Not yet)
[State -1]
type = null;parentVarset
trigger1 = time=0
fvar(21)=0

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

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

;damage dampenering

[State -2, Damage Dampener]; Scaling in action
type= attackmulset
triggerall = stateno !=[3000,3999] ; prevent damage scaling in supers between this range of statedef
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.9, 0.8**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
triggerall = stateno !=[3000,3999]; prevent damage scaling in supers between this range of statedef
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1



;destroy helpers due to reversal def to prevent clone
[State DestroyHelper]
type=destroyself
trigger1=ishelper(1035)
trigger2=ishelper(12200)
triggerall= stateno != [0,8009]
ignorehitpause=1

[State -2]
type = Varset
trigger1 = var(9)=1000
var(7) = power

[State -2]
type = Varadd
triggerall = stateno!=3002
trigger1 = var(9)>0
v=9
value = -2

[State -2]
type = Varset
trigger1 = life = 0 || roundstate!=2
;trigger2 = stateno= 3000 || stateno= 4000
var(9) = 0

[State -2]
type = powerset
triggerall = stateno!=3002
trigger1 = var(9)>0
value = floor(var(7))


[State -2, Combo]
type = VarSet
triggerall = Time = 1
trigger1 = stateno != 3201
var(36) = 0
ignorehitpause = 1

[State -2, Add]
type = VarAdd
trigger1 = var(52) > 0
v = 52
value = 1
ignorehitpause = 1

[State -2, Clear]
type = VarSet
trigger1 = var(52) > 16
v = 52
value = 0
ignorehitpause = 1

[State -2, Super Armor Changestate]
type = SelfState
triggerall= (StateNo = 5000) || (StateNo = 5010) || StateNo = 5070 || StateNo = 5020
triggerall = life>0 && var(9)>0
;triggerall = !var(56)
trigger1 = (time = 0) ;&& (var(59) < 15)
value = 3002

[State -2, Set Var if in Custom state]
type = VarSet
trigger1 = (StateNo != 5000) && (StateNo != 5010)
trigger2 = StateNo != 5070 && var(9)>0
;triggerall = var(9)>0
v = 56
value = ifelse(var(58) - var(57) = 0, 1, 0)

[State -2, Set Var]
type = VarSet
trigger1 = 1
v = 57
value = var(58)

[State -2, 1]
type = DefenceMulSet
trigger1 = 1
value = 1 - 0.5 * (var(9)!=0)


[State -2, teste]
type = SelfState
triggerall= StateNo != [4000,4090]
triggerall= StateNo != 3002
triggerall= StateNo != [3500,3502]
triggerall= StateNo != 39912
triggerall= StateNo != 28812
triggerall= StateNo != 8999
triggerall= StateNo != 837
triggerall = life>0 && var(9)>0
trigger1 = statetype!=A
value = 4001 + (numhelper(4080)!=0 || numhelper(4090)!=0)-499*(numhelper(4081)!=0 || numhelper(4091)!=0)




[State -2, debug]       ; (debug clipboard)
type = DisplayToClipboard
trigger1 = 1 ;Alive
text = "PalNo: %d - Pos Y: %f"
params = PalNo, Pos Y

[State -2, PosSet]
type = PosSet
trigger1 = Alive
z = 0.9




;-------------------------------------------------------------------------------
; Landing Sounds
;-------------------------------------------------------------------------------
[State -2, Landing Sound]
type = PlaySnd
triggerall = Time = 1 && Var(20) != 2
trigger1 = StateNo = 52 ;Jump land
trigger2 = StateNo = 101 ;Run-fwd land
trigger3 = StateNo = 106 ;Run-back land
value = 8, 1

;-------------------------------------------------------------------------------
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


[State -2, acertou a parede]; - freio]
type = targetvelset
triggerall = numtarget!=0
trigger1 = numexplod(8250)!=0
trigger1 = target, vel x < 0
x=0

[State -2]; Indicador do time (moldura)
type = removeexplod
trigger1 = var(9)>=0 && numexplod(8520)=1
id = 8520

[State -2]; Indicador do time (linha)
type = removeexplod
trigger1 = var(9)>=0 && numexplod(8521)=1
id = 8521

[State -2]; Indicador do time (moldura)
type = explod
trigger1 = var(9)>0
pos = 36+141*(id>(enemy, id)),227
postype = left
bindtime = -1
sprpriority = 1
anim = 8521
removetime = -1
ownpal = 1
id = 8521
ontop = 1

[State -2];; Indicador do time (linha)
type = explod
trigger1 = var(9)>0
pos = 37+141*(id>(enemy, id)),234
postype = left
bindtime = -1
sprpriority = 2
anim = 8520
removetime = -1
scale = var(9)/10,1
ownpal = 1
id = 8520
ontop = 1

;Stop Sound from running when skipping intro
[State 0, StopSnd]
type = StopSnd
trigger1 = roundstate = 2
channel = 3

[State 0, StopSnd]
type = StopSnd
trigger1 = roundstate = 2
channel = 2

[State 0, StopSnd]
type = StopSnd
trigger1 = roundstate = 2
channel = 4

[State -2, StopSnd]
type = StopSnd
trigger1 = roundstate = 2
channel = 5

[State 0, StopSnd]
type = StopSnd
trigger1 = roundstate = 2
channel = 6

[State 0, StopSnd]
type = StopSnd
trigger1 = roundstate = 2
channel = 7
;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;Player Indictators for Player 1 and Player 2
;-------------------------------------------------------------------------------
;Player 2 Indictator
;-------------------------------------------------------------------------------
[State -3]
type = Explod
triggerall = roundstate > 1
triggerall = numenemy > 0
triggerall = alive = 1
trigger1 = enemynear, screenpos y <0
trigger2 = enemynear, screenpos y > 220 - (const(size.head.pos.y))
trigger3 = P2bodyDist y > 200
anim = 8612 - ((enemy,id)<id)
id = 8611
pos = ceil((enemynear,screenpos x)),20+(enemynear, screenpos y>0)*200
postype = left;back
sprpriority = 4
ignorehitpause = 1
ontop = 1
ownpal = 1
bindtime = -1
persistent = 1
;facing = (facing)
removetime = 1
scale= const(size.xscale),const(size.yscale)
;-------------------------------------------------------------------------------
;Player 2 Arrow
;-------------------------------------------------------------------------------
[State -3]
type = Explod
triggerall = roundstate > 1
triggerall = numenemy > 0
triggerall = alive = 1
trigger1 = enemynear, screenpos y <0
trigger2 = enemynear, screenpos y > 220 - (const(size.head.pos.y))
trigger3 = P2bodyDist y > 200
anim = 8614 - ((enemy,id)<id)
id = 8613
pos = ceil((enemynear,screenpos x)),20+(enemynear, screenpos y>0)*200
postype = left;back
sprpriority = 4
ignorehitpause = 1
ontop = 1
ownpal = 1
bindtime = -1
persistent = 1
facing = (enemy,facing);-1
removetime = 1
scale= const(size.xscale),const(size.yscale)
;-------------------------------------------------------------------------------
;Player 1 Indictator
;-------------------------------------------------------------------------------
[State -3]
type = Explod
triggerall = roundstate > 1
triggerall = numenemy > 0
triggerall = alive = 1
trigger1 = screenpos y <0
trigger2 = screenpos y > 220 - (const(size.head.pos.y))
trigger3 = P2bodyDist y < -200
anim = 8611 + ((enemy,id)<id)
id = 8611
pos = ceil(screenpos x),20+(screenpos y>0)*200
postype = left;back
sprpriority = 4
ignorehitpause = 1
ontop = 1
ownpal = 1
bindtime = -1
persistent = 1
;facing = (facing)
removetime = 1
scale= const(size.xscale),const(size.yscale)
;-------------------------------------------------------------------------------
; Player 1 Arrow
;-------------------------------------------------------------------------------
[State -3]
type = Explod
triggerall = roundstate > 1
triggerall = numenemy > 0
triggerall = alive = 1
trigger1 = screenpos y <0
trigger2 = screenpos y > 220 - (const(size.head.pos.y))
trigger3 = P2bodyDist y < -200
anim = 8613 + ((enemy,id)<id)
id = 8613
pos = ceil(screenpos x),20+(screenpos y>0)*200
postype = left;back
sprpriority = 4
ignorehitpause = 1
ontop = 1
bindtime = -1
persistent = 1
ownpal = 1
facing = facing;1
removetime = 1
scale= const(size.xscale),const(size.yscale)



[State -3, Kill Juggle Checking]
type = assertspecial
triggerall = P2MoveType = H && P2stateType = A
trigger1 = stateno = 3201 && (fvar(26)+fvar(28)) < 5
flag = nojugglecheck

;-------------------------------------------------------------------------------
;Win K.O Explod
;-------------------------------------------------------------------------------
[State -3, Finish Hit Explod - Helper]
type = Helper
triggerall = WinKO && NumHelper(8900) = 0
trigger1 = RoundState = 3
helpertype = Normal
name = "Finish Hit Explod"
id = 8900
pos = 0, -1500
postype = back
facing = 0
stateno = 8900
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -3, RemoveExplod]
type = RemoveExplod
trigger1 = stateno = 8900
trigger2 = MoveType = H
trigger3 = (WinKO)
id = 10010
ignorehitpause = 1

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

[State -3, VarSet]
type = VarSet
trigger1 = Life <= 150
v = 50
value = 1


;-------------------------------------------------------------------------------
; Stop Flying States in Roundstate 3
;-------------------------------------------------------------------------------
[State 0, SelfState]
type = SelfState
trigger1 = stateno = [2000,2999]
trigger1 = roundstate = 3
value = 50
ctrl =1
;-------------------------------------------------------------------------------
; Stop Movement in Roundstate 4
;-------------------------------------------------------------------------------
[State -3, ctrl set]
type = ctrlset
trigger1 = roundstate = 4
value = 0
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

;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------

;-------------- Generated by Fighter Factory -------------

;--------------------- Variable List ----------------------

; Var(2) - StateDef 8700, 820, -3
; Var(10) - StateDef 1200, 1210, 1220
; Var(35) - StateDef 1200, 1210, 1220, 1206
; Var(50) - StateDef -3

;--------------------- Float Variable List ----------------------

