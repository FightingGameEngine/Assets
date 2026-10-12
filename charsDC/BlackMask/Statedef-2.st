;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

;---------------------------Bullets
[State 0, VarAdd]
type = Varset
trigger1 =roundstate=1||roundstate=3
v = 45    ;fv =
value = 5

[State 0, Explod]
type = Explod
trigger1 =roundstate=2 && numexplod(80000)<1
anim =ifelse(var(12)=1,80002,80000)
ID = 80000
pos = ifelse(teamside=1,25,275),220
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 =stateno=1016&&var(12)=0 || stateno=1015&&var(12)=1
id =80000

[State 0, Explod]
type = Explod
trigger1 =roundstate=2 && numexplod(80001)<1
anim =80001
ID = 80001
pos = ifelse(teamside=1,35,285),220
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = -1
scale = .5,.5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 =roundstate=2 && numexplod(8010)<1
anim =8010+var(45)
ID = 8010
pos = ifelse(teamside=1,45,295),215
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = -1
scale = .4,.4
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;------Variable is delayed so it can change numbers properly
[State 0, VarSet]
type = VarSet
trigger1 =roundstate=2 && time%3=0
v = 46   ;fv = 10
value = var(45)
ignorehitpause =1
;persistent =

;---change number
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 =var(46)!=var(45)
id =8010
ignorehitpause=1
;---------------------------------------------------




[State -2, Damage Dampener]; Scaling in action
type= attackmulset
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) < 3, 24, ifelse(enemynear, gethitvar(hitcount) >= 24, 2, 26 - enemynear, gethitvar(hitcount))) / 24.0
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

[State 0, VarAdd]
type = VarAdd
trigger1 = time = 1
trigger1 = stateno =5000 ||stateno =5010 || stateno =5020 || stateno =5030
v = 1
value = var(3)

[State 0, VarAdd]
type = VarAdd
triggerall = numenemy > 0
trigger1 = enemy, Moveguarded
trigger1 = time = 1
trigger1 = anim =150 ||anim =152 || anim =154
v = 2
value = 30 + var(3)


[State 0, VarAdd]
type = VarAdd
trigger1 = var(1) <=300
trigger1 = var(1) > 0
trigger1 = roundstate = 2
trigger1 = movetype = I
trigger1 = gametime % 2 =1
v = 1
value = -1

[State 0, VarAdd]
type = VarAdd
trigger1 = var(2) <=400
trigger1 = var(2) > 0
trigger1 = roundstate = 2
trigger1 = movetype = I
trigger1 = gametime % 2 =1
v = 2
value = -1

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(2)=%d, var(1)=%d, var(50)=%d, var(59)=%d, p2bodydist y=%d"
params = var(2), var(1), var(50), var(59), floor(p2bodydist y)

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno!=[3000,3999]
trigger1 = NumExplod(10010)>0
id =10010
;ignorehitpause =
;persistent =

; END
