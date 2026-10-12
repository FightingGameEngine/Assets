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
 [Statedef 8715]
type    = A
movetype= H
physics = N
ctrl = 0
sprpriority = 2
velset = 0,0

[State 5100, 11]
type = PosFreeze
trigger1 = Time <= floor(GetHitVar(hittime)*0.8)

[state 0,0]
type = changestate
trigger1 = pos y = 0
trigger1 = prevstateno = [120,155]
value = 871

[state 0,0]
type = posadd
trigger1 = enemy,stateno != 200
trigger1 = enemy,stateno != 410
trigger1 = pos y > -15
trigger1 = time = 0
y = -15

[state 0,0]
type = turn
trigger1 = facing = enemy,facing
trigger1 = time = 0

[state 0,0]
type = changeanim
trigger1 = authorname = "Drowin hokuto"
;trigger1 = selfanimexist(5320)
trigger1 = time >= 0
value = 5320


[state 0,0]
type = changeanim
trigger1 = authorname = "Drowin hokuto" = 0
trigger1 = selfanimexist(5017)
trigger1 = time >= 0
value = 5017
[state 0,0]
type = changeanim
trigger1 = authorname = "Drowin hokuto" = 0
trigger1 = selfanimexist(5017) = 0
trigger1 = time >= 0
value = 5012

[state 0,0]
type = velset
trigger1 = time = 2
x = -9.8;8.6
y = 0

[state 0,0]
type = null;screenbound
trigger1 = 1
value = 1
movecamera = 0,1

[state 0,0]
type = changestate
triggerall = Time >= floor(GetHitVar(hittime)*0.6)
trigger1 = backedgedist <= 3
trigger2 = frontedgedist <= 1
trigger2 = time >= 20
value = 8716

[state 0,0]
type = playerpush
trigger1 = 1
value = 0

[state 0,0]
type = posadd
;trigger1 = pos y < -40
trigger1 = enemy,stateno = [600,630]
trigger1 = time = 0
y = -4
[state 0,0]
type = posadd
trigger1 = pos y > -30
;trigger1 = enemy,stateno = [8600,8630]
trigger1 = time = 0
y = -3

[State 5100, 11]
type = PosFreeze
trigger1 = Time <= floor(GetHitVar(hittime)*0.5)

;---------------------------------------------------------------------------
;壁バウンド
[Statedef 8716]
type    = A
movetype= H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 2
velset = 0,0

[state 0,0]
type = posset
trigger1 = enemy,fvar(3) >= 1
trigger1 = time = 0
y = -1

[state 0,0]
type = posadd
trigger1 = pos y > -30
;trigger1 = enemy,stateno = [8600,8630]
trigger1 = time = 0
y = -3

[state 0,0]
type = posadd
trigger1 = pos y >= -35
trigger1 = enemy,stateno != 210
trigger1 = time = 0
y = ifelse(gethitvar(hitcount)<=15,-8,-4)
[state 0,0]
type = posadd
trigger1 = pos y = [-65,-35];< -35
trigger1 = enemy,stateno != 210
trigger1 = time = 0
y = ifelse(gethitvar(hitcount)<=15,-3,-1)

[state 0,0]
type = changeanim
trigger1 = authorname = "Drowin hokuto"
;trigger1 = selfanimexist(5320)
trigger1 = time = 0
value = 5321

[state 0,0]
type = changeanim
trigger1 = authorname = "Drowin hokuto" = 0
trigger1 = time <= 12
value = 5030
[state 0,0]
type = changeanim
trigger1 = authorname = "Drowin hokuto" = 0
trigger1 = time = 13
value = 5070

[state 0,0]
type = lifeadd
trigger1 = time = 0
value = -1
kill = 0

[state 0,0]
type = poweradd
trigger1 = time = 0
value = 10

[State 3000, effect]
type = Explod
trigger1 = time = 0
anim = F72
postype = p1
pos = -20,-50
ownpal = 1
sprpriority = 3

[state 0,0]
type = envshake
trigger1 = time = 0
time = 12

[state 0,0]
type = velset
trigger1 = time = 15
x = 1.4
y = -1.8
[state 0,0]
type = veladd
trigger1 = time >= 16
y = 0.32;+(gethitvar(hitcount)*0.005)

;[state 0,0]
;type = selfstate
;trigger1 = time = 15
;value = 5071

[state 0,0]
type = selfstate
trigger1 = vel y > 0 && pos y >= 0
value = 5100
;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------



;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]
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

[State -3,ヒット確認]
Type = Varset
Trigger1 = time = 0
var(22) = 0
IgNoreHitPause = 1


[State -2,Stopsnd]
type = Stopsnd
trigger1 = roundstate =2
channel = 5

[State -2,Stopsnd]
type = Stopsnd
trigger1 = roundstate =2
channel = 6

[State -2,Stopsnd]
type = Stopsnd
trigger1 = roundstate =2
channel = 7

[State -2,Stopsnd]
type = Stopsnd
trigger1 = roundstate =2
channel = 8
;-------------------------------------------------------------------------------
;Get Hit Sounds
;-------------------------------------------------------------------------------
; Get Hit Sounds
[State -2]
type = PlaySnd
triggerall = LoseKO = 0
triggerall = random < 500
triggerall = time = 1
triggerall = StateNo = 5000 || StateNo = 5010 || StateNo = 5020
trigger1 = GetHitVar(AnimType) = 0
value = S5000,0
volume = 255
ignorehitpause = 1
persistent = 1

[State -2]
type = PlaySnd
triggerall = LoseKO = 0
triggerall = random < 500
triggerall = time = 1
triggerall = StateNo = 5000 || StateNo = 5010 || StateNo = 5020
trigger1 = GetHitVar(AnimType) = 1
value = S5001,0
volume = 255
ignorehitpause = 1
persistent = 1

[State -2]
type = PlaySnd
triggerall = LoseKO = 0
triggerall = random < 500
triggerall = time = 1
triggerall = StateNo = 5000 || StateNo = 5010 || StateNo = 5020
trigger1 = GetHitVar(AnimType) >= 2
value = S5001,1
volume = 255
ignorehitpause = 1
persistent = 1

[State -2]
type = VarAdd
trigger1 = LoseKO = 1
var(3) = 1
ignorehitpause = 1
;-------------------------------------------------------------------------------
;damage dampenering
;-------------------------------------------------------------------------------
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


; END
; Display "Danger" Message
[State -2, Create Helper]
type = Helper
triggerall = var(7) = 0
triggerall = !NumHelper(7100)
trigger1 = Life <= 300
ID = 7100
name = "Vida"
StateNo = 7100
postype = p1
pos = 0, 0
ownpal = 1

[State -2]
type = Varset
trigger1 = life <= 300
var(7) = 1

;---------------------------------------------------------------------------
; vida (Sonido y FX)
[Statedef 7100]
type = S
physics = S
anim = 8931
sprpriority = 0

[State 100, 5]
type = PlaySnd
trigger1 = Time = 1
value = 7100,1

[State 901, 4]
type = DestroySelf
trigger1 = time = 10




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
pos = 0, 0
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

