
;==========================================================================
;Guilty Gear Style 1-Hit Kill Haze Effect Positive States by Shinra358 Start
; (first implemented by SethZankuten for GLHal; borrowed and adapted by Buyog)
;==========================================================================
[Statedef 10050]; aura glow definition start
type = S
movetype = I
physics = N
sprpriority = -15
velset = 0,0
ctrl = 0
;

[State 10050, VarSet] ; grab Hal's palette number
type = VarSet
trigger1 = !Time
v = 10
value = parent,palno
;
[state 10050, noshadow]; aura has no shadow
type = assertspecial
triggerall = alive
trigger1 = 1
flag = noshadow
;
[state 10050, playerpush]; the aura can go right through you
type = playerpush
triggerall = alive
trigger1 = 1
time = -1
ignorehitpause = 1
persistent = 1
value = 0
;
[state 10050, nohit]; not able to hit the aura and vice versa
type = nothitby
triggerall = alive
trigger1 = 1
time = -1
persistent = 1
value = SCA
;
[State 10050, ChangeAnim]; makes the aura do what you do
type = ChangeAnim
triggerall = alive
trigger1 = selfanimexist(parent,anim)
elem = parent,animelemno(0)
value = parent, anim
;
[State 10050, bindtoroot]; binds the auras position to the player using it
type = bindtoroot
triggerall = alive
trigger1 = 1
facing = 1
pos = 0, 0
time = -1
ignorehitpause = 1
persistent = 1

; aura colors:
;palno<=6:    0, 150,   0   ;green
;palno=7:   215,   0,   0   ;red
;palno=8:   215, 106,   0   ;orange
;palno=9:   215, 215,   0   ;yellow
;palno=10:    0,   0, 256   ;blue
;palno=11:   64,   0, 256   ;indigo
;palno=12:    0,   0,   0   ;black

[State 10050, color]; normal: green
type = PalFX
triggerall = var(10) <= 6
trigger1 = 1
add = 0, 150, 0
mul = 125, 256, 0
sinadd = 10, 256, 10, 50
invertall = 0
color = 256
ownpal = 1
time = -1
ignorehitpause = 1
persistent = 1

[State 10050, color]; warm alternates (red/orange/yellow)
type = PalFX
triggerall = var(10) = [7,9]
trigger1 = 1
add = 215, IfElse(var(10)=7, 0, IfElse(var(10)=8, 106, 215)), 0
mul = 256, IfElse(var(10)=7, 64, IfElse(var(10)=8, 128, 256)),0
sinadd = 256, IfElse(var(10)=7, 10, IfElse(var(10)=8, 128, 256)), 10, 50
invertall = 0
color = 256
ownpal = 1
time = -1
ignorehitpause = 1
persistent = 1

[State 10050, color]; cool alternates (blue/indigo)
type = PalFX
triggerall = var(10) = [10,11]
trigger1 = 1
add = IfElse(var(10)=10,0,64), 0, 256
mul = IfElse(var(10)=10,0,64), 0, 256
sinadd = IfElse(var(10)=10, 0, 32), 0, 160, 1
invertall = 0
color = 256
ownpal = 1
time = -1
ignorehitpause = 1
persistent = 1

[State 10050, black] ; no palfx necessary to get a black aura
type = Null ;PalFX
triggerall = var(10) = 6
trigger1 = 1
add = 192, 0, 256
mul = 192, 0, 256
sinadd = 64, 0, 160, 1
invertall = 0
color = 256
ownpal = 1
time = -1
ignorehitpause = 1
persistent = 1

[State 10050, trans]; makes the aura see through
type = trans
triggerall = alive
trigger1 = 1
trans = addalpha
alpha = 256 - (15*time), (15*time)
time = -1
ignorehitpause = 1
persistent = 1
;
[State 10050, angledraw]; how big the aura radiates over time
type = angledraw
triggerall = alive
trigger1 = 1
value = 0
scale = 1 + (.0065*time), 1 + (0.0065*time)
time = -1
ignorehitpause = 1
persistent = 1
;
[State 10050, destroyself]; time to restart the hazing animations of the aura
type = Destroyself
triggerall = alive
trigger1 = time >= 15
;
;==========================================================================
;Guilty Gear Style 1-Hit Kill Haze Effect Positive States by Shinra358 End
;==========================================================================

