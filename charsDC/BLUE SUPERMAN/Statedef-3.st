;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]
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
;-------------------------------------------------------------------------------
; Landing Sounds
;-------------------------------------------------------------------------------
[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52 ;Jump land
trigger2 = stateno = 101 ;Run-back land
trigger3 = stateno = 106 ;Run-back land
value = 8,1
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
triggerall = stateno != [4000,4200]
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
triggerall = stateno != [4000,4200]
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
triggerall = stateno != [4000,4200]
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
triggerall = stateno != [4000,4200]
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
;-------------------------------------------------------------------------------
;Afterimage
;-------------------------------------------------------------------------------
[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = Stateno != 100 ; run forward
trigger1 = Stateno != 105 ; run backward
trigger1 = Stateno != 108 ;Air Dash backward
trigger1 = Stateno != 107 ;Air Dash forward
trigger1 = Stateno != 701 ;Super Jump
trigger1 = Stateno != 810 ;throwing P2
trigger1 = Stateno != 4000 ;final hyper
time = 0
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
triggerall = stateno != [111,222]
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

[State -3, ChangeAnim] ; by davidgee
type = ChangeAnim
triggerall = RoundState = 2
triggerall = MoveType != H
triggerall = NumHelper(3302) != 0 || NumHelper(3304) != 0
triggerall = StateNo <= 799
;triggerall = StateNo != [800,816]
;triggerall = StateNo != [3000,3999]
;triggerall = P2StateNo != [5000,5100]
trigger1 = AnimElemTime(AnimElemNo(0) + 1) < 0
trigger1 = AnimElemTime(AnimElemNo(0)) > Floor((AnimElemTime(AnimElemNo(0)) - AnimElemTime(AnimElemNo(0) + 1))/2)
value = anim
elem = AnimElemNo(0) + 1
ignorehitpause = 1

[State -3, VelAdd]
type = VelAdd
triggerall = NumHelper(3302) != 0 || NumHelper(3304) != 0
trigger1 = StateNo = 50
y = 0.32 * 1.20
ignorehitpause = 1

[State -3, VelAdd]
type = VelAdd
triggerall = NumHelper(3302) != 0 || NumHelper(3304) != 0
trigger1 = StateNo = [600,699]
y = 0.32 * 2
ignorehitpause = 1

[State -3, ReversalDef]
type = ReversalDef
trigger1 = NumHelper(3302) != 0 || NumHelper(3304) != 0
reversal.attr = SCA, AA, AP, AT
pausetime = 8,8
sparkno = -1
sparkxy = -1
hitsound = -1
p1stateno = StateNo
p1sprpriority = 2
p2sprpriority = 1
ignorehitpause = 1
persistent = 1

[State -3, ChangeState]
type = ChangeState
triggerall = NumHelper(3302) != 0 || NumHelper(3304) != 0
trigger1 = MoveReversed
value = StateNo
ctrl = 0
ignorehitpause = 1
persistent = 0

[State -3, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(10005) != 0
trigger1 = (MoveType = H) || (StateNo = [5000,5099])
id = 10005
ignorehitpause = 1
persistent = 1

[State -3, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(10006) != 0
trigger1 = (MoveType = H) || (StateNo = [5000,5099])
id = 10006
ignorehitpause = 1
persistent = 1

[State -3, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(10009) != 0
trigger1 = (MoveType = H) || (StateNo = [5000,5099])
id = 10009
ignorehitpause = 1
persistent = 1

[State -3, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(10066) != 0
trigger1 = (MoveType = H) || (StateNo = [5000,5099])
id = 10066
ignorehitpause = 1
persistent = 1

; END

[State -3, TargetState] ; by mouser 
type = TargetState
triggerall = NumTarget(420)
triggerall = !HitPauseTime
triggerall = !(Target, StateNo = 5080)
trigger1 = Target, GetHitVar(chainid) & 420
trigger1 = Target, StateNo != [120,155]
trigger1 = Target, HitOver && Target, Alive && Target, HitShakeOver
trigger1 = Target, StateType = A && Target, StateNo != 9900
value = 9900

[State -3, TargetState] ; by mouser 
type = TargetState
triggerall = NumTarget(4200)
triggerall = !HitPauseTime
triggerall = !(Target, StateNo = 5080)
trigger1 = Target, GetHitVar(chainid) & 4200
trigger1 = Target, StateNo != [120,155]
;trigger1 = Target, HitOver && Target, Alive && Target, HitShakeOver
trigger1 = Target, StateType = A && (Target, StateNo != [9910,9950])
value = 9910

[State -3, AssertSpecial]
type = AssertSpecial
triggerall = NumTarget
triggerall = Target, StateNo = [9910,9950]
trigger1 = 0 + 1
;flag = noko
;flag = nokosnd
;flag = nokoslow
flag = noshadow
flag2 = nomusic
flag3 = timerfreeze
ignorehitpause = 1
persistent = 1

[State -3, statetypeset]
type = statetypeset
triggerall = stateno = [200,799]
trigger1 = var(40) != 0
movetype = I
ignorehitpause = 1
persistent = 1


;=========================================================================
; == Check if P1 is put into a P2 custom state... ==
;=========================================================================
[State -3, VarSet] 
type = VarSet
triggerall = !IsHelper
trigger1 = 0 + 1
v = 57
value = GameTime
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1
;;;; if Var(57) = -1 then P1 is custom-stated....

