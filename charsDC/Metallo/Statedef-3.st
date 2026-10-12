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
triggerall= (target, statetype != L);
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
; END


