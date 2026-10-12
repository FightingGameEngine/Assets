; States file for {character} -- Specials
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Special Attacks
; 
; Special 1 (QCF + P) -- state 1000
;   fireball
;---------------------------------------------------------------------------

;------------------------------
;------------------------------------------------------------------------------
;Joker Bomb
[StateDef 3333]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3333
poweradd = 60

[State 211, Grenade]
type = Helper
trigger1 = Time = 12
helpertype = Normal
name = "Grenade"
postype = p1
pos = 0,-80
stateno = 3052
ownpal = 1
persistent = 0

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S90,0
volume = 300

[State 60, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Grenade
[Statedef 3052]
type = A
movetype = A
physics = N
anim = 3050
velset = 0, -3
sprpriority = 6

[state 503,1]
type = velmul
trigger1 = facing = 1 && screenpos x = [290,320]
trigger2 = facing = -1 && screenpos x = [0,30]
x = 0.9

[state 503,2]
type = velset
trigger1 = time = 0
x = 4
y = 1

[state 503,3]
type = velset
trigger1 = time = 2
x = 4
y = 4

[state 503,4]
type = velset
trigger1 = time = 2
x = 4
y = 4

[state 503,5]
type = veladd
trigger1 = root, stateno != 210
y = 0.1



[state 508,5]
type = hitdef
trigger1 = time = 0 ;&& p2statetype != A
attr = SCA, HP
damage = 50, 1
hitflag = MAFPD
animtype = up
juggle = 6
guardflag = MA
pausetime = 2, 4
sparkno = S3080
sparkxy = 0, 15
hitsound = S60, 0
guardsound = S1,0
ground.type = Low
ground.slidetime = 18
yaccel = 0.5
ground.hittime = 20
ground.velocity = -2,-9
guard.velocity = -6
air.velocity = -6, -5
air.juggle = 1
air.fall = 0
fall = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = S15,3

[State 508,8]
type = Envcolor
trigger1 = hitcount = 1
persistent = 0
ignorehitpause = 1
value = 255, 255, 255
time = 1
under = 0

[State -2, Bounce from the ground]
type = VelSet
trigger1 = (vel Y > -10) && (Pos Y >= -10) ;Triggers if y velocity is more than 0 and your pos is more or equal to 0
x = 4
y = -9

[State -2, Gravity]
type = VelAdd
trigger1 = (Vel Y < 0) && (Pos Y < 0) ; In air and going up
y = 1

[State 519,16]
type = DestroySelf
triggerall = Movehit
trigger1 = AnimTime = 0
value = 3503

;---------------------------------------------------------------------------
;------------------------------------------------------------------------------
;Joker Gas
[StateDef 4444]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 4444
poweradd = 60

[State 211, Grenade]
type = Helper
trigger1 = Time = 12
helpertype = Normal
name = "Grenade"
postype = p1
pos = 0,-70
stateno = 4450
ownpal = 1
persistent = 0

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S80,0
volume = 300

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S100,0
volume = 300

[State 60, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Gas
[Statedef 4450]
type = A
movetype = A
physics = N
anim = 4450
velset = 3, 0
sprpriority = 6





[state 508,5]
type = hitdef
trigger1 = time = 0 ;&& p2statetype != A
attr = SCA, HP
damage = 50, 1
hitflag = MAFPD
animtype = up
juggle = 6
guardflag = MA
pausetime = 2, 4
sparkno = -1
sparkxy = 0, 15
hitsound = S-1, 0
guardsound = S1,0
ground.type = Low
ground.slidetime = 18
yaccel = 0.5
ground.hittime = 20
ground.velocity = -10
guard.velocity = -6
air.velocity = -6, -5
air.juggle = 1
air.fall = 0
palfx.time = 100
palfx.mul = 200,256,200
palfx.add = 0,30,0
p2stateno = 5300

[Statedef 5300]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5300

[State 0, ]
type = VelSet ;to stop enemy move
trigger1 = Time = 0
x = 0
y = 0

[State 907, 3] ; to make enemy fall if he are in air.
type = SelfState
trigger1 = Pos y != 0
value = 5100

[State 907, 3]
type = SelfState
trigger1 = Time = 100 ;time in dizzy
ctrl = 1
value = 0



[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = S15,3


[State 519,16]
type = DestroySelf
triggerall = Movehit
trigger1 = AnimTime = 0
value = 3503

;------------------------------------------------------------------------
;Trick Buzzer
[StateDef 5555]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 5555
poweradd = 60

[State 211, Buzz Effect]
type = Helper
trigger1 = Animelem = 2
helpertype = Normal
name = "Buzz Effect"
postype = p1
pos = 0,-110
stateno = 5560
ownpal = 1
persistent = 0

[State 878, 1]
type = PosAdd
trigger1 = AnimElem = 2
x = 40


[State 555, dust]
type = Explod
trigger1 = AnimElem = 2
anim = 918
ID = 918
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 3
removeongethit = 1



[State 1010, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S160,7
volume = 300

[State 60, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Buzz Effect
[Statedef 5560]
type = A
movetype = A
physics = N
anim = 5560
velset = 0, 0
sprpriority = 1

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 3
trigger4 = animelem = 5
trigger5 = animelem = 7
trigger6 = animelem = 9
trigger7 = animelem = 10
trigger8 = animelem = 12
trigger9 = animelem = 14
trigger10 = animelem = 16
trigger11 = animelem = 18
value = S110,0
volume = 300

[State 878, 1]
type = PosAdd
trigger1 = AnimElem = 2
x = 40


[state 5560]
type = hitdef
trigger1 = time = 0 ;&& p2statetype != A
attr = SCA, HP
damage = 50, 1
hitflag = MAFPD
animtype = up
juggle = 6
guardflag = MA
pausetime = 2, 4
sparkno = -1
sparkxy = 0, 15
hitsound = S-1, 0
guardsound = S1,0
ground.type = Low
ground.slidetime = 18
yaccel = 0.5
ground.hittime = 20
ground.velocity = -10
guard.velocity = -6
air.velocity = -6, -5
air.juggle = 1
air.fall = 0
fall = 1
p2stateno = 7696

[Statedef 7696]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 7696

[State 7696,0]
type = VelSet ;to stop enemy move
trigger1 = Time = 0
x = -2
y = 0


[State 7696, 3] ; to make enemy fall if he are in air.
type = SelfState
trigger1 = Pos y != 0
value = 5100

[State 7696, 3]
type = SelfState
trigger1 = Time = 40 ;time in dizzy
ctrl = 1
value = 0



[State 7696, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = S15,3


[State 7696,16]
type = DestroySelf
triggerall = Movehit
trigger1 = AnimTime = 0
value = 3503


;------------------------------------------------------------------------------
;Joker Ballon
[StateDef 2200]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 2201
poweradd = 60

[State 211, Ballon]
type = Helper
trigger1 = animelem = 2
helpertype = Normal
name = "Ballon"
postype = p1
pos = 30,-70
keyctrl	= 0
stateno = 2201
ownpal = 1
persistent = 0

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S200,0
volume = 300


[State 60, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Ballon
[Statedef 2201]
type = A
movetype = A
physics = N
anim = 2200
velset = 0, 0
sprpriority = 6


[state 508,5]
type = hitdef
trigger1 = time = 0 ;&& p2statetype != A
attr = SCA, HP
damage = 50, 1
hitflag = MAFPD
animtype = up
juggle = 6
guardflag = MA
pausetime = 2, 4
sparkno = S3080
sparkxy = 10, -25
hitsound = S60, 0
guardsound = S1,0
ground.type = Low
ground.slidetime = 18
yaccel = 0.5
ground.hittime = 20
ground.velocity = 1,-9
guard.velocity = -6
air.velocity = 1, -5
air.juggle = 1
air.fall = 1
fall = 1


[State 2510, end]
type = ChangeState
trigger1 = time = 170
value = 2222
ctrl = 0

[State 2510, end]
type = ChangeState
trigger1 = movecontact
value = 2222
ctrl = 0

;---------------------------------------------------------------------------
;Ballon End
[Statedef 2222]
type = A
movetype = A
physics = N
anim = 3081
velset = 0, 0
sprpriority = 6

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S60,0
volume = 300


[state 508,5]
type = hitdef
trigger1 = time = 0 ;&& p2statetype != A
attr = SCA, HP
damage = 50, 1
hitflag = MAFPD
animtype = up
juggle = 6
guardflag = MA
pausetime = 2, 4
sparkno = S3080
sparkxy = 10, -25
hitsound = S60, 0
guardsound = S1,0
ground.type = Low
ground.slidetime = 18
yaccel = 0.5
ground.hittime = 20
ground.velocity = 1,-9
guard.velocity = -6
air.velocity = -6, -5
air.juggle = 1
air.fall = 1
fall = 1


[State 519,16]
type = DestroySelf
trigger1 = AnimTime = 0
value = 3503
;------------------------------------------------------------------------------
;Air Joker Ballon
[StateDef 2300]
type = A
movetype= A
physics = A
juggle  = 1
velset = 0,0
ctrl = 0
anim = 2300
poweradd = 60

[State 211, Ballon]
type = Helper
trigger1 = animelem = 2
helpertype = Normal
name = "Ballon"
postype = p1
pos = 30,-70
keyctrl	= 0
stateno = 2201
ownpal = 1
persistent = 0

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S200,0
volume = 300


[State 60, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Finish Hit Explod (based on FlowaGirl and Ethan Lives codes)
; (taken with permission from McCready's StrongGuy char)
[Statedef 8900]
type = S
movetype = I
physics = N
anim = 8930

;[State 8900, 1]
;type = Pause
;trigger1 = (!Time)
;time = 12
;movetime = 12

[State 8900, 1]
type = EnvShake
trigger1 = (!Time)
time = 12
freq = 120;10
ampl = -3;2
phase = 90

[State 8900, 2]
type = Explod
triggerall = (NumExplod(8900) < 1)
trigger1 = Time = 0
persistent = 0
anim = 8900
ID = 8900
postype = left
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
bindtime = -1
ontop = 1
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, 3]
type = PlaySnd
trigger1 = (NumExplod(8900) != 0)
value = 30, 0
persistent = 0
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, done]
type = DestroySelf
trigger1 = RoundState = 4
