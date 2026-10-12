;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
[Statedef -3]

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "AI=%d, var(1)=%d, p2bodydist y=%d, p2bodydist x=%d, BackEdgeBodyDist=%d"
params = AiLevel, var(1), floor(p2bodydist y), floor(p2bodydist x), floor(BackEdgeBodyDist)

[State 0, AppendToClipboard]
type = AppendToClipboard
trigger1 = 1
text = "\nvar(16) = %d - pistola = %d - fatal= %d"
params = var(16), var(19), var(50)
ignorehitpause =1


[State -3, RemoveExplod]
type = RemoveExplod
trigger1 = stateno < 3000
trigger2 = MoveType = H
trigger3 = (WinKO)
id = 10010
ignorehitpause = 1



[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52 ;Jump land
trigger2 = stateno = 101 ;Run-back land
trigger3 = stateno = 106 ;Run-back land
value = 8,1



[State -3]
type = Explod
triggerall = roundstate > 1
triggerall = numenemy > 0
triggerall = alive = 1 && var(17) < 10
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
bindtime = -1
persistent = 1
;facing = (facing)
removetime = 1
scale= const(size.xscale),const(size.yscale)

; Põe um símbolo no P2 (>)-próprio
[State -3]
type = Explod
triggerall = roundstate =2
triggerall = numenemy > 0
triggerall = alive = 1 && var(17) < 10
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
bindtime = -1
persistent = 1
facing = (enemy,facing);-1
removetime = 1
scale= const(size.xscale),const(size.yscale)

;Põe um símbolo em você
; Põe um símbolo no P1 (O)-próprio
[State -3]
type = Explod
triggerall = roundstate =2
triggerall = numenemy > 0
trigger1 = screenpos y <0
triggerall = var(39)=var(37) && alive = 1 && var(17) < 10
trigger2 = screenpos y > 220 - (const(size.head.pos.y))
trigger1 = var(39)=var(37)
trigger3 = P2bodyDist y < -200
anim = 8611 + ((enemy,id)<id)
id = 8611
pos = ceil(screenpos x),20+(screenpos y>0)*200
postype = left;back
sprpriority = 4
ignorehitpause = 1
ontop = 1
bindtime = -1
persistent = 1
;facing = (facing)
removetime = 1
scale= const(size.xscale),const(size.yscale)

;Põe um símbolo em você
; Põe um símbolo no P1 (>)-próprio
[State -3]
type = Explod
triggerall = roundstate =2
triggerall = numenemy > 0
trigger1 = screenpos y <0
triggerall = var(39)=var(37) && alive = 1 && var(17) < 10
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
facing = facing;1
removetime = 1
scale= const(size.xscale),const(size.yscale)


[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = Stateno != 100
trigger1 = Stateno != 105
trigger1 = Stateno != 108
trigger1 = Stateno != 107
trigger1 = Stateno != 701
time = 0

;[State 0, SelfState]
;type = SelfState
;trigger1 =  stateno = [2000,2999]
;trigger1 = roundstate = 3
;value = 50
;ctrl =1

[State -3, ctrl set]
type = ctrlset
trigger1 = roundstate = 4
value = 0


;==========================
;---------------------------------------------------------------------------
; Super/Hyper Combo Finish - Background Effect

;---------------------------------------------------------------------------
; Super/Hyper Combo Finish - Background Effect

;[State -3: Helper]
;type = Helper
;triggerall = (WinKO) && (NumHelper(8400) = 0)
;trigger1 =  (hitdefattr = SCA, HA,HP)
;trigger2 = Stateno = 3101 && Animelem = 48
;trigger3 = ProjHitTime(3330) = 1
;helpertype = Normal
;name = "Hyper WinKO"
;id = 8400
;pos = 0,0
;postype = p1
;facing = 0
;stateno = 8400
;keyctrl = 0
;ownpal = 1
;supermovetime = 1000
;pausemovetime = 1000
;
;
;[State -3: Helper]
;type = Helper
;triggerall = (WinKO) && (NumHelper(8420) = 0)
;trigger1 = (hitdefattr = SCA, SA,SP)
;helpertype = Normal
;name = "Super WinKO"
;id = 8420
;pos = 0,0
;postype = p1
;facing = 0
;stateno = 8420
;keyctrl = 0
;ownpal = 1
;supermovetime = 1000
;pausemovetime = 1000




