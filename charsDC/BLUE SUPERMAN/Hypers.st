;-------------------------------------------------------------------------------
;Super Heat Vision
[Statedef 3000]
type    = S
movetype= A
physics = S
juggle = 0;  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3000
sprpriority = 0


[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 4
flag = noBG
flag2 = noFG
ignorehitpause = 1

[state 3000, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(7779) = 0
trigger1 = AnimElem = 1
anim = 7779
id = 7779
pos = -2,-100
postype = p1
sprpriority = -2
bindtime = -1
scale = 1,1
removetime = -2
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40

[State 3000, a5] ; SUPER PAUSE
type = SuperPause
triggerall = PrevStateNo != 3770
trigger1 = !Var(55)=1 && !time
darken = 0
anim = S8400
sound = S8889, 0
pos = 7, -55
movetime = 40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1









[State 3000, Hyper Dust]
type = Explod
triggerall = PrevStateNo != 3770
trigger1 = animelem = 1
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
triggerall = PrevStateNo != 3770
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
triggerall = PrevStateNo != 3770
trigger1 = animelem = 1
anim = 10006
name = "Hyper Explode"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
triggerall = PrevStateNo != 3770
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
name = "Left Arrow"
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
triggerall = PrevStateNo != 3770
trigger1 = AnimElem = 1
trigger1 = facing = -1
name = "Right Arrow"
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
triggerall = PrevStateNo != 3770
trigger1 = AnimElem = 1
name = "Super Portrait"
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1






[State 3000, superportrait]
type = Explod
triggerall = PrevStateNo != 3770
trigger1 = AnimElem = 1
name = "Hyper Explod Background"
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7




[State 3000, superportrait black]
type = Explod
triggerall = PrevStateNo != 3770
trigger1 = AnimElem = 1
name = "Black Background"
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6



[State 0, Helper]; ====================================calls hyperbg
type = Helper
triggerall = PrevStateNo != 3770
trigger1 =  AnimElem = 1
helpertype = normal ;player
name = "Hyper Background"
ID = 9600
stateno = 9600
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0





;------------End of Hyper Effects

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 172,3
channel = -1

[State 0, Helper]
type = Helper
trigger1 = animelem = 6
helpertype = normal ;player
name = "Hyper Cannon"
ID = 3001
stateno = 3001
pos = 0,-80
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0


[State 0, PlaySnd]
type = PlaySnd
triggerall = time > 22
triggerall = time < 102
trigger1 = timemod = 5,1
value = 28
volume = 100




[State 1000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Super Heat Vision
[Statedef 3500]
type    = A
movetype= A
physics = N
juggle = 0;  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3500
sprpriority = 0


[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 4
flag = noBG
flag2 = noFG
ignorehitpause = 1



[State 3000, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
darken = 0
anim = S8400
sound = S8889, 0
pos = 7, -55
movetime = 40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1









[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
name = "Hyper Explode"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
name = "Left Arrow"
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
name = "Right Arrow"
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Super Portrait"
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1






[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Hyper Explod Background"
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7




[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
name = "Black Background"
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6



[State 0, Helper]; ====================================calls hyperbg
type = Helper
trigger1 =  AnimElem = 1
helpertype = normal ;player
name = "Hyper Background"
ID = 9600
stateno = 9600
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0





;------------End of Hyper Effects

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 172,3
channel = -1

[State 0, Helper]
type = Helper
trigger1 = animelem = 6
helpertype = normal ;player
name = "Hyper Cannon"
ID = 3501
stateno = 3501
pos = 0,-80
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0


[State 0, PlaySnd]
type = PlaySnd
triggerall = time > 22
triggerall = time < 102
trigger1 = timemod = 5,1
value = 28
volume = 100




[State 1000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 0

;Hyper Beam
[Statedef 3510]
type    = A
movetype= A
physics = N
juggle = 0;  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3510
sprpriority = 0


[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 4
flag = noBG
flag2 = noFG
ignorehitpause = 1



[State 3000, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
darken = 0
anim = S8400
sound = S8889, 0
pos = 7, -55
movetime = 40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1









[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
name = "Hyper Explode"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
name = "Left Arrow"
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
name = "Right Arrow"
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Super Portrait"
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1






[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Hyper Explod Background"
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7




[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
name = "Black Background"
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6



[State 0, Helper]; ====================================calls hyperbg
type = Helper
trigger1 =  AnimElem = 1
helpertype = normal ;player
name = "Hyper Background"
ID = 9600
stateno = 9600
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0





;------------End of Hyper Effects

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 172,3
channel = -1

[State 0, Helper]
type = Helper
trigger1 = animelem = 6
helpertype = normal ;player
name = "Hyper Beam"
ID = 3511
stateno = 3511
pos = 0,-80
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0


[State 0, PlaySnd]
type = PlaySnd
triggerall = time > 22
triggerall = time < 102
trigger1 = timemod = 5,1
value = 28
volume = 100




[State 1000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 0

[Statedef 3001]
type = A
movetype = A
physics = N
anim = 3001
velset = 0,0
sprpriority = 99

[State 3001, ParentVarSet]
type = ParentVarSet
trigger1 = enemynear,movetype = H
fv = 27
value = 1

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent,pos x ;- ifelse(facing=-1,-30,30);+ 30;- 10
y = parent,pos y - 80

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1



[State 220, HitDef]
type = HitDef
trigger1 = timemod= 2,1
attr = S, HP
;damage = 6+((NumHelper(3302)||NumHelper(3304)) * 6),1
damage = 7,1
guardflag = MA
pausetime = 0,1
hitsound = S29,0
guardsound = S8500,0
sparkno = -1
sparkxy = -1
guard.sparkno = S8001
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8,ifelse(enemynear,name="Havok",0,-5)
guard.velocity = -5
air.velocity = -4,-1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0
envshake.time = 9
envshake.ampl = 5
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1
palfx.invertall = 1
fall = 1

[State -2, Damage Dampener]; Scaling in action
type= attackmulset
triggerall = root,numtarget
trigger1= numenemy
trigger1 = root,time % 8 = 0
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.9, 0.8**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

[State 0, Explod]
type = Explod
triggerall = numexplod(9995)=0
trigger1 = movehit
anim = 9995
ID = 9995
pos = 0,-90
postype = p2  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 20
ownpal = 1
removeongethit = 0








[State 0, StopSnd]
type = StopSnd
trigger1 =  animtime = 0
trigger2 = parent, anim != 3000
channel = 1
;ignorehitpause =
;persistent =


[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 3000
;ignorehitpause =
;persistent =

[Statedef 3501]
type = A
movetype = A
physics = N
anim = 3501
velset = 0,0
sprpriority = 99

[State 3001, ParentVarSet]
type = ParentVarSet
trigger1 = enemynear,movetype = H
fv = 27
value = 1

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent,pos x - 75*facing ;- ifelse(facing=-1,-30,30);+ 30;- 10
y = parent,pos y - 94

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 3501, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1
persistent = 1

[State 3501, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -37
ignorehitpause = 1
persistent = 1


[State 3501, SprPriority]
type = SprPriority
trigger1 = 1
value = 10

[State 220, HitDef]
type = HitDef
trigger1 = timemod= 2,1
attr = S, HP
;damage = 6+((NumHelper(3302)||NumHelper(3304)) * 6),1
damage = 7,1
guardflag = MA
pausetime = 0,1
hitsound = S29,0
guardsound = S8500,0
sparkno = -1
sparkxy = -40,ifelse(p2statetype = A, floor((20+ random/10)), floor((140+ random/10)))
guard.sparkno = S8001
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8,ifelse(enemynear,name="Havok",0,-5)
guard.velocity = -5
air.velocity = -3,-1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0
envshake.time = 9
envshake.ampl = 5
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1
palfx.invertall = 1
fall = 1



[State 0, Explod]
type = Explod
triggerall = numexplod(9995)=0
trigger1 = movehit
anim = 9995
ID = 9995
pos = 0,-90
postype = p2  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 20
ownpal = 1
removeongethit = 0








[State 0, StopSnd]
type = StopSnd
trigger1 =  animtime = 0
trigger2 = parent, anim != 3500
channel = 1
;ignorehitpause =
;persistent =


[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 3500
;ignorehitpause =
;persistent =

[Statedef 3511]
type = A
movetype = A
physics = N
anim = 3511
velset = 0,0
sprpriority = 99

[State 3001, ParentVarSet]
type = ParentVarSet
trigger1 = enemynear,movetype = H
fv = 27
value = 1

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent,pos x - 65*facing ;- ifelse(facing=-1,-30,30);+ 30;- 10
y = parent,pos y - 160

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 3501, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1
persistent = 1

[State 3501, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -37
ignorehitpause = 1
persistent = 1


[State 3501, SprPriority]
type = SprPriority
trigger1 = 1
value = 10

[State 220, HitDef]
type = HitDef
trigger1 = timemod= 2,1
attr = S, HP
;damage = 6+((NumHelper(3302)||NumHelper(3304)) * 8),1
damage = 7,1
guardflag = MA
pausetime = 0,1
hitsound = S37,0
guardsound = S8500,0
sparkno = S3202
guard.sparkno = S8001
sparkxy = -40,ifelse(p2dist y <= 0, floor((80+ random/10)), floor((140+ random/10)))
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8,ifelse(enemynear,name="Havok",0,-5)
guard.velocity = -5
air.velocity = -3,-1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0
envshake.time = 9
envshake.ampl = 5
fall = 1



[State 0, Explod]
type = Null;Explod
triggerall = numexplod(9995)=0
trigger1 = movehit
anim = 9995
ID = 9995
pos = 0,-90
postype = p2  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 20
ownpal = 1
removeongethit = 0








[State 0, StopSnd]
type = StopSnd
trigger1 =  animtime = 0
trigger2 = parent, anim != 3510
channel = 1
;ignorehitpause =
;persistent =


[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 3510
;ignorehitpause =
;persistent =

;-------------------------------------------------------------------------------
;Hyper Cannnon
[Statedef 3100]
type    = S
movetype= A
physics = S
juggle = 0;  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3100
sprpriority = 0


[State 3100, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 4
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3100, Width]
type = Width
trigger1 = Time < 40
player = 34, 0

[state 3100, Explod]
type = Explod
triggerall = NumExplod(31001) = 0
trigger1 = AnimElem = 1
anim = 31001
id = 31001
pos = 0,0
postype = p1
sprpriority = 3
bindtime = -1
scale = 1,1
removetime = -2
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40

[State 3100, a5] ; SUPER PAUSE
type = SuperPause
triggerall = PrevStateNo != 3770
trigger1 = !Var(55)=1 && !time
darken = 0
anim = S8400
sound = S8889, 0
pos = 7, -55
movetime = 40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1









[State 3100, Hyper Dust]
type = Explod
triggerall = PrevStateNo != 3770
trigger1 = animelem = 1
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3100, Hyper Circle]
type = Explod
triggerall = PrevStateNo != 3770
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3100, Hyper Explode]
type = Explod
triggerall = PrevStateNo != 3770
trigger1 = animelem = 1
anim = 10006
name = "Hyper Explode"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3100, superportrait]
type = Explod
triggerall = PrevStateNo != 3770
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
name = "Left Arrow"
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3100, superportrait]
type = Explod
triggerall = PrevStateNo != 3770
trigger1 = AnimElem = 1
trigger1 = facing = -1
name = "Right Arrow"
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3100, superportrait]
type = Explod
triggerall = PrevStateNo != 3770
trigger1 = AnimElem = 1
name = "Super Portrait"
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1






[State 3100, superportrait]
type = Explod
triggerall = PrevStateNo != 3770
trigger1 = AnimElem = 1
name = "Hyper Explod Background"
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7




[State 3100, superportrait black]
type = Explod
triggerall = PrevStateNo != 3770
trigger1 = AnimElem = 1
name = "Black Background"
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6



[State 0, Helper]; ====================================calls hyperbg
type = Helper
triggerall = PrevStateNo != 3770
trigger1 =  AnimElem = 1
helpertype = normal ;player
name = "Hyper Background"
ID = 9600
stateno = 9600
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0





;------------End of Hyper Effects

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 172,3
channel = -1

[State 0, Helper]
type = Helper
trigger1 = animelem = 6
helpertype = normal ;player
name = "Hyper Cannon"
ID = 3101
stateno = 3101
pos = 0,-80
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0


[State 0, PlaySnd]
type = PlaySnd
triggerall = time > 22
triggerall = time < 102
trigger1 = timemod = 5,1
value = 34
volume = 100




[State 1000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3101]
type = A
movetype = A
physics = N
anim = 3101
velset = 0,0
sprpriority = 99

[State 3101, ParentVarSet]
type = ParentVarSet
trigger1 = enemynear,movetype = H
fv = 27
value = 1

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent,pos x ;- ifelse(facing=-1,-30,30);+ 30;- 10
y = parent,pos y - 80

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1



[State 220, HitDef]
type = HitDef
trigger1 = timemod= 2,1
attr = S, HP
;damage = 6+((NumHelper(3302)||NumHelper(3304)) * 6),1
damage = 7,1
guardflag = MA
pausetime = 0,1
hitsound = S35,0
guardsound = S8500,0
sparkno = S3102
guard.sparkno = S8001
sparkxy = -40,floor((-60+ random/10))
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8,ifelse(enemynear,name="Havok",0,-5)
guard.velocity = -5
air.velocity = -3,-1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0
envshake.time = 9
envshake.ampl = 5
fall = 1




[State -2, Damage Dampener]; Scaling in action
type= attackmulset
triggerall = root,numtarget
trigger1= numenemy
trigger1 = root,time % 8 = 0
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.9, 0.8**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1


[State 0, StopSnd]
type = StopSnd
trigger1 =  animtime = 0
trigger2 = parent, anim != 3100
channel = 1
;ignorehitpause =
;persistent =


[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 3100
;ignorehitpause =
;persistent =



;-------------------------------------------------------------------------------
;Hyper Beam
[Statedef 3200]
type    = S
movetype= A
physics = S
juggle = 0;  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3200
sprpriority = 0


[State 3200, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 4
flag = noBG
flag2 = noFG
ignorehitpause = 1

[state 3200, Explod]
type = Explod
triggerall = palno != [8,9]
triggerall = NumExplod(32001) = 0
trigger1 = AnimElem = 1
anim = 32001
id = 32001
pos = 0,0
postype = p1
sprpriority = -2
bindtime = -1
scale = 1,1
removetime = -2
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40

[State 3200, a5] ; SUPER PAUSE
type = SuperPause
triggerall = PrevStateNo != 3770
trigger1 = !Var(55)=1 && !time
darken = 0
anim = S8400
sound = S8889, 0
pos = 7, -55
movetime = 40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1









[State 3200, Hyper Dust]
type = Explod
triggerall = PrevStateNo != 3770
trigger1 = animelem = 1
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3200, Hyper Circle]
type = Explod
triggerall = PrevStateNo != 3770
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3200, Hyper Explode]
type = Explod
triggerall = PrevStateNo != 3770
trigger1 = animelem = 1
anim = 10006
name = "Hyper Explode"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3200, superportrait]
type = Explod
triggerall = PrevStateNo != 3770
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
name = "Left Arrow"
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3200, superportrait]
type = Explod
triggerall = PrevStateNo != 3770
trigger1 = AnimElem = 1
trigger1 = facing = -1
name = "Right Arrow"
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3200, superportrait]
type = Explod
triggerall = PrevStateNo != 3770
trigger1 = AnimElem = 1
name = "Super Portrait"
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1






[State 3200, superportrait]
type = Explod
triggerall = PrevStateNo != 3770
trigger1 = AnimElem = 1
name = "Hyper Explod Background"
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7




[State 3200, superportrait black]
type = Explod
triggerall = PrevStateNo != 3770
trigger1 = AnimElem = 1
name = "Black Background"
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6



[State 0, Helper]; ====================================calls hyperbg
type = Helper
triggerall = PrevStateNo != 3770
trigger1 =  AnimElem = 1
helpertype = normal ;player
name = "Hyper Background"
ID = 9600
stateno = 9600
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0





;------------End of Hyper Effects

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 172,3
channel = -1

[State 0, Helper]
type = Helper
trigger1 = animelem = 6
helpertype = normal ;player
name = "Hyper Beam"
ID = 3201
stateno = 3201
pos = 0,-80
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0


[State 0, PlaySnd]
type = PlaySnd
triggerall = time > 22
triggerall = time < 102
trigger1 = timemod = 5,1
value = 36




[State 1000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3201]
type = A
movetype = A
physics = N
anim = 3201
velset = 0,0
sprpriority = 99

[State 3201, ParentVarSet]
type = ParentVarSet
trigger1 = enemynear,movetype = H
fv = 27
value = 1

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent,pos x ;- ifelse(facing=-1,-30,30);+ 30;- 10
y = parent,pos y - 80

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1



[State 220, HitDef]
type = HitDef
trigger1 = timemod= 2,1
attr = S, HP
;damage = 6+((NumHelper(3302)||NumHelper(3304)) * 8),1
damage = 7,1
guardflag = MA
pausetime = 0,1
hitsound = S37,0
guardsound = S8500,0
sparkno = S3202
guard.sparkno = S8001
sparkxy = -40,floor((-60+ random/10))
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8,ifelse(enemynear,name="Havok",0,-5)
guard.velocity = -5
air.velocity = -3,-1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0
envshake.time = 9
envshake.ampl = 5
fall = 1

[State -2, Damage Dampener]; Scaling in action
type= attackmulset
triggerall = root,numtarget
trigger1= numenemy
trigger1 = root,time % 8 = 0
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.9, 0.8**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1


[State 0, StopSnd]
type = StopSnd
trigger1 =  animtime = 0
trigger2 = parent, anim != 3200
channel = 1
;ignorehitpause =
;persistent =


[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 3200
;ignorehitpause =
;persistent =


;-------------------------------------------------------------------------------
;Sun Hyper Battle Scream
[Statedef 3300]
type    = S
movetype= A
physics = S
juggle = 0;  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3300
sprpriority = 0





[State 3300, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 2
flag = noBG
flag2 = noFG
ignorehitpause = 1

[state 3300, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(866) = 0
trigger1 = AnimElem = 1
anim = 866
id = 866
pos = -17,-108
postype = p1
sprpriority = -2
bindtime = -1
scale = 1,1
removetime = -2
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40

[State 3300, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
darken = 0
anim = S8400
sound = S8889, 0
pos = 7, -55
movetime = 10
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1



[State 3300, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 53






[State 3300, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3300, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3300, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
name = "Hyper Explode"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3300, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
name = "Left Arrow"
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3300, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
name = "Right Arrow"
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3300, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Super Portrait"
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1






[State 3300, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Hyper Explod Background"
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7




[State 3300, superportrait black]
type = Explod
trigger1 = AnimElem = 1
name = "Black Background"
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6



[State 3300, Helper]; ====================================calls hyperbg
type = Helper
trigger1 =  AnimElem = 1
helpertype = normal ;player
name = "Hyper Background"
ID = 9600
stateno = 9600
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 3300, statetypeset]
type = statetypeset
trigger1 = animelem = 2
statetype = A
physics = N
ignorehitpause = 1

[State 3300, Explod] ; cape
type = Explod
trigger1 = NumExplod(3377) = 0
anim = 3377
ID = 3377
pos = -35,-60
postype = p1
facing = 1
vfacing = 1
bindtime = -1	 ; -1 will be bound until the explod is removed or another controller affects the bindtime.
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1  ; -1 displayed indefinitely / -2 removed when AnimTime = 0
supermovetime = 2147483647
pausemovetime = 2147483647
scale = 0.70,0.70
sprpriority = -4
ontop = 0
shadow = 0,0,0   ; -1,0,0 the shadow color of the MUGEN stage
ownpal = 1
removeongethit = 0
ignorehitpause = 1
trans = default   ; default - does nothing / none - disables transparency / add - draws with full additive transparency / addalpha - draws with additive transparency (alpha must be specified) / add1 - draws with additive transparency, with alpha at 256,128 / sub - draws with full subtractive transparency
alpha = 256,0
persistent = 0

[State 3300, velset]
type = velset
triggerall = statetype = A
trigger1 = pos y > -60
trigger1 = animelemtime(6) < 10
x = ifelse(backedgedist < 35 && frontedgedist >= 35, 3.66, ifelse(frontedgedist < 35 && backedgedist >= 35, -3.66, 0))
y = -6.78
ignorehitpause = 1

[State 3300, velset]
type = velset
triggerall = statetype = A
trigger1 = pos y <= -60
trigger1 = animelemtime(6) < 10
x = 0
y = 0
ignorehitpause = 1

[State 3300, veladd]
type = veladd
triggerall = statetype = A
trigger1 = pos y < 0
trigger1 = animelemtime(6) >= 10
x = 0
y = 1.14
ignorehitpause = 1

[State 3300, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1


;------------End of Hyper Effects

[State 3300, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 172,3
channel = -1

[State 3300, Helper]
type = Helper
triggerall = NumHelper(3301) = 0
trigger1 = animelemtime(5) = 5
helpertype = normal ;player
name = "Yellow Aura 1"
ID = 3301
stateno = 3301
pos = -20,-90
postype = p1    ;p2,front,back,left,right
bindtime = -1
ownpal = 1
pausemovetime = 2147483647
supermovetime = 2147483647

[State 3300, Helper] ; by Seravy
Type = Helper
Triggerall = NumHelper(3301) != 0
Trigger1 = time %10 =6
StateNo = 252
ID = 253
Name = "WindPush"
Pos = -20,-floor(Pos Y)
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 1
Size.YScale = 1
Size.Ground.Front = 50
Size.Ground.Back = 50
Size.Air.Front = 50
Size.Air.Back = 50
Size.Height=999
Facing = -1

[State 3300, Helper] ; by Seravy
Type = Helper
Triggerall = NumHelper(3301) != 0
Trigger1 = time %10 =6
StateNo = 252
ID = 252
Name = "WindPush"
Pos = 20,-floor(Pos Y)
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 1
Size.YScale = 1
Size.Ground.Front = 50
Size.Ground.Back = 50
Size.Air.Front = 50
Size.Air.Back = 50
Size.Height=999
Facing = 1

[State 3300, Ground FX]
type = Explod
trigger1 = NumHelper(3301) != 0
Trigger1 = NumExplod(8170) = 0
name = "Special Dust"
anim = 8170
id = 8170
pos = 0,-floor(Pos Y)
sprpriority = 5
supermovetime = -1
postype = p1
bindtime = 1
removetime = -2
removeongethit = 1
scale = .7, .7
facing = -1
ownpal = 1
ignorehitpause = 1

[State 3300, Ground FX]
type = Explod
trigger1 = NumHelper(3301) != 0
Trigger1 = NumExplod(8171) = 0
name = "Special Dust"
anim = 8170
id = 8171
pos = 0,-floor(Pos Y)
sprpriority = 5
supermovetime = -1
postype = p1
bindtime = 1
removetime = -2
removeongethit = 1
scale = .7, .7
facing = 1
ownpal = 1
ignorehitpause = 1

[State 3300, Helper]
type = Helper
triggerall = NumHelper(3302) = 0
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
helpertype = normal ;player
name = "Yellow Aura 2"
ID = 3302
stateno = 3302
pos = 0,0
postype = p1    ;p2,front,back,left,right
bindtime = -1
ownpal = 1
pausemovetime = 2147483647
supermovetime = 2147483647

[State 3300, PlaySnd]
type = PlaySnd
triggerall = time > 22
triggerall = time < 102
trigger1 = timemod = 5,1
value = 38
volume = 100

[State 3300, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52

[State 3300, 5]
type = Null;ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Sun Hyper Battle Scream
[Statedef 3600]
type    = S
movetype= A
physics = S
juggle = 0;  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3600
sprpriority = 0

[State 3600, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 53

[State 3600, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 2
flag = noBG
flag2 = noFG
ignorehitpause = 1

[state 3600, Explod]
type = Explod
triggerall = NumExplod(866) = 0
trigger1 = AnimElem = 1
anim = 866
id = 866
pos = -17,-108
postype = p1
sprpriority = -2
bindtime = -1
scale = 1,1
removetime = -2
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40

[State 3600, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
darken = 0
anim = S8400
sound = S8889, 0
pos = 7, -55
movetime = 10
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1




[State 3600, kryptonite vfx]
type = Explod
trigger1 = animelem = 3
anim = 3661
name = "Kryptonite VFX"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 1
supermovetime = 40




[State 3600, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3600, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3600, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
name = "Hyper Explode"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3600, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
name = "Left Arrow"
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3600, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
name = "Right Arrow"
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3600, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Super Portrait"
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1






[State 3600, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Hyper Explod Background"
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7




[State 3600, superportrait black]
type = Explod
trigger1 = AnimElem = 1
name = "Black Background"
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6



[State 3600, Helper]; ====================================calls hyperbg
type = Helper
trigger1 =  AnimElem = 1
helpertype = normal ;player
name = "Hyper Background"
ID = 9600
stateno = 9600
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 3600, statetypeset]
type = statetypeset
trigger1 = animelem = 2
statetype = A
physics = N
ignorehitpause = 1

[State 3600, Explod] ; cape
type = Explod
trigger1 = NumExplod(3377) = 0
anim = 3377
ID = 3377
pos = -35,-60
postype = p1
facing = 1
vfacing = 1
bindtime = -1	 ; -1 will be bound until the explod is removed or another controller affects the bindtime.
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1  ; -1 displayed indefinitely / -2 removed when AnimTime = 0
supermovetime = 2147483647
pausemovetime = 2147483647
scale = 0.70,0.70
sprpriority = -4
ontop = 0
shadow = 0,0,0   ; -1,0,0 the shadow color of the MUGEN stage
ownpal = 1
removeongethit = 0
ignorehitpause = 1
trans = default   ; default - does nothing / none - disables transparency / add - draws with full additive transparency / addalpha - draws with additive transparency (alpha must be specified) / add1 - draws with additive transparency, with alpha at 256,128 / sub - draws with full subtractive transparency
alpha = 256,0
persistent = 0

[State 3600, velset]
type = velset
triggerall = statetype = A
trigger1 = pos y > -60
trigger1 = animelemtime(6) < 10
x = ifelse(backedgedist < 35 && frontedgedist >= 35, 3.66, ifelse(frontedgedist < 35 && backedgedist >= 35, -3.66, 0))
y = -6.78
ignorehitpause = 1

[State 3600, velset]
type = velset
triggerall = statetype = A
trigger1 = pos y <= -60
trigger1 = animelemtime(6) < 10
x = 0
y = 0
ignorehitpause = 1

[State 3600, veladd]
type = veladd
triggerall = statetype = A
trigger1 = pos y < 0
trigger1 = animelemtime(6) >= 10
x = 0
y = 1.14
ignorehitpause = 1

[State 3600, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1


;------------End of Hyper Effects

[State 3600, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 172,3
channel = -1

[State 3600, Helper]
type = Helper
triggerall = NumHelper(3303) = 0
trigger1 = animelemtime(5) = 5
helpertype = normal ;player
name = "Green Aura 1"
ID = 3303
stateno = 3303
pos = -20,-90
postype = p1    ;p2,front,back,left,right
bindtime = -1
ownpal = 1
pausemovetime = 2147483647
supermovetime = 2147483647

[State 3600, Helper] ; by Seravy
Type = Helper
Triggerall = NumHelper(3303) != 0
Trigger1 = time %10 =6
StateNo = 252
ID = 253
Name = "WindPush"
Pos = -20,-floor(Pos Y)
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 1
Size.YScale = 1
Size.Ground.Front = 50
Size.Ground.Back = 50
Size.Air.Front = 50
Size.Air.Back = 50
Size.Height=999
Facing = -1

[State 3600, Helper] ; by Seravy
Type = Helper
Triggerall = NumHelper(3303) != 0
Trigger1 = time %10 =6
StateNo = 252
ID = 252
Name = "WindPush"
Pos = 20,-floor(Pos Y)
PosType = P1
Ownpal = 1
IgnoreHitPause = 1
Persistent = 1
Size.XScale = 1
Size.YScale = 1
Size.Ground.Front = 50
Size.Ground.Back = 50
Size.Air.Front = 50
Size.Air.Back = 50
Size.Height=999
Facing = 1

[State 3600, Ground FX]
type = Explod
trigger1 = NumHelper(3304) != 0
Trigger1 = NumExplod(8170) = 0
name = "Special Dust"
anim = 8170
id = 8170
pos = 0,-floor(Pos Y)
sprpriority = 5
supermovetime = -1
postype = p1
bindtime = 1
removetime = -2
removeongethit = 1
scale = .7, .7
facing = -1
ownpal = 1
ignorehitpause = 1

[State 3600, Ground FX]
type = Explod
trigger1 = NumHelper(3304) != 0
Trigger1 = NumExplod(8171) = 0
name = "Special Dust"
anim = 8170
id = 8171
pos = 0,-floor(Pos Y)
sprpriority = 5
supermovetime = -1
postype = p1
bindtime = 1
removetime = -2
removeongethit = 1
scale = .7, .7
facing = 1
ownpal = 1
ignorehitpause = 1

[State 3600, Helper]
type = Helper
triggerall = NumHelper(3304) = 0
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
helpertype = normal ;player
name = "Green Aura 2"
ID = 3304
stateno = 3304
pos = 0,0
postype = p1    ;p2,front,back,left,right
bindtime = -1
ownpal = 1
pausemovetime = 2147483647
supermovetime = 2147483647

[State 3600, PlaySnd]
type = PlaySnd
triggerall = time > 22
triggerall = time < 102
trigger1 = timemod = 5,1
value = 38
volume = 100

[State 3600, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52

[State 3600, 5]
type = Null;ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3301] ;Yellow Aura 1
type = A
movetype = I
physics = N
anim = 3301
velset = 0,0
sprpriority = -9

[State 3301, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 3301, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,200
ignorehitpause = 1

[State 3301, PalFX]
type = PalFX
trigger1 = Time = 0
time = 60
add = 64,64,0
sinadd = 64,64,0,3
ignorehitpause = 1

[State 3301, AngleDraw]
type = AngleDraw
trigger1 = Time % 4 = 0
value = 0
scale = 1.25, 1.25
ignorehitpause = 1

[State 3301, AngleDraw]
type = AngleDraw
trigger1 = Time % 4 = 2
value = 0
scale = 1.50, 1.50
ignorehitpause = 1

[State 3301, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3301, HitOverride]
type = HitOverride
trigger1 = 1
slot = 0
stateno = 3301
attr = SCA, AA, AP, AT
ignorehitpause = 1
time = -1
ignorehitpause = 1

[State 3301, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 3301
ctrl = 0 
ignorehitpause = 1

[State 3301, SelfState]
type = SelfState
trigger1 = MoveReversed
value = 3301
ctrl = 0 
ignorehitpause = 1

[State 3301, DestroySelf]
type = DestroySelf
trigger1 = time >= 120
trigger2 = parent, stateno = 52
trigger3 = parent, stateno != 3300
trigger4 = parent, stateno = [4000,4005]

[Statedef 3302] ;Yellow Aura 2
type = A
movetype = I
physics = N
anim = 3301
velset = 0,0
sprpriority = -9

[State 3302, ChangeAnim] ;parent's anim
type = ChangeAnim
triggerall = Anim != Parent, Anim
trigger1 = Parent, HitPauseTime = 0
value = Parent, Anim
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State 3302, ChangeAnim] ;parent's anim
type = ChangeAnim
trigger1 = Parent, HitPauseTime != 0
value = Anim
elem = Parent, AnimElemNo(0)
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State 3302, Pause]
type = Pause
trigger1 = Parent, HitPauseTime != 0
time = Floor(Parent, HitPauseTime / 6)
endcmdbuftime = Floor(Parent, HitPauseTime / 6)
movetime = 0
pausebg = 0
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State 3302, BindToParent]
type = BindToParent
trigger1 = 1
facing = 1
pos = 0,0
persistent = 1
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State 3302, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State 3302, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,100
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State 3302, PalFX]
type = PalFX
trigger1 = 1
time = 1
add = 250,250,0
sinadd = 250,250,0,2
invertall = 0
color = 256
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State 3302, AngleDraw]
type = AngleDraw
trigger1 = Time % 4 = 0
value = 0
scale = 1.05, 1.05
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State 3302, AngleDraw]
type = AngleDraw
trigger1 = Time % 4 = 1
value = 0
scale = 1.10, 1.10
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State 3302, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State 3302, HitOverride]
type = HitOverride
trigger1 = 1
slot = 0
stateno = 3302
attr = SCA, AA, AP, AT
ignorehitpause = 1
time = -1
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State 3302, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 3302
ctrl = 0 
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State 3302, SelfState]
type = SelfState
trigger1 = MoveReversed
value = 3302
ctrl = 0 
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State 3302, DestroySelf]
type = DestroySelf
trigger1 = time >= 800;1000
trigger2 = parent, win
trigger3 = parent, lose
trigger4 = parent, drawgame
trigger5 = parent, stateno = [4000,4005]
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[Statedef 3303] ;Green Aura 1
type = A
movetype = I
physics = N
anim = 3301
velset = 0,0
sprpriority = -9

[State 3303, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 3303, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,200
ignorehitpause = 1

[State 3303, PalFX]
type = PalFX
trigger1 = Time = 0
time = 60
add = 64,64,0
sinadd = 64,64,0,3
ignorehitpause = 1

[State 3303, AngleDraw]
type = AngleDraw
trigger1 = Time % 4 = 0
value = 0
scale = 1.25, 1.25
ignorehitpause = 1

[State 3303, AngleDraw]
type = AngleDraw
trigger1 = Time % 4 = 2
value = 0
scale = 1.50, 1.50
ignorehitpause = 1

[State 3303, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3303, HitOverride]
type = HitOverride
trigger1 = 1
slot = 0
stateno = 3303
attr = SCA, AA, AP, AT
ignorehitpause = 1
time = -1
ignorehitpause = 1

[State 3303, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 3303
ctrl = 0 
ignorehitpause = 1

[State 3303, SelfState]
type = SelfState
trigger1 = MoveReversed
value = 3303
ctrl = 0 
ignorehitpause = 1

[State 3303, DestroySelf]
type = DestroySelf
trigger1 = time >= 120
trigger2 = parent, stateno = 52
trigger3 = parent, stateno != 3600
trigger4 = parent, stateno = [4000,4005]

[Statedef 3304] ;Green Aura 2
type = A
movetype = I
physics = N
anim = 3301
velset = 0,0
sprpriority = -9

[State 3304, ChangeAnim] ;parent's anim
type = ChangeAnim
triggerall = Anim != Parent, Anim
trigger1 = Parent, HitPauseTime = 0
value = Parent, Anim
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State 3304, ChangeAnim] ;parent's anim
type = ChangeAnim
trigger1 = Parent, HitPauseTime != 0
value = Anim
elem = Parent, AnimElemNo(0)
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State 3304, Pause]
type = Pause
trigger1 = Parent, HitPauseTime != 0
time = Floor(Parent, HitPauseTime / 6)
endcmdbuftime = Floor(Parent, HitPauseTime / 6)
movetime = 0
pausebg = 0
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State 3304, BindToParent]
type = BindToParent
trigger1 = 1
facing = 1
pos = 0,0
persistent = 1
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State 3304, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State 3304, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,100
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State 3304, PalFX]
type = PalFX
trigger1 = 1
time = 1
add = 25,211,47
sinadd = 25,211,47,2
invertall = 0
color = 256
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State 3304, AngleDraw]
type = AngleDraw
trigger1 = Time % 4 = 0
value = 0
scale = 1.05, 1.05
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State 3304, AngleDraw]
type = AngleDraw
trigger1 = Time % 4 = 1
value = 0
scale = 1.10, 1.10
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State 3304, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State 3304, HitOverride]
type = HitOverride
trigger1 = 1
slot = 0
stateno = 3304
attr = SCA, AA, AP, AT
ignorehitpause = 1
time = -1
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State 3304, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 3304
ctrl = 0 
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State 3304, SelfState]
type = SelfState
trigger1 = MoveReversed
value = 3304
ctrl = 0 
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State 3304, DestroySelf]
type = DestroySelf
trigger1 = time >= 800;1000
trigger2 = parent, win
trigger3 = parent, lose
trigger4 = parent, drawgame
trigger5 = parent, stateno = [4000,4005]
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[Statedef 252]
Type=A
MoveType = I
Physics  = N
Anim     = 2031
VelSet   = 4.2,0

[State 252]
Type=NotHitBy
Trigger1=1
value=SAC

[State 252]
Type=PlayerPush
Trigger1=1
value=1

[State 252]
Type = DestroySelf
Trigger1 = Time > 40

[Statedef 3400]
type    = A
movetype= I
physics = N
juggle = 0;  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3400
sprpriority = 0

[State 3400, PosAdd]
type = PosAdd
trigger1 = FrontEdgeDist <= 25
x = -25
y = 0
ignorehitpause = 1
persistent = 0

[state 3400, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(34001) = 0
trigger1 = AnimElem = 1
anim = 34001
id = 34001
pos = 0,0
postype = p1
sprpriority = -2
bindtime = -1
scale = 1,1
removetime = -2
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40

[state 3400, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(34001) != 0
trigger1 = AnimElem = 3
id = 34001
ignorehitpause = 1
persistent = 1

[state 3400, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(34002) = 0
trigger1 = AnimElem = 3
anim = 34002
id = 34002
pos = 0,0
postype = p1
sprpriority = 2
bindtime = -1
scale = 1,1
removetime = -2
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40

[State 3400, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 2
flag = NoBG
flag2= NoFg
flag3= NoBarDisplay
ignorehitpause = 1



[State 3400, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
darken = 0
anim = S8400
sound = S8889, 0
pos = 7, -55
movetime = 40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = ifelse(NumTarget(600) || NumTarget(610) || NumTarget(630) || NumTarget(640), 30, 40)
p2defmul = 2
removeongethit = 1



[State 3400, velset]
type = velset
triggerall = statetype = A
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
x = 0.5
y = 0.5
ignorehitpause = 1

[State 3400, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(4) = 1
value = 31

[State 3400, veladd]
type = veladd
triggerall = statetype = A
trigger1 = animelemtime(4) >= 0
x = 1.0
y = 1.0
ignorehitpause = 1


[State 3400, Hyper Dust]
type = Null;Explod
trigger1 = animelem = 1
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3400, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 0,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3400, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
name = "Hyper Explode"
postype = p1
pos = 0,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3400, superportrait]
type = null;Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
name = "Left Arrow"
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3400, superportrait]
type = null;Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
name = "Right Arrow"
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3400, superportrait]
type = null;Explod
trigger1 = AnimElem = 1
name = "Super Portrait"
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1






[State 3400, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Hyper Explod Background"
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7




[State 3400, superportrait black]
type = Explod
trigger1 = AnimElem = 1
name = "Black Background"
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 3400, Helper]; ====================================calls hyperbg
type = Helper
trigger1 =  AnimElem = 1
helpertype = normal ;player
name = "Hyper Background"
ID = 9600
stateno = 9600
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 3400, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
movetype = A

[State 3400, Width]
type = Width
triggerall = MoveType = A
trigger1 = Ceil(P2Dist X) <= 45
value = 40,0
ignorehitpause = 1

[State 3400, HitDef]
type = HitDef
triggerall = MoveType = A
triggerall = !movecontact
triggerall = !movereversed
trigger1 = NumEnemy
trigger1 = EnemyNear, StateType != A
trigger1 = P2StateType != A
attr = A,HA
damage = 72,12
animtype = High
guardflag = HA;MA
hitflag = MAF
priority = 7, Hit
pausetime = 12,65;12
guard.pausetime = 12,24
sparkno = s8222
sparkxy = 0,0
guard.sparkno = -1
hitsound = s8000,2
guardsound = S8500,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -9
air.velocity = -7,17
fall = 0
air.fall = 0
fall.recover = 1
forcestand = 1
;snap = 0,0
getpower = 0
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
kill = 0
guard.kill = 1
fall.kill = 0
ID = 3400

[State 3400, HitDef]
type = HitDef
triggerall = MoveType = A
triggerall = !movecontact
triggerall = !movereversed
trigger1 = NumEnemy
trigger1 = EnemyNear, StateType = A
trigger2 = P2StateType = A
attr = A,HA
damage = 72,12
animtype = High
guardflag = HA;MA
hitflag = MAF
priority = 7, Hit
pausetime = 12,65;12
guard.pausetime = 12,24
sparkno = s8222
sparkxy = 0,0
guard.sparkno = -1
hitsound = s8000,2
guardsound = S8500,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -9
air.velocity = -7,17
fall = 0
air.fall = 0
fall.recover = 1
forcestand = 1
snap = 40,40
getpower = 0
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
kill = 0
guard.kill = 1
fall.kill = 0
ID = 3400

[State 3400, Explod]
type = Explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -10),floor(p2dist y - 65)
anim = 8001
scale = 0.5,0.5

[State 3400, BindToTarget]
type = Null;BindToTarget
triggerall = NumTarget > 0
triggerall = NumEnemy > 0
trigger1 = MoveHit
time = 1
ID = 3400
pos = EnemyNear, Const(size.head.pos.x), EnemyNear, Const(size.head.pos.y)
ignorehitpause = 1
persistent = 0

[State 3400, ChangeState]
type = ChangeState
trigger1 = MoveHit
value = 3410
ctrl = 0

[State 3400, ChangeState]
type = ChangeState
triggerall = !MoveHit || MoveGuarded
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 3401
ctrl = 0

[Statedef 3401]
type    = S
physics = S
ctrl = 0
velset = 0,0
anim = 3401

[State 3401, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 3401, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3401, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 32

[State 3401, b1] ;explod
type = Explod
trigger1 = AnimElem = 1
anim = 6010
postype = p1
pos = 60, 30
sprpriority = -3
removetime = -2
persistent = 0

[State 3401, EnvShake]
type = EnvShake
trigger1 = animelem = 1
time = 20
freq = 180
ampl = -4
phase = 90

[State 3401]
type = Null;Turn
trigger1 = P2dist X < -30

[state 3401, land explod]
type = helper
trigger1 = time = 0 & numhelper(8010) = 0
name = "land explod"
id = 77010
stateno = 77010
postype = p1
pos = 50,10
sprpriority = -1
bindtime = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 3401, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(10005) != 0
id = 10005
ignorehitpause = 1
persistent = 1

[State 3401, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(10006) != 0
id = 10006
ignorehitpause = 1
persistent = 1

[State 3401, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(10009) != 0
id = 10009
ignorehitpause = 1
persistent = 1

[State 3401, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(10066) != 0
id = 10066
ignorehitpause = 1
persistent = 1

[State 3401, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 12
ctrl = 1

[Statedef 3410]
type    = A
movetype= A
physics = N
juggle = 0;  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3410
sprpriority = 0
facep2 = 1

[State 3410, PosAdd]
type = PosAdd
trigger1 = FrontEdgeDist <= 45
x = -25
y = 0
ignorehitpause = 1
persistent = 0

[State 3410, 1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(5) = 0
trigger3 = AnimElemTime(7) = 0
trigger4 = AnimElemTime(9) = 0
trigger5 = AnimElemTime(11) = 0
trigger6 = AnimElemTime(13) = 0
trigger7 = AnimElemTime(15) = 0
value = 8400, 2
ignorehitpause = 1
persistent = 1

[State 3410, HitDef]
type = HitDef
triggerall = MoveType = A
triggerall = AnimElemTime(3) = 0
trigger1 = !movereversed
attr = A,HA
damage = 15,5
animtype = High
guardflag = MA
hitflag = MAF
priority = 7, Hit
pausetime = 12,65;12
guard.pausetime = 12,24
sparkno = s8222
sparkxy = 0,0
guard.sparkno = -1
hitsound = s8000,2
guardsound = S8500,0
ground.type = Low
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -9
air.velocity = -7,17
fall = 0
air.fall = 0
fall.recover = 1
forcestand = 1
;snap = 0,0
getpower = 0
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
kill = 0
guard.kill = 0
fall.kill = 0
ID = 3410

[State 3410, PosAdd]
type = PosAdd
triggerall = NumEnemy
triggerall = EnemyNear, StateType != A
triggerall = P2StateType != A
trigger1 = NumTarget(3410) != 0
x = 2
y = 2
ignorehitpause = 1
persistent = 0

[State 3410, HitDef]
type = HitDef
triggerall = MoveType = A
triggerall = AnimElemTime(6) = 0
trigger1 = !movereversed
attr = A,HA
damage = 15,5
animtype = High
guardflag = MA
hitflag = MAF
priority = 7, Hit
pausetime = 12,65;12
guard.pausetime = 12,24
sparkno = s8222
sparkxy = 0,0
guard.sparkno = -1
hitsound = s8000,2
guardsound = S8500,0
ground.type = High
air.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -9
air.velocity = -7,17
fall = 0
air.fall = 0
fall.recover = 1
forcestand = 1
;snap = 0,0
getpower = 0
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
kill = 0
guard.kill = 0
fall.kill = 0
ID = 3411

[State 3410, TargetState] ;test
type = Null;TargetState
trigger1 = NumTarget
value = 195
ID = 3411
ignorehitpause = 1

[State 3410, PosAdd]
type = PosAdd
triggerall = NumEnemy
triggerall = EnemyNear, StateType != A
triggerall = P2StateType != A
trigger1 = NumTarget(3411) != 0
x = 2
y = 2
ignorehitpause = 1
persistent = 0

[State 3410, HitDef]
type = HitDef
triggerall = MoveType = A
triggerall = AnimElemTime(8) = 0
trigger1 = !movereversed
attr = A,HA
damage = 15,5
animtype = High
guardflag = MA
hitflag = MAF
priority = 7, Hit
pausetime = 12,65;12
guard.pausetime = 12,24
sparkno = s8222
sparkxy = 0,0
guard.sparkno = -1
hitsound = s8000,2
guardsound = S8500,0
ground.type = Low
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -9
air.velocity = -7,17
fall = 0
air.fall = 0
fall.recover = 1
forcestand = 1
;snap = 0,0
getpower = 0
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
kill = 0
guard.kill = 0
fall.kill = 0
ID = 3412

[State 3410, PosAdd]
type = PosAdd
triggerall = NumEnemy
triggerall = EnemyNear, StateType != A
triggerall = P2StateType != A
trigger1 = NumTarget(3412) != 0
x = 2
y = 2
ignorehitpause = 1
persistent = 0

[State 3410, HitDef]
type = HitDef
triggerall = MoveType = A
triggerall = AnimElemTime(10) = 0
trigger1 = !movereversed
attr = A,HA
damage = 15,5
animtype = High
guardflag = MA
hitflag = MAF
priority = 7, Hit
pausetime = 12,65;12
guard.pausetime = 12,24
sparkno = s8222
sparkxy = 0,0
guard.sparkno = -1
hitsound = s8000,2
guardsound = S8500,0
ground.type = High
air.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -9
air.velocity = -7,17
fall = 0
air.fall = 0
fall.recover = 1
forcestand = 1
;snap = 0,0
getpower = 0
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
kill = 0
guard.kill = 0
fall.kill = 0
ID = 3413

[State 3410, PosAdd]
type = PosAdd
triggerall = NumEnemy
triggerall = EnemyNear, StateType != A
triggerall = P2StateType != A
trigger1 = NumTarget(3413) != 0
x = 2
y = 2
ignorehitpause = 1
persistent = 0

[State 3410, HitDef]
type = HitDef
triggerall = MoveType = A
triggerall = AnimElemTime(12) = 0
trigger1 = !movereversed
attr = A,HA
damage = 15,5
animtype = High
guardflag = MA
hitflag = MAF
priority = 7, Hit
pausetime = 12,65;12
guard.pausetime = 12,24
sparkno = s8222
sparkxy = 0,0
guard.sparkno = -1
hitsound = s8000,2
guardsound = S8500,0
ground.type = Low
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -9
air.velocity = -7,17
fall = 0
air.fall = 0
fall.recover = 1
forcestand = 1
;snap = 0,0
getpower = 0
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
kill = 0
guard.kill = 0
fall.kill = 0
ID = 3414

[State 3410, PosAdd]
type = PosAdd
triggerall = NumEnemy
triggerall = EnemyNear, StateType != A
triggerall = P2StateType != A
trigger1 = NumTarget(3414) != 0
x = 2
y = 2
ignorehitpause = 1
persistent = 0

[State 3410, HitDef]
type = HitDef
triggerall = MoveType = A
triggerall = AnimElemTime(14) = 0
trigger1 = !movereversed
attr = A,HA
damage = 15,5
animtype = High
guardflag = MA
hitflag = MAF
priority = 7, Hit
pausetime = 12,65;12
guard.pausetime = 12,24
sparkno = s8222
sparkxy = 0,0
guard.sparkno = -1
hitsound = s8000,2
guardsound = S8500,0
ground.type = High
air.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -9
air.velocity = -7,17
fall = 0
air.fall = 0
fall.recover = 1
forcestand = 1
;snap = 0,0
getpower = 0
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
kill = 0
guard.kill = 0
fall.kill = 0
ID = 3415

[State 3410, PosAdd]
type = PosAdd
triggerall = NumEnemy
triggerall = EnemyNear, StateType != A
triggerall = P2StateType != A
trigger1 = NumTarget(3415) != 0
x = 2
y = 2
ignorehitpause = 1
persistent = 0

[State 3410, HitDef]
type = HitDef
triggerall = MoveType = A
triggerall = AnimElemTime(16) = 0
trigger1 = !movereversed
attr = A,HA
damage = 15,5
animtype = High
guardflag = MA
hitflag = MAF
priority = 7, Hit
pausetime = 12,85;12
guard.pausetime = 12,24
sparkno = s8222
sparkxy = 0,0
guard.sparkno = -1
hitsound = s8000,2
guardsound = S8500,0
ground.type = Low
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -9
air.velocity = -7,17
fall = 0
air.fall = 0
fall.recover = 1
forcestand = 1
;snap = 0,0
getpower = 0
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
kill = 0
guard.kill = 0
fall.kill = 0
ID = 3416

[State 3410, PosAdd]
type = PosAdd
triggerall = NumEnemy
triggerall = EnemyNear, StateType != A
triggerall = P2StateType != A
trigger1 = NumTarget(3416) != 0
x = 2
y = 2
ignorehitpause = 1
persistent = 0

[State 3410, Explod]
type = Explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 6
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -10),floor(p2dist y - 65)
anim = 8001
scale = 0.5,0.5

[State 3410, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3410, ChangeState]
type = ChangeState
trigger1 = NumEnemy
trigger1 = (EnemyNear, StateNo != [5000,5199]) || (EnemyNear, MoveType != H)
trigger2 = (P2StateNo != [5000,5199]) || (P2MoveType != H)
value = 72
ctrl = 0
ignorehitpause = 1

[State 3410, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3420
ctrl = 0

[Statedef 3420]
type    = A
movetype= A
physics = N
juggle  = 1
ctrl = 0
anim = 3420
poweradd = 0
velset = 0,0
sprpriority = 2

[State 3420, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(8) > 0
physics = A
ignorehitpause = 1
persistent = 1

[State 3420, PosAdd]
type = PosAdd
trigger1 = FrontEdgeDist <= 45
x = -25
y = 0
ignorehitpause = 1
persistent = 0

[State 3420, 1]
type = VelSet
trigger1 = AnimElemTime(8) <= 0
x = 0
y = 0
ignorehitpause = 1
persistent = 0

[State 3420, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(1) >= 5 && AnimElemTime(2) <= 2
x = ifelse(Time % 2 = 0, -3, 3)
y = 0
ignorehitpause = 1
persistent = 1

[State 3420, PosSet]
type = PosSet
trigger1 = AnimElemTime(2) > 2
x = Pos X
y = Pos Y
ignorehitpause = 1
persistent = 0

[State 3420, PosAdd]
type = PosAdd
trigger1 = Time = 0
x = 20
y = 30
ignorehitpause = 1
persistent = 0

[State 3420, BindToTarget]
type = Null;BindToTarget
triggerall = NumTarget(3416) != 0
trigger1 = NumEnemy > 0
time = 1
ID = 3416
pos = 0, (EnemyNear, Const(size.mid.pos.y))
ignorehitpause = 1
persistent = 0

[State 3420, 1]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 8400, 2
ignorehitpause = 1
persistent = 1

[State 3420, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,HA
damage = 20,15
animtype = medium
guardflag = MA
hitflag = MAF
priority = 7, Hit
pausetime = 30,25
sparkno = s8222
sparkxy = -25,-63
guard.sparkno = -1
hitsound = s8000,2
guardsound = S8500,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -30,0.80
air.velocity = -30,15
fall = 1
air.fall = 1
fall.recovery = 0
fall.xvelocity = -7
fall.yvelocity = -7
getpower = 0
envshake.time = 10
envshake.ampl = 7
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 3420

[State 3420]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -10),floor(p2dist y - 65)
anim = 8001
scale = 0.5,0.5

[State 3420, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3420, Width]
type = Width
triggerall = NumTarget(3420) != 0
trigger1 = BackEdgeDist <= 15
value = 0,-25

[State 3420, ScreenBound]
type = ScreenBound
triggerall = NumTarget(3420) != 0
trigger1 = Target, StateNo != [120,155]
value = 0

[State 3420, ChangeState]
type = ChangeState
triggerall = NumTarget(3420) != 0
trigger1 = BackEdgeDist <= -1
value = 740
ctrl = 0

[State 3420, End]
type = ChangeState
triggerall = BackEdgeDist > -1
trigger1 = AnimTime = 0
value = 72
ctrl = 0

;-------------------------------------------------------------------------------
;Final Hyper 1
[Statedef 4000]
type    = S
movetype= A
physics = S
juggle = 0;  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 4000
sprpriority = 2

[State 4000, 1]
type = VelSet
trigger1 = AnimElem = 4
x = const(velocity.run.fwd.x) * 6
ignorehitpause = 1
persistent = 1

[State 4000, 15] ;Friction
type = VelMul
trigger1 = MoveContact
x = 0.35

[state 4000,blur]
type = afterimage
trigger1 = AnimElem = 4
length = 10;100
PalBright   =  0,0,0;320, 320, 320
PalContrast =  120,120,220;0, 0, 0
PalAdd      =  0,0,0;80,80,100
PalMul      = 1,1,1;.50,.50,.50
TimeGap  = 1
FrameGap = 2
Trans = Add
time = 25

[State 4000, 1]
type = PlaySnd
trigger1 =  AnimElem = 3
value = 25, 0
ignorehitpause = 1
persistent = 1

[State 4000, Width]
type = Width
trigger1 = AnimElem = 3
player = 40, 0
ignorehitpause = 1
persistent = 1

[State 4000, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 4000, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn


[state 4000, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(7879) = 0
trigger1 = Time = 0
anim = 7879
id = 7879
pos = 0,-70
postype = p1
sprpriority = -2
bindtime = -1
scale = 1,1
removetime = -2
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 4000, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(7879) != 0
trigger1 = AnimElemTime(4) >= 0
id = 7879
ignorehitpause = 1
persistent = 1

[state 4000, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(7889) = 0
trigger1 = AnimElemTime(4) >= 0
anim = 7889
id = 7889
pos = 0,-70
postype = p1
sprpriority = 3
bindtime = -1
scale = 1,1
removetime = -2
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0
persistent = 0

[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 4
flag = noBG
flag2 = noFG
ignorehitpause = 1

[state 3000, Explod]
type = Null;Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(7779) = 0
trigger1 = AnimElem = 1
anim = 7779
id = 7779
pos = -2,-100
postype = p1
sprpriority = -2
bindtime = -1
scale = 1,1
removetime = -2
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40

[State 3000, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
darken = 0
anim = S8400
sound = S8889, 0
pos = 7, -55
movetime = 40
poweradd = -2000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1









[State 4000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 4000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 4000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
name = "Hyper Explode"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 4000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
name = "Left Arrow"
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 4000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
name = "Right Arrow"
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 4000, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Super Portrait"
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1






[State 4000, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Hyper Explod Background"
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7




[State 4000 superportrait black]
type = Explod
trigger1 = AnimElem = 1
name = "Black Background"
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6



[State 4000, Helper]; ====================================calls hyperbg
type = Helper
trigger1 =  AnimElem = 1
helpertype = normal ;player
name = "Hyper Background"
ID = 9610
stateno = 9610
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0





;------------End of Hyper Effects

[State 4000, PlaySnd]
type = Null;PlaySnd
trigger1 = animelem = 6
value = 172,3
channel = -1



[State 4000, PlaySnd]
type = Null;PlaySnd
triggerall = time > 22
triggerall = time < 102
trigger1 = timemod = 5,1
value = 28
volume = 100


[State 4000, HitDef]
type = HitDef
trigger1 = time >= 0
trigger1 = numtarget(4000) = 0
attr = S, HA
animtype  = Hard
damage    = 80,10
guardflag = MA
pausetime = 12,48
guard.pausetime = 12,12
sparkno = s8022;S(8220+random%7)
sparkxy = -10,-60
guard.sparkno = -1
hitsound = S27,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = 0,0
air.velocity = 0,0
fall = 0
air.fall = 0
fall.recover = 0
id = 4000
snap = 30,0
p2stateno = 5000
p2getp1state = 0
numhits = 0
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 4000, TargetBind]
type = Null;TargetBind
triggerall = NumTarget(4000)
trigger1 = Target, StateNo != [120,155]
;trigger1 = Target, Time = 1
pos = 30,0
ignorehitpause = 1
persistent = 0

[State 4000, 5]
type = ChangeState
trigger1 = MoveHit
trigger2 = NumTarget(4000)
trigger2 = Target, StateNo != [120,155]
value = 4005
ctrl = 0

[State 4000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Final Hyper 2
[Statedef 4005]
type    = S
movetype= A
physics = S
juggle = 0;  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 4005
sprpriority = 2

[state 4005, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(7889) != 0
trigger1 = 1
id = 7889
ignorehitpause = 1
persistent = 1

[state 4005, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(2000) = 0
triggerall = Anim = 4005
trigger1 = AnimElem = 1
anim = 2000
id = 2000
pos = 0,0
postype = p1
sprpriority = 3
bindtime = -1
scale = 1,1
removetime = 21
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 4005, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(2000) != 0
triggerall = Anim = 4005
trigger1 = AnimElem = 7
trigger1 = 1
id = 2000
ignorehitpause = 0
persistent = 1

[state 4005, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(793) = 0
triggerall = Anim = 4005
trigger1 = AnimElem = 7
anim = 793
id = 793
pos = -12,-96
postype = p1
sprpriority = -2
bindtime = -1
scale = 1,1
removetime = 24
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 4005, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(793) != 0
triggerall = Anim = 4005
trigger1 = AnimElem = 15
trigger1 = 1
id = 793
ignorehitpause = 0
persistent = 1

[state 4005, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(792) = 0
triggerall = Anim = 4005
trigger1 = AnimElem = 15
anim = 792
id = 792
pos = -8,-107
postype = p1
sprpriority = -2
bindtime = -1
scale = 1,1
removetime = 24
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 4005, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(792) != 0
triggerall = Anim = 4005
trigger1 = AnimElem = 21
trigger1 = 1
id = 792
ignorehitpause = 0
persistent = 1

[state 4005, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(795) = 0
triggerall = Anim = 4005
trigger1 = AnimElem = 21
anim = 795
id = 795
pos = -50,-105
postype = p1
sprpriority = 3
bindtime = -1
scale = 1,1
removetime = 20
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 4005, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(795) != 0
triggerall = Anim = 4005
trigger1 = AnimElem = 27
trigger1 = 1
id = 795
ignorehitpause = 0
persistent = 1

[state 4005, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(2000) = 0
triggerall = Anim = 4005
trigger1 = AnimElem = 27
anim = 2000
id = 2000
pos = 0,0
postype = p1
sprpriority = 3
bindtime = -1
scale = 1,1
removetime = 21
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 4005, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(2000) != 0
triggerall = Anim = 4005
trigger1 = AnimElem = 33
trigger1 = 1
id = 2000
ignorehitpause = 0
persistent = 1

[state 4005, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(793) = 0
triggerall = Anim = 4005
trigger1 = AnimElem = 33
anim = 793
id = 793
pos = -12,-96
postype = p1
sprpriority = -2
bindtime = -1
scale = 1,1
removetime = 24
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 4005, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(793) != 0
triggerall = Anim = 4005
trigger1 = AnimElem = 41
trigger1 = 1
id = 793
ignorehitpause = 0
persistent = 1

[state 4005, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(792) = 0
triggerall = Anim = 4005
trigger1 = AnimElem = 41
anim = 792
id = 792
pos = -8,-107
postype = p1
sprpriority = -2
bindtime = -1
scale = 1,1
removetime = 24
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 4005, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(792) != 0
triggerall = Anim = 4005
trigger1 = AnimElem = 47
trigger1 = 1
id = 792
ignorehitpause = 0
persistent = 1

[state 4005, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(795) = 0
triggerall = Anim = 4005
trigger1 = AnimElem = 47
anim = 795
id = 795
pos = -50,-105
postype = p1
sprpriority = 3
bindtime = -1
scale = 1,1
removetime = 20
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 4005, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(795) != 0
triggerall = Anim = 4005
trigger1 = AnimElem = 53
trigger1 = 1
id = 795
ignorehitpause = 0
persistent = 1

[state 4005, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(2000) = 0
triggerall = Anim = 4005
trigger1 = AnimElem = 53
anim = 2000
id = 2000
pos = 0,0
postype = p1
sprpriority = 3
bindtime = -1
scale = 1,1
removetime = 21
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 4005, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(2000) != 0
triggerall = Anim = 4005
trigger1 = AnimElem = 59
trigger1 = 1
id = 2000
ignorehitpause = 0
persistent = 1

[state 4005, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(793) = 0
triggerall = Anim = 4005
trigger1 = AnimElem = 59
anim = 793
id = 793
pos = -12,-96
postype = p1
sprpriority = -2
bindtime = -1
scale = 1,1
removetime = 24
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 4005, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(793) != 0
triggerall = Anim = 4005
trigger1 = AnimElem = 67
trigger1 = 1
id = 793
ignorehitpause = 0
persistent = 1

[state 4005, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(792) = 0
triggerall = Anim = 4005
trigger1 = AnimElem = 67
anim = 792
id = 792
pos = -8,-107
postype = p1
sprpriority = -2
bindtime = -1
scale = 1,1
removetime = 24
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 4005, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(792) != 0
triggerall = Anim = 4005
trigger1 = AnimElem = 73
trigger1 = 1
id = 792
ignorehitpause = 0
persistent = 1

[state 4005, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(795) = 0
triggerall = Anim = 4005
trigger1 = AnimElem = 73
anim = 795
id = 795
pos = -50,-105
postype = p1
sprpriority = 3
bindtime = -1
scale = 1,1
removetime = 20
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 4005, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(795) != 0
triggerall = Anim = 4005
trigger1 = AnimElem = 79
trigger1 = 1
id = 795
ignorehitpause = 0
persistent = 1

[state 4005, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(7999) = 0
triggerall = Anim = 4005
trigger1 = AnimElem = 79
anim = 7999
id = 7999
pos = 22,-70
postype = p1
sprpriority = 3
bindtime = -1
scale = 1,1
removetime = -1
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 4005, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(795) != 0
triggerall = Anim = 4005
trigger1 = Time >= 225
trigger1 = 1
id = 799
ignorehitpause = 0
persistent = 1

[state 4005, Explod]
type = Null;Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(8066) = 0
triggerall = Anim = 4006
trigger1 = 1;AnimElem = 1
anim = 8066
id = 8066
pos = 2,-40
postype = p1
sprpriority = 996
bindtime = -1
scale = 0.35,0.35
removetime = -1
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 4005, RemoveExplod]
type = Null;RemoveExplod
triggerall = NumExplod(8066) != 0
triggerall = Anim = 4006
trigger1 = Time >= 2030
trigger1 = 1
id = 8066
ignorehitpause = 0
persistent = 1

[State 4000, 1]
type = VelSet
trigger1 = 1
x = 0.0
ignorehitpause = 1
persistent = 1

[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 4
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 4005, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1
persistent = 1

[state 3000, Explod]
type = Null;Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(7779) = 0
trigger1 = AnimElem = 1
anim = 7779
id = 7779
pos = -2,-100
postype = p1
sprpriority = -2
bindtime = -1
scale = 1,1
removetime = -2
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40

[State 200, 1]
type = PlaySnd
triggerall = Anim = 4005
trigger1 = AnimElem = 1
value = 8400, 0

[State 200, HitDef]
type = HitDef
triggerall = Anim = 4005
trigger1 = !NumTarget(40050)
trigger1 = AnimElem = 2
attr = S,HA
damage = 10,5
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 4,23
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = -1
hitsound = s8000,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = 0,0
air.type = high
air.hittime = 65
air.velocity = 0,0
envshake.time = 1
envshake.ampl = 1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 40050
fall = 0
air.fall = 0
fall.recover = 0
p2stateno = 5000
p2getp1state = 0
numhits = 0
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 210, 1]
type = PlaySnd
triggerall = Anim = 4005
trigger1 = AnimElem = 8
value = 8400, 1

[State 210, HitDef]
type = HitDef
triggerall = Anim = 4005
trigger1 = !NumTarget(40051)
trigger1 = AnimElem = 9
attr = S,HA
damage = 10,5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5,25
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = -1
hitsound = s8000,1
guardsound = S8500,0
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = 0,0
air.type = high
air.hittime = 65
air.velocity = 0,0
envshake.time = 1
envshake.ampl = 1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 40051
fall = 0
air.fall = 0
fall.recover = 0
p2stateno = 5000
p2getp1state = 0
numhits = 0
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 230, 1]
type = PlaySnd
triggerall = Anim = 4005
trigger1 = AnimElem = 15
value = 8400, 0

[State 230, HitDef]
type = HitDef
triggerall = Anim = 4005
trigger1 = !NumTarget(40052)
trigger1 = AnimElem = 16
attr = S,HA
damage = 10,5
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 4,23
sparkno = s8002
sparkxy = -15,-65
guard.sparkno = -1;s8001
hitsound = s8000,0
guardsound = S8500,0
ground.type = high
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = 0,0
air.type = high
air.velocity = 0,0
air.hittime = 65
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 40052
fall = 0
air.fall = 0
fall.recover = 0
p2stateno = 5000
p2getp1state = 0
numhits = 0
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 240, 1]
type = PlaySnd
triggerall = Anim = 4005
trigger1 = AnimElem = 21
value = 8400, 1

[State 240, HitDef]
type = HitDef
triggerall = Anim = 4005
trigger1 = !NumTarget(40053)
trigger1 = AnimElem = 22
attr = S,HA
damage = 10,5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5,20
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = -1
hitsound = s8000,1
guardsound = S8500,0
ground.type = high
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = 0,0
air.type = high
air.hittime = 65
air.velocity = 0,0
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 40053
fall = 0
air.fall = 0
fall.recover = 0
p2stateno = 5000
p2getp1state = 0
numhits = 0
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 200, 1]
type = PlaySnd
triggerall = Anim = 4005
trigger1 = AnimElem = 27
value = 8400, 0

[State 200, HitDef]
type = HitDef
triggerall = Anim = 4005
trigger1 = !NumTarget(40054)
trigger1 = AnimElem = 28
attr = S,HA
damage = 10,5
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 3,23
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = -1
hitsound = s8000,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = 0,0
air.type = high
air.hittime = 15
air.velocity = 0,0
envshake.time = 1
envshake.ampl = 1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 40054
fall = 0
air.fall = 0
fall.recover = 0
p2stateno = 5000
p2getp1state = 0
numhits = 0
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 210, 1]
type = PlaySnd
triggerall = Anim = 4005
trigger1 = AnimElem = 34
value = 8400, 1

[State 210, HitDef]
type = HitDef
triggerall = Anim = 4005
trigger1 = !NumTarget(40055)
trigger1 = AnimElem = 35
attr = S,HA
damage = 10,5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4,25
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = -1
hitsound = s8000,1
guardsound = S8500,0
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = 0,0
air.type = high
air.hittime = 15
air.velocity = 0,0
envshake.time = 1
envshake.ampl = 1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 40055
fall = 0
air.fall = 0
fall.recover = 0
p2stateno = 5000
p2getp1state = 0
numhits = 0
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 230, 1]
type = PlaySnd
triggerall = Anim = 4005
trigger1 = AnimElem = 41
value = 8400, 0

[State 230, HitDef]
type = HitDef
triggerall = Anim = 4005
trigger1 = !NumTarget(40056)
trigger1 = AnimElem = 42
attr = S,HA
damage = 10,5
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 3,23
sparkno = s8002
sparkxy = -15,-65
guard.sparkno = -1;s8001
hitsound = s8000,0
guardsound = S8500,0
ground.type = high
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = 0,0
air.type = high
air.velocity = 0,0
air.hittime = 15
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 40056
fall = 0
air.fall = 0
fall.recover = 0
p2stateno = 5000
p2getp1state = 0
numhits = 0
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 240, 1]
type = PlaySnd
triggerall = Anim = 4005
trigger1 = AnimElem = 47
value = 8400, 1

[State 240, HitDef]
type = HitDef
triggerall = Anim = 4005
trigger1 = !NumTarget(40057)
trigger1 = AnimElem = 48
attr = S,HA
damage = 10,5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4,20
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = -1
hitsound = s8000,1
guardsound = S8500,0
ground.type = high
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = 0,0
air.type = high
air.hittime = 5
air.velocity = 0,0
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 40057
fall = 0
air.fall = 0
fall.recover = 0
p2stateno = 5000
p2getp1state = 0
numhits = 0
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 200, 1]
type = PlaySnd
triggerall = Anim = 4005
trigger1 = AnimElem = 53
value = 8400, 0

[State 200, HitDef]
type = HitDef
triggerall = Anim = 4005
trigger1 = !NumTarget(40058)
trigger1 = AnimElem = 54
attr = S,HA
damage = 10,5
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 2,23
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = -1
hitsound = s8000,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = 0,0
air.type = high
air.hittime = 15
air.velocity = 0,0
envshake.time = 1
envshake.ampl = 1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 40058
fall = 0
air.fall = 0
fall.recover = 0
p2stateno = 5000
p2getp1state = 0
numhits = 0
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 210, 1]
type = PlaySnd
triggerall = Anim = 4005
trigger1 = AnimElem = 60
value = 8400, 1

[State 210, HitDef]
type = HitDef
triggerall = Anim = 4005
trigger1 = !NumTarget(40059)
trigger1 = AnimElem = 61
attr = S,HA
damage = 10,5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3,25
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = -1
hitsound = s8000,1
guardsound = S8500,0
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = 0,0
air.type = high
air.hittime = 15
air.velocity = 0,0
envshake.time = 1
envshake.ampl = 1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 40059
fall = 0
air.fall = 0
fall.recover = 0
p2stateno = 5000
p2getp1state = 0
numhits = 0
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 230, 1]
type = PlaySnd
triggerall = Anim = 4005
trigger1 = AnimElem = 67
value = 8400, 0

[State 230, HitDef]
type = HitDef
triggerall = Anim = 4005
trigger1 = !NumTarget(40060)
trigger1 = AnimElem = 68
attr = S,HA
damage = 10,5
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 2,23
sparkno = s8002
sparkxy = -15,-65
guard.sparkno = -1;s8001
hitsound = s8000,0
guardsound = S8500,0
ground.type = high
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = 0,0
air.type = high
air.velocity = 0,0
air.hittime = 15
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 40060
fall = 0
air.fall = 0
fall.recover = 0
p2stateno = 5000
p2getp1state = 0
numhits = 0
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 240, 1]
type = PlaySnd
triggerall = Anim = 4005
trigger1 = AnimElem = 73
value = 8400, 1

[State 240, HitDef]
type = HitDef
triggerall = Anim = 4005
trigger1 = !NumTarget(40061)
trigger1 = AnimElem = 74
attr = S,HA
damage = 10,5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3,50
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = -1
hitsound = s8000,1
guardsound = S8500,0
ground.type = high
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = 0,0
air.type = high
air.hittime = 5
air.velocity = 0,0
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 40061
fall = 0
air.fall = 0
fall.recover = 0
p2stateno = 5000
p2getp1state = 0
numhits = 0
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 4005, Width]
type = Width
triggerall = Anim = 4005
trigger1 = AnimElem = 79
value = 25,0
ignorehitpause = 1
persistent = 1

[State 420, 1]
type = PlaySnd
triggerall = Anim = 4005
trigger1 = AnimElem = 82
value = 8400, 2

[State 420, HitDef]
type = HitDef
triggerall = Anim = 4005
trigger1 = !NumTarget(4200)
trigger1 = AnimElem = 83
attr = C, HA
animtype = Hard
damage = 15,5
priority = 4, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,11
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = -1;s8001
hitsound = s8000,2
guardsound = S8500,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1,-16+((NumHelper(3302)||NumHelper(3304))*-6)
guard.velocity = -5
air.velocity = -1,-16+((NumHelper(3302)||NumHelper(3304))*-6)
air.hittime = 17
down.bounce = 1
fall.yvelocity = -4.4
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
;ground.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;air.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0
;down.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
ID = 4200
numhits = 0
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 4005, 5]
type = Null;ChangeState
trigger1 = NumTarget(4200)
trigger1 = AnimElemTime(88) >= 1
value = 4010
ctrl = 0

[State 4005, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4005, PlaySnd]
type = PlaySnd
trigger1 = NumEnemy
trigger1 = EnemyNear, StateNo = 9920
trigger1 = EnemyNear, Time = 1
trigger2 = NumTarget(4200)
trigger2 = Target, StateNo = 9920
trigger2 = Target, Time = 1
channel = -1
value = 1000,1
volume = 100
volumescale = 100
ignorehitpause = 1
persistent = 0

[State 4005, 5]
type = ChangeState
triggerall = Time > 230 && Time < 3998
trigger1 = NumEnemy
trigger1 = EnemyNear, StateNo != [9910,9920]
trigger2 = P2StateNo != [9910,9920]
trigger3 = !NumTarget(4200)
trigger4 = NumTarget(4200)
trigger4 = Target, StateNo != [9910,9920]
trigger5 = NumEnemy
trigger5 = EnemyNear, StateNo = 5050
trigger6 = P2StateNo = 5050
value = 1000
ctrl = 0
ignorehitpause = 1
persistent = 1

[State 4005, 5]
type = ChangeState
triggerall = Time >= 3998
trigger1 = NumEnemy
trigger1 = EnemyNear, StateNo != [9910,9920]
trigger2 = P2StateNo != [9910,9920]
trigger3 = !NumTarget(4200)
trigger4 = NumTarget(4200)
trigger4 = Target, StateNo != [9910,9920]
trigger5 = NumEnemy
trigger5 = EnemyNear, StateNo = 5050
trigger6 = P2StateNo = 5050
value = 50
ctrl = 0
ignorehitpause = 1
persistent = 1

[State 4005, PosSet]
type = PosSet
triggerall = Time > 230
trigger1 = NumEnemy
trigger1 = EnemyNear, StateNo != [9910,9920]
trigger2 = P2StateNo != [9910,9920]
trigger3 = !NumTarget(4200)
trigger4 = NumTarget(4200)
trigger4 = Target, StateNo != [9910,9920]
trigger5 = NumEnemy
trigger5 = EnemyNear, StateNo = 5050
trigger6 = P2StateNo = 5050
x = 0
y = 0
ignorehitpause = 1
persistent = 0

[State 4005, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 4005
trigger1 = Time > 620
value = 4006
ignorehitpause = 1
persistent = 0

[State 4005, PlaySnd]
type = PlaySnd
triggerall = Anim = 4006
trigger1 = AnimElem = 1
channel = 14
value = 4006,0
volume = 100
volumescale = 100
ignorehitpause = 1
persistent = 0

[State 4005, StopSnd]
type = Null;StopSnd
trigger1 = Time >= 2222
channel = 14
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State 4005, PosSet]
type = PosSet
triggerall = Anim = 4006
trigger1 = Time = 621
x = 0
y = 999
ignorehitpause = 1
persistent = 0

[State 4005, PosAdd]
type = PosAdd
triggerall = Anim = 4006
trigger1 = Time > 621 && Time < 1650
x = 0
y = -1
ignorehitpause = 1
persistent = 1

[State 4005, EnvShake]
type = Null;EnvShake
triggerall = Anim = 4006
trigger1 = Time > 621 && Time < 1650
time = 12
freq = 120
ampl = -3
phase = 90
ignorehitpause = 1
persistent = 1

[State 4005, SprPriority]
type = SprPriority
triggerall = Anim = [4006,4007]
trigger1 = Time > 620
value = 996
ignorehitpause = 1

[State 4005, AngleDraw]
type = AngleDraw
triggerall = Anim = [4006,4007]
trigger1 = Time > 620
scale = 0.35,0.35
ignorehitpause = 1

[State 4005, Explod]
type = Explod
triggerall = Anim = 4006
trigger1 = Time = 621
anim = 4020
ID = 4020
pos = 0,45
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999
pausemovetime = 999
sprpriority = 997
ontop = 1
scale = 0.7,0.7
ownpal = 1

[State 4005, Listras2]
type = Explod
trigger1 = Time = [1400,1800]
trigger1 = Time % 18 = 0
trigger2 = Time = [2500,2900]
trigger2 = Time % 26 = 0
anim = 4165
ID = 4165
pos = 0,-190 + (-110*(Time = [2500,3010]))
postype = p1
vel = 0,1.01
accel = 0,0
random = 590,590
removetime = -2
scale = 0.12,0.12
supermovetime = 9999999
pausemovetime = 9999999
ontop = 0
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999
sprpriority = 996
persistent = 1

[State 4005, Listras2]
type = Explod
trigger1 = Time = [1400,1800]
trigger1 = Time % 15 = 0
trigger2 = Time = [2500,2900]
trigger2 = Time % 23 = 0
anim = 4160
ID = 4160
pos = 0,-200 + (-110*(Time = [2500,3010]))
postype = p1
vel = 0,1.11
accel = 0,0
random = 600,600
removetime = -2
scale = 0.12,0.12
supermovetime = 9999999
pausemovetime = 9999999
ontop = 0
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999
sprpriority = 996
persistent = 1

[State 4005, Listras2]
type = Explod
trigger1 = Time = [1400,1800]
trigger1 = Time % 14 = 0
trigger2 = Time = [2500,2900]
trigger2 = Time % 22 = 0
anim = 4161
ID = 4161
pos = 0,-210 + (-110*(Time = [2500,3010]))
postype = p1
vel = 0,1.11
accel = 0,0
random = 610,610
removetime = -2
scale = 0.09,0.09
supermovetime = 9999999
pausemovetime = 9999999
ontop = 0
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999
sprpriority = 996
persistent = 1

[State 4005, Listras2]
type = Explod
trigger1 = Time = [1400,1800]
trigger1 = Time % 12 = 0
trigger2 = Time = [2500,2900]
trigger2 = Time % 20 = 0
anim = 4162
ID = 4162
pos = 0,-220 + (-110*(Time = [2500,3010]))
postype = p1
vel = 0,1.41
accel = 0,0
random = 620,620
removetime = -2
scale = 0.10,0.10
supermovetime = 9999999
pausemovetime = 9999999
ontop = 0
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999
sprpriority = 996
persistent = 1

[State 4005, Listras2]
type = Explod
trigger1 = Time = [1400,1800]
trigger1 = Time % 11 = 0
trigger2 = Time = [2500,2900]
trigger2 = Time % 19 = 0
anim = 4163
ID = 4163
pos = 0,-230 + (-110*(Time = [2500,3010]))
postype = p1
vel = 0,1.51
accel = 0,0
random = 630,630
removetime = -2
scale = 0.11,0.11
supermovetime = 9999999
pausemovetime = 9999999
ontop = 0
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999
sprpriority = 996
persistent = 1

[State 4005, Listras2]
type = Explod
trigger1 = Time = [1400,1800]
trigger1 = Time % 10 = 0
trigger2 = Time = [2500,2900]
trigger2 = Time % 18 = 0
anim = 4164
ID = 4164
pos = 0,-235 + (-110*(Time = [2500,3010]))
postype = p1
vel = 0,1.61
accel = 0,0
random = 635,635
removetime = -2
scale = 0.07,0.07
supermovetime = 9999999
pausemovetime = 9999999
ontop = 0
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999
sprpriority = 996
persistent = 1

[State 4005, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4165) != 0
trigger1 = NumHelper(9610)
trigger1 = Helper(9610),  Anim = 4999
trigger2 = NumTarget
trigger2 = Target, StateNo = 9920
trigger2 = Target, Time = [1850,2195]
ID = 4165
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State 4005, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4164) != 0
trigger1 = NumHelper(9610)
trigger1 = Helper(9610),  Anim = 4999
trigger2 = NumTarget
trigger2 = Target, StateNo = 9920
trigger2 = Target, Time = [1850,2195]
ID = 4164
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State 4005, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4163) != 0
trigger1 = NumHelper(9610)
trigger1 = Helper(9610),  Anim = 4999
trigger2 = NumTarget
trigger2 = Target, StateNo = 9920
trigger2 = Target, Time = [1850,2195]
ID = 4163
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State 4005, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4162) != 0
trigger1 = NumHelper(9610)
trigger1 = Helper(9610),  Anim = 4999
trigger2 = NumTarget
trigger2 = Target, StateNo = 9920
trigger2 = Target, Time = [1850,2195]
ID = 4162
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State 4005, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4161) != 0
trigger1 = NumHelper(9610)
trigger1 = Helper(9610),  Anim = 4999
trigger2 = NumTarget
trigger2 = Target, StateNo = 9920
trigger2 = Target, Time = [1850,2195]
ID = 4161
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State 4005, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4160) != 0
trigger1 = NumHelper(9610)
trigger1 = Helper(9610),  Anim = 4999
trigger2 = NumTarget
trigger2 = Target, StateNo = 9920
trigger2 = Target, Time = [1850,2195]
ID = 4160
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State 4005, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 4006
trigger1 = AnimElem = 1070
trigger2 = Time >= 1690
value = 4007
ignorehitpause = 1
persistent = 0

[State 4005, ModifyExplod]
type = ModifyExplod
triggerall = NumExplod(4020) != 0
trigger1 = Anim = 4007
trigger1 = AnimElemTime(1) = 24
anim = 4020
ID = 4020
pos = 0,45
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-1
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999
pausemovetime = 999
sprpriority = 997
ontop = 1
scale = 0.7,0.7
ownpal = 1

[State 4005, Explod]
type = Explod
triggerall = Anim = 4007
trigger1 = Time = 2190
trigger2 = NumTarget
trigger2 = Target, StateNo = 6620
trigger2 = Target, Time = 1885
anim = 4020
ID = 4020
pos = 0,600
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-1
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999
pausemovetime = 999
sprpriority = 997
ontop = 1
scale = 0.7,0.7
ownpal = 1

[State 4005, Explod]
type = Explod
trigger1 = Time = [2330,2830]
anim = 8022
ID = 8022
pos = 0,0
postype = p2
vel = 0,0
accel = 0,2
random = 100,25
removetime = -2
scale = 1.0,1.0
supermovetime = 9999999
pausemovetime = 9999999
ontop = 1
ownpal = 1
removeongethit = 1
supermove = 1
sprpriority = 999
persistent = 4

[State 4005, PlaySnd]
type = PlaySnd
trigger1 = NumExplod(8022) != 0
channel = -1
value = 27,0
volume = 100
volumescale = 100
ignorehitpause = 1
persistent = 4

[State 4005, TargetLifeAdd]
type = TargetLifeAdd
triggerall = NumTarget
triggerall = Target, StateNo = 9920
trigger1 = Time = [2330,2830]
value = -2
kill = 0
absolute = 1
ignorehitpause = 1
persistent = 4

[State 4005, Explod]
type = Explod
triggerall = Anim = 4007
trigger1 = Time = 3199
anim = 4020
ID = 4020
pos = -15,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -0.05*Facing,-0.05
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999
pausemovetime = 999
sprpriority = 999
ontop = 1
scale = 0.025,0.025
ownpal = 1

[State 4005, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4020)
triggerall = Anim = 4007
trigger1 = Time >= 3998
id = 4020
ignorehitpause = 1
persistent = 1

[State 4005, PlaySnd]
type = PlaySnd
triggerall = Anim = 4007
trigger1 = Time = 3199
channel = 14
value = 4007,0
volume = 100
volumescale = 100
ignorehitpause = 1
persistent = 0

[State 4005, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1850+100,1855+100]
trans = addalpha
alpha = 256,20

[State 4005, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1856+100,1860+100]
trans = addalpha
alpha = 256,40

[State 4005, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1861+100,1865+100]
trans = addalpha
alpha = 256,80

[State 4005, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1866+100,1870+100]
trans = addalpha
alpha = 256,120

[State 4005, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1871+100,1875+100]
trans = addalpha
alpha = 256,150

[State 4005, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1876+100,1880+100]
trans = addalpha
alpha = 256,180

[State 4005, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1881+100,1885+100]
trans = addalpha
alpha = 256,210

[State 4005, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1886+100,1890+100]
trans = addalpha
alpha = 256,240

[State 4005, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1891+100,1895+100]
trans = addalpha
alpha = 256,256

[State 4005, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1896+100,1900+100]
trans = addalpha
alpha = 220,256

[State 4005, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1901+100,1905+100]
trans = addalpha
alpha = 180,256

[State 4005, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1906+100,1910+100]
trans = addalpha
alpha = 120,256

[State 4005, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1911+100,1915+100]
trans = addalpha
alpha = 90,256

[State 4005, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1916+100,1920+100]
trans = addalpha
alpha = 50,256

[State 4005, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1921+100,5999+100]
trans = addalpha
alpha = 0,256

[State 4005, PosSet]
type = PosSet
trigger1 = AnimTime = 0
x = 0
y = 0
ignorehitpause = 1
persistent = 0

[State 4005, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Hyper 6
[Statedef 3700]
type    = S
movetype= A
physics = S
juggle = 0;  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 4000
sprpriority = 2

[State 3700, 1]
type = VelSet
trigger1 = AnimElem = 4
x = const(velocity.run.fwd.x) * 6
ignorehitpause = 1
persistent = 1

[State 3700, 15] ;Friction
type = VelMul
trigger1 = MoveContact
x = 0.35

[state 3700,blur]
type = afterimage
trigger1 = AnimElem = 4
length = 10;100
PalBright   =  0,0,0;320, 320, 320
PalContrast =  120,120,220;0, 0, 0
PalAdd      =  0,0,0;80,80,100
PalMul      = 1,1,1;.50,.50,.50
TimeGap  = 1
FrameGap = 2
Trans = Add
time = 25

[State 3700, 1]
type = PlaySnd
trigger1 =  AnimElem = 3
value = 25, 0
ignorehitpause = 1
persistent = 1

[State 3700, Width]
type = Width
trigger1 = AnimElem = 3
player = 40, 0
ignorehitpause = 1
persistent = 1

[State 3700, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 3700, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn


[state 3700, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(7879) = 0
trigger1 = Time = 0
anim = 7879
id = 7879
pos = 0,-70
postype = p1
sprpriority = -2
bindtime = -1
scale = 1,1
removetime = -2
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 3700, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(7879) != 0
trigger1 = AnimElemTime(4) >= 0
id = 7879
ignorehitpause = 1
persistent = 1

[state 3700, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(7889) = 0
trigger1 = AnimElemTime(4) >= 0
anim = 7889
id = 7889
pos = 0,-70
postype = p1
sprpriority = 3
bindtime = -1
scale = 1,1
removetime = -2
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0
persistent = 0

[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 4
flag = noBG
flag2 = noFG
ignorehitpause = 1

[state 3000, Explod]
type = Null;Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(7779) = 0
trigger1 = AnimElem = 1
anim = 7779
id = 7779
pos = -2,-100
postype = p1
sprpriority = -2
bindtime = -1
scale = 1,1
removetime = -2
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40

[State 3000, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
darken = 0
anim = S8400
sound = S8889, 0
pos = 7, -55
movetime = 40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1









[State 3700, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3700, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3700, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
name = "Hyper Explode"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3700, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
name = "Left Arrow"
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3700, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
name = "Right Arrow"
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3700, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Super Portrait"
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1






[State 3700, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Hyper Explod Background"
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7




[State 3700 superportrait black]
type = Explod
trigger1 = AnimElem = 1
name = "Black Background"
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6



[State 3700, Helper]; ====================================calls hyperbg
type = Helper
trigger1 =  AnimElem = 1
helpertype = normal ;player
name = "Hyper Background"
ID = 9710
stateno = 9710
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0





;------------End of Hyper Effects

[State 3700, PlaySnd]
type = Null;PlaySnd
trigger1 = animelem = 6
value = 172,3
channel = -1



[State 3700, PlaySnd]
type = Null;PlaySnd
triggerall = time > 22
triggerall = time < 102
trigger1 = timemod = 5,1
value = 28
volume = 100


[State 3700, HitDef]
type = HitDef
trigger1 = time >= 0
trigger1 = numtarget(3700) = 0
attr = S, HA
animtype  = Hard
damage    = 40,10
guardflag = MA
pausetime = 12,48
guard.pausetime = 12,12
sparkno = s8022;S(8220+random%7)
sparkxy = -10,-60
guard.sparkno = -1
hitsound = S27,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = 0,0
air.velocity = 0,0
fall = 0
air.fall = 0
fall.recover = 0
id = 3700
snap = 30,0
p2stateno = 5000
p2getp1state = 0
numhits = 0
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 3700, TargetBind]
type = Null;TargetBind
triggerall = NumTarget(3700)
trigger1 = Target, StateNo != [120,155]
;trigger1 = Target, Time = 1
pos = 30,0
ignorehitpause = 1
persistent = 0

[State 3700, 5]
type = ChangeState
trigger1 = MoveHit
trigger2 = NumTarget(3700)
trigger2 = Target, StateNo != [120,155]
value = 3705
ctrl = 0

[State 3700, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Final Hyper 2
[Statedef 3705]
type    = S
movetype= A
physics = S
juggle = 0;  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 4005
sprpriority = 2

[state 3705, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(7889) != 0
trigger1 = 1
id = 7889
ignorehitpause = 1
persistent = 1

[state 3705, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(2000) = 0
triggerall = Anim = 4005
trigger1 = AnimElem = 1
anim = 2000
id = 2000
pos = 0,0
postype = p1
sprpriority = 3
bindtime = -1
scale = 1,1
removetime = 21
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 3705, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(2000) != 0
triggerall = Anim = 4005
trigger1 = AnimElem = 7
trigger1 = 1
id = 2000
ignorehitpause = 0
persistent = 1

[state 3705, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(793) = 0
triggerall = Anim = 4005
trigger1 = AnimElem = 7
anim = 793
id = 793
pos = -12,-96
postype = p1
sprpriority = -2
bindtime = -1
scale = 1,1
removetime = 24
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 3705, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(793) != 0
triggerall = Anim = 4005
trigger1 = AnimElem = 15
trigger1 = 1
id = 793
ignorehitpause = 0
persistent = 1

[state 3705, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(792) = 0
triggerall = Anim = 4005
trigger1 = AnimElem = 15
anim = 792
id = 792
pos = -8,-107
postype = p1
sprpriority = -2
bindtime = -1
scale = 1,1
removetime = 24
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 3705, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(792) != 0
triggerall = Anim = 4005
trigger1 = AnimElem = 21
trigger1 = 1
id = 792
ignorehitpause = 0
persistent = 1

[state 3705, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(795) = 0
triggerall = Anim = 4005
trigger1 = AnimElem = 21
anim = 795
id = 795
pos = -50,-105
postype = p1
sprpriority = 3
bindtime = -1
scale = 1,1
removetime = 20
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 3705, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(795) != 0
triggerall = Anim = 4005
trigger1 = AnimElem = 27
trigger1 = 1
id = 795
ignorehitpause = 0
persistent = 1

[state 3705, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(2000) = 0
triggerall = Anim = 4005
trigger1 = AnimElem = 27
anim = 2000
id = 2000
pos = 0,0
postype = p1
sprpriority = 3
bindtime = -1
scale = 1,1
removetime = 21
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 3705, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(2000) != 0
triggerall = Anim = 4005
trigger1 = AnimElem = 33
trigger1 = 1
id = 2000
ignorehitpause = 0
persistent = 1

[state 3705, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(793) = 0
triggerall = Anim = 4005
trigger1 = AnimElem = 33
anim = 793
id = 793
pos = -12,-96
postype = p1
sprpriority = -2
bindtime = -1
scale = 1,1
removetime = 24
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 3705, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(793) != 0
triggerall = Anim = 4005
trigger1 = AnimElem = 41
trigger1 = 1
id = 793
ignorehitpause = 0
persistent = 1

[state 3705, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(792) = 0
triggerall = Anim = 4005
trigger1 = AnimElem = 41
anim = 792
id = 792
pos = -8,-107
postype = p1
sprpriority = -2
bindtime = -1
scale = 1,1
removetime = 24
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 3705, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(792) != 0
triggerall = Anim = 4005
trigger1 = AnimElem = 47
trigger1 = 1
id = 792
ignorehitpause = 0
persistent = 1

[state 3705, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(795) = 0
triggerall = Anim = 4005
trigger1 = AnimElem = 47
anim = 795
id = 795
pos = -50,-105
postype = p1
sprpriority = 3
bindtime = -1
scale = 1,1
removetime = 20
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 3705, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(795) != 0
triggerall = Anim = 4005
trigger1 = AnimElem = 53
trigger1 = 1
id = 795
ignorehitpause = 0
persistent = 1

[state 3705, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(2000) = 0
triggerall = Anim = 4005
trigger1 = AnimElem = 53
anim = 2000
id = 2000
pos = 0,0
postype = p1
sprpriority = 3
bindtime = -1
scale = 1,1
removetime = 21
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 3705, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(2000) != 0
triggerall = Anim = 4005
trigger1 = AnimElem = 59
trigger1 = 1
id = 2000
ignorehitpause = 0
persistent = 1

[state 3705, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(793) = 0
triggerall = Anim = 4005
trigger1 = AnimElem = 59
anim = 793
id = 793
pos = -12,-96
postype = p1
sprpriority = -2
bindtime = -1
scale = 1,1
removetime = 24
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 3705, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(793) != 0
triggerall = Anim = 4005
trigger1 = AnimElem = 67
trigger1 = 1
id = 793
ignorehitpause = 0
persistent = 1

[state 3705, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(792) = 0
triggerall = Anim = 4005
trigger1 = AnimElem = 67
anim = 792
id = 792
pos = -8,-107
postype = p1
sprpriority = -2
bindtime = -1
scale = 1,1
removetime = 24
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 3705, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(792) != 0
triggerall = Anim = 4005
trigger1 = AnimElem = 73
trigger1 = 1
id = 792
ignorehitpause = 0
persistent = 1

[state 3705, Explod]
type = Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(795) = 0
triggerall = Anim = 4005
trigger1 = AnimElem = 73
anim = 795
id = 795
pos = -50,-105
postype = p1
sprpriority = 3
bindtime = -1
scale = 1,1
removetime = 20
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 3705, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(795) != 0
triggerall = Anim = 4005
trigger1 = AnimElem = 79
trigger1 = 1
id = 795
ignorehitpause = 0
persistent = 1

[state 3705, Explod]
type = Null;Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(7999) = 0
triggerall = Anim = 4005
trigger1 = AnimElem = 79
anim = 7999
id = 7999
pos = 22,-70
postype = p1
sprpriority = 3
bindtime = -1
scale = 1,1
removetime = -1
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 3705, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(795) != 0
triggerall = Anim = 4005
trigger1 = Time >= 225
trigger1 = 1
id = 799
ignorehitpause = 0
persistent = 1

[state 3705, Explod]
type = Null;Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(8066) = 0
triggerall = Anim = 4006
trigger1 = 1;AnimElem = 1
anim = 8066
id = 8066
pos = 2,-40
postype = p1
sprpriority = 996
bindtime = -1
scale = 0.35,0.35
removetime = -1
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40
ignorehitpause = 0

[state 3705, RemoveExplod]
type = Null;RemoveExplod
triggerall = NumExplod(8066) != 0
triggerall = Anim = 4006
trigger1 = Time >= 2030
trigger1 = 1
id = 8066
ignorehitpause = 0
persistent = 1

[State 3700, 1]
type = VelSet
trigger1 = 1
x = 0.0
ignorehitpause = 1
persistent = 1

[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 4
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3705, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1
persistent = 1

[state 3000, Explod]
type = Null;Explod
triggerall = palno != 5 && (palno != [1,3]) && (palno != [8,9])
triggerall = NumExplod(7779) = 0
trigger1 = AnimElem = 1
anim = 7779
id = 7779
pos = -2,-100
postype = p1
sprpriority = -2
bindtime = -1
scale = 1,1
removetime = -2
removeongethit = 1
ownpal = 0
supermovetime = 40
pausemovetime = 40

[State 200, 1]
type = PlaySnd
triggerall = Anim = 4005
trigger1 = AnimElem = 1
value = 8400, 0

[State 200, HitDef]
type = HitDef
triggerall = Anim = 4005
trigger1 = !NumTarget(37050)
trigger1 = AnimElem = 2
attr = S,HA
damage = 5,5
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 4,23
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = -1
hitsound = s8000,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = 0,0
air.type = high
air.hittime = 65
air.velocity = 0,0
envshake.time = 1
envshake.ampl = 1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 37050
fall = 0
air.fall = 0
fall.recover = 0
p2stateno = 5000
p2getp1state = 0
numhits = 1
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 210, 1]
type = PlaySnd
triggerall = Anim = 4005
trigger1 = AnimElem = 8
value = 8400, 1

[State 210, HitDef]
type = HitDef
triggerall = Anim = 4005
trigger1 = !NumTarget(37051)
trigger1 = AnimElem = 9
attr = S,HA
damage = 5,5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5,25
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = -1
hitsound = s8000,1
guardsound = S8500,0
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = 0,0
air.type = high
air.hittime = 65
air.velocity = 0,0
envshake.time = 1
envshake.ampl = 1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 37051
fall = 0
air.fall = 0
fall.recover = 0
p2stateno = 5000
p2getp1state = 0
numhits = 1
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 230, 1]
type = PlaySnd
triggerall = Anim = 4005
trigger1 = AnimElem = 15
value = 8400, 0

[State 230, HitDef]
type = HitDef
triggerall = Anim = 4005
trigger1 = !NumTarget(37052)
trigger1 = AnimElem = 16
attr = S,HA
damage = 5,5
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 4,23
sparkno = s8002
sparkxy = -15,-65
guard.sparkno = -1;s8001
hitsound = s8000,0
guardsound = S8500,0
ground.type = high
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = 0,0
air.type = high
air.velocity = 0,0
air.hittime = 65
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 37052
fall = 0
air.fall = 0
fall.recover = 0
p2stateno = 5000
p2getp1state = 0
numhits = 1
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 240, 1]
type = PlaySnd
triggerall = Anim = 4005
trigger1 = AnimElem = 21
value = 8400, 1

[State 240, HitDef]
type = HitDef
triggerall = Anim = 4005
trigger1 = !NumTarget(37053)
trigger1 = AnimElem = 22
attr = S,HA
damage = 5,5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5,20
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = -1
hitsound = s8000,1
guardsound = S8500,0
ground.type = high
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = 0,0
air.type = high
air.hittime = 65
air.velocity = 0,0
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 37053
fall = 0
air.fall = 0
fall.recover = 0
p2stateno = 5000
p2getp1state = 0
numhits = 1
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 200, 1]
type = PlaySnd
triggerall = Anim = 4005
trigger1 = AnimElem = 27
value = 8400, 0

[State 200, HitDef]
type = HitDef
triggerall = Anim = 4005
trigger1 = !NumTarget(37054)
trigger1 = AnimElem = 28
attr = S,HA
damage = 5,5
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 3,23
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = -1
hitsound = s8000,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = 0,0
air.type = high
air.hittime = 15
air.velocity = 0,0
envshake.time = 1
envshake.ampl = 1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 37054
fall = 0
air.fall = 0
fall.recover = 0
p2stateno = 5000
p2getp1state = 0
numhits = 1
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 210, 1]
type = PlaySnd
triggerall = Anim = 4005
trigger1 = AnimElem = 34
value = 8400, 1

[State 210, HitDef]
type = HitDef
triggerall = Anim = 4005
trigger1 = !NumTarget(37055)
trigger1 = AnimElem = 35
attr = S,HA
damage = 5,5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4,25
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = -1
hitsound = s8000,1
guardsound = S8500,0
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = 0,0
air.type = high
air.hittime = 15
air.velocity = 0,0
envshake.time = 1
envshake.ampl = 1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 37055
fall = 0
air.fall = 0
fall.recover = 0
p2stateno = 5000
p2getp1state = 0
numhits = 1
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 230, 1]
type = PlaySnd
triggerall = Anim = 4005
trigger1 = AnimElem = 41
value = 8400, 0

[State 230, HitDef]
type = HitDef
triggerall = Anim = 4005
trigger1 = !NumTarget(37056)
trigger1 = AnimElem = 42
attr = S,HA
damage = 5,5
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 3,23
sparkno = s8002
sparkxy = -15,-65
guard.sparkno = -1;s8001
hitsound = s8000,0
guardsound = S8500,0
ground.type = high
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = 0,0
air.type = high
air.velocity = 0,0
air.hittime = 15
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 37056
fall = 0
air.fall = 0
fall.recover = 0
p2stateno = 5000
p2getp1state = 0
numhits = 1
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 240, 1]
type = PlaySnd
triggerall = Anim = 4005
trigger1 = AnimElem = 47
value = 8400, 1

[State 240, HitDef]
type = HitDef
triggerall = Anim = 4005
trigger1 = !NumTarget(37057)
trigger1 = AnimElem = 48
attr = S,HA
damage = 5,5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4,20
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = -1
hitsound = s8000,1
guardsound = S8500,0
ground.type = high
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = 0,0
air.type = high
air.hittime = 5
air.velocity = 0,0
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 37057
fall = 0
air.fall = 0
fall.recover = 0
p2stateno = 5000
p2getp1state = 0
numhits = 1
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 200, 1]
type = PlaySnd
triggerall = Anim = 4005
trigger1 = AnimElem = 53
value = 8400, 0

[State 200, HitDef]
type = HitDef
triggerall = Anim = 4005
trigger1 = !NumTarget(37058)
trigger1 = AnimElem = 54
attr = S,HA
damage = 5,5
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 2,23
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = -1
hitsound = s8000,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = 0,0
air.type = high
air.hittime = 15
air.velocity = 0,0
envshake.time = 1
envshake.ampl = 1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 37058
fall = 0
air.fall = 0
fall.recover = 0
p2stateno = 5000
p2getp1state = 0
numhits = 1
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 210, 1]
type = PlaySnd
triggerall = Anim = 4005
trigger1 = AnimElem = 60
value = 8400, 1

[State 210, HitDef]
type = HitDef
triggerall = Anim = 4005
trigger1 = !NumTarget(37059)
trigger1 = AnimElem = 61
attr = S,HA
damage = 5,5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3,25
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = -1
hitsound = s8000,1
guardsound = S8500,0
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = 0,0
air.type = high
air.hittime = 15
air.velocity = 0,0
envshake.time = 1
envshake.ampl = 1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 37059
fall = 0
air.fall = 0
fall.recover = 0
p2stateno = 5000
p2getp1state = 0
numhits = 1
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 230, 1]
type = PlaySnd
triggerall = Anim = 4005
trigger1 = AnimElem = 67
value = 8400, 0

[State 230, HitDef]
type = HitDef
triggerall = Anim = 4005
trigger1 = !NumTarget(37060)
trigger1 = AnimElem = 68
attr = S,HA
damage = 5,5
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 2,23
sparkno = s8002
sparkxy = -15,-65
guard.sparkno = -1;s8001
hitsound = s8000,0
guardsound = S8500,0
ground.type = high
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = 0,0
air.type = high
air.velocity = 0,0
air.hittime = 15
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 37060
fall = 0
air.fall = 0
fall.recover = 0
p2stateno = 5000
p2getp1state = 0
numhits = 1
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 240, 1]
type = PlaySnd
triggerall = Anim = 4005
trigger1 = AnimElem = 73
value = 8400, 1

[State 240, HitDef]
type = HitDef
triggerall = Anim = 4005
trigger1 = !NumTarget(37061)
trigger1 = AnimElem = 74
attr = S,HA
damage = 5,5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3,50
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = -1
hitsound = s8000,1
guardsound = S8500,0
ground.type = high
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = 0,0
air.type = high
air.hittime = 5
air.velocity = 0,0
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
ID = 37061
fall = 0
air.fall = 0
fall.recover = 0
p2stateno = 5000
p2getp1state = 0
numhits = 1
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 3705, Width]
type = Width
triggerall = Anim = 4005
trigger1 = AnimElem = 79
value = 25,0
ignorehitpause = 1
persistent = 1

[State 420, 1]
type = PlaySnd
triggerall = Anim = 4005
trigger1 = AnimElem = 82
value = 8400, 2

[State 420, HitDef]
type = Null;HitDef
triggerall = Anim = 4005
trigger1 = !NumTarget(4200)
trigger1 = AnimElem = 83
attr = C, HA
animtype = Hard
damage = 15,5
priority = 4, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,11
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = -1;s8001
hitsound = s8000,2
guardsound = S8500,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1,-16+((NumHelper(3302)||NumHelper(3304))*-6)
guard.velocity = -5
air.velocity = -1,-16+((NumHelper(3302)||NumHelper(3304))*-6)
air.hittime = 17
down.bounce = 1
fall.yvelocity = -4.4
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
;ground.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;air.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0
;down.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
ID = 4200
numhits = 0
yaccel = 0.0
getpower = 0,0
givepower = 5,5

[State 3705, 5]
type = Null;ChangeState
trigger1 = NumTarget(4200)
trigger1 = AnimElemTime(88) >= 1
value = 4010
ctrl = 0

[State 3705, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3705, PlaySnd]
type = Null;PlaySnd
trigger1 = NumEnemy
trigger1 = EnemyNear, StateNo = 9920
trigger1 = EnemyNear, Time = 1
trigger2 = NumTarget(4200)
trigger2 = Target, StateNo = 9920
trigger2 = Target, Time = 1
channel = -1
value = 1000,1
volume = 100
volumescale = 100
ignorehitpause = 1
persistent = 0

[State 3705, 5]
type = ChangeState
trigger1 = AnimElem = 80
value = 1000
ctrl = 0
ignorehitpause = 1
persistent = 1

[State 3705, 5]
type = ChangeState
triggerall = Time > 230 && Time < 3998
trigger1 = NumEnemy
trigger1 = EnemyNear, StateNo != [9910,9920]
trigger2 = P2StateNo != [9910,9920]
trigger3 = !NumTarget(4200)
trigger4 = NumTarget(4200)
trigger4 = Target, StateNo != [9910,9920]
trigger5 = NumEnemy
trigger5 = EnemyNear, StateNo = 5050
trigger6 = P2StateNo = 5050
value = 1000
ctrl = 0
ignorehitpause = 1
persistent = 1

[State 3705, 5]
type = ChangeState
triggerall = Time >= 3998
trigger1 = NumEnemy
trigger1 = EnemyNear, StateNo != [9910,9920]
trigger2 = P2StateNo != [9910,9920]
trigger3 = !NumTarget(4200)
trigger4 = NumTarget(4200)
trigger4 = Target, StateNo != [9910,9920]
trigger5 = NumEnemy
trigger5 = EnemyNear, StateNo = 5050
trigger6 = P2StateNo = 5050
value = 50
ctrl = 0
ignorehitpause = 1
persistent = 1

[State 3705, PosSet]
type = PosSet
triggerall = Time > 230
trigger1 = NumEnemy
trigger1 = EnemyNear, StateNo != [9910,9920]
trigger2 = P2StateNo != [9910,9920]
trigger3 = !NumTarget(4200)
trigger4 = NumTarget(4200)
trigger4 = Target, StateNo != [9910,9920]
trigger5 = NumEnemy
trigger5 = EnemyNear, StateNo = 5050
trigger6 = P2StateNo = 5050
x = 0
y = 0
ignorehitpause = 1
persistent = 0

[State 3705, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 4005
trigger1 = Time > 620
value = 4006
ignorehitpause = 1
persistent = 0

[State 3705, PlaySnd]
type = PlaySnd
triggerall = Anim = 4006
trigger1 = AnimElem = 1
channel = 14
value = 4006,0
volume = 100
volumescale = 100
ignorehitpause = 1
persistent = 0

[State 3705, StopSnd]
type = Null;StopSnd
trigger1 = Time >= 2222
channel = 14
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State 3705, PosSet]
type = PosSet
triggerall = Anim = 4006
trigger1 = Time = 621
x = 0
y = 999
ignorehitpause = 1
persistent = 0

[State 3705, PosAdd]
type = PosAdd
triggerall = Anim = 4006
trigger1 = Time > 621 && Time < 1650
x = 0
y = -1
ignorehitpause = 1
persistent = 1

[State 3705, EnvShake]
type = Null;EnvShake
triggerall = Anim = 4006
trigger1 = Time > 621 && Time < 1650
time = 12
freq = 120
ampl = -3
phase = 90
ignorehitpause = 1
persistent = 1

[State 3705, SprPriority]
type = SprPriority
triggerall = Anim = [4006,4007]
trigger1 = Time > 620
value = 996
ignorehitpause = 1

[State 3705, AngleDraw]
type = AngleDraw
triggerall = Anim = [4006,4007]
trigger1 = Time > 620
scale = 0.35,0.35
ignorehitpause = 1

[State 3705, Explod]
type = Explod
triggerall = Anim = 4006
trigger1 = Time = 621
anim = 4020
ID = 4020
pos = 0,45
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999
pausemovetime = 999
sprpriority = 997
ontop = 1
scale = 0.7,0.7
ownpal = 1

[State 3705, Listras2]
type = Explod
trigger1 = Time = [1400,1800]
trigger1 = Time % 18 = 0
trigger2 = Time = [2500,2900]
trigger2 = Time % 26 = 0
anim = 4165
ID = 4165
pos = 0,-190 + (-110*(Time = [2500,3010]))
postype = p1
vel = 0,1.01
accel = 0,0
random = 590,590
removetime = -2
scale = 0.12,0.12
supermovetime = 9999999
pausemovetime = 9999999
ontop = 0
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999
sprpriority = 996
persistent = 1

[State 3705, Listras2]
type = Explod
trigger1 = Time = [1400,1800]
trigger1 = Time % 15 = 0
trigger2 = Time = [2500,2900]
trigger2 = Time % 23 = 0
anim = 4160
ID = 4160
pos = 0,-200 + (-110*(Time = [2500,3010]))
postype = p1
vel = 0,1.11
accel = 0,0
random = 600,600
removetime = -2
scale = 0.12,0.12
supermovetime = 9999999
pausemovetime = 9999999
ontop = 0
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999
sprpriority = 996
persistent = 1

[State 3705, Listras2]
type = Explod
trigger1 = Time = [1400,1800]
trigger1 = Time % 14 = 0
trigger2 = Time = [2500,2900]
trigger2 = Time % 22 = 0
anim = 4161
ID = 4161
pos = 0,-210 + (-110*(Time = [2500,3010]))
postype = p1
vel = 0,1.11
accel = 0,0
random = 610,610
removetime = -2
scale = 0.09,0.09
supermovetime = 9999999
pausemovetime = 9999999
ontop = 0
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999
sprpriority = 996
persistent = 1

[State 3705, Listras2]
type = Explod
trigger1 = Time = [1400,1800]
trigger1 = Time % 12 = 0
trigger2 = Time = [2500,2900]
trigger2 = Time % 20 = 0
anim = 4162
ID = 4162
pos = 0,-220 + (-110*(Time = [2500,3010]))
postype = p1
vel = 0,1.41
accel = 0,0
random = 620,620
removetime = -2
scale = 0.10,0.10
supermovetime = 9999999
pausemovetime = 9999999
ontop = 0
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999
sprpriority = 996
persistent = 1

[State 3705, Listras2]
type = Explod
trigger1 = Time = [1400,1800]
trigger1 = Time % 11 = 0
trigger2 = Time = [2500,2900]
trigger2 = Time % 19 = 0
anim = 4163
ID = 4163
pos = 0,-230 + (-110*(Time = [2500,3010]))
postype = p1
vel = 0,1.51
accel = 0,0
random = 630,630
removetime = -2
scale = 0.11,0.11
supermovetime = 9999999
pausemovetime = 9999999
ontop = 0
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999
sprpriority = 996
persistent = 1

[State 3705, Listras2]
type = Explod
trigger1 = Time = [1400,1800]
trigger1 = Time % 10 = 0
trigger2 = Time = [2500,2900]
trigger2 = Time % 18 = 0
anim = 4164
ID = 4164
pos = 0,-235 + (-110*(Time = [2500,3010]))
postype = p1
vel = 0,1.61
accel = 0,0
random = 635,635
removetime = -2
scale = 0.07,0.07
supermovetime = 9999999
pausemovetime = 9999999
ontop = 0
ownpal = 1
removeongethit = 1
supermovetime = 999
pausemovetime = 999
sprpriority = 996
persistent = 1

[State 3705, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4165) != 0
trigger1 = NumHelper(9610)
trigger1 = Helper(9610),  Anim = 4999
trigger2 = NumTarget
trigger2 = Target, StateNo = 9920
trigger2 = Target, Time = [1850,2195]
ID = 4165
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State 3705, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4164) != 0
trigger1 = NumHelper(9610)
trigger1 = Helper(9610),  Anim = 4999
trigger2 = NumTarget
trigger2 = Target, StateNo = 9920
trigger2 = Target, Time = [1850,2195]
ID = 4164
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State 3705, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4163) != 0
trigger1 = NumHelper(9610)
trigger1 = Helper(9610),  Anim = 4999
trigger2 = NumTarget
trigger2 = Target, StateNo = 9920
trigger2 = Target, Time = [1850,2195]
ID = 4163
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State 3705, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4162) != 0
trigger1 = NumHelper(9610)
trigger1 = Helper(9610),  Anim = 4999
trigger2 = NumTarget
trigger2 = Target, StateNo = 9920
trigger2 = Target, Time = [1850,2195]
ID = 4162
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State 3705, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4161) != 0
trigger1 = NumHelper(9610)
trigger1 = Helper(9610),  Anim = 4999
trigger2 = NumTarget
trigger2 = Target, StateNo = 9920
trigger2 = Target, Time = [1850,2195]
ID = 4161
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State 3705, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4160) != 0
trigger1 = NumHelper(9610)
trigger1 = Helper(9610),  Anim = 4999
trigger2 = NumTarget
trigger2 = Target, StateNo = 9920
trigger2 = Target, Time = [1850,2195]
ID = 4160
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1
persistent = 1

[State 3705, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 4006
trigger1 = AnimElem = 1070
trigger2 = Time >= 1690
value = 4007
ignorehitpause = 1
persistent = 0

[State 3705, ModifyExplod]
type = ModifyExplod
triggerall = NumExplod(4020) != 0
trigger1 = Anim = 4007
trigger1 = AnimElemTime(1) = 24
anim = 4020
ID = 4020
pos = 0,45
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-1
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999
pausemovetime = 999
sprpriority = 997
ontop = 1
scale = 0.7,0.7
ownpal = 1

[State 3705, Explod]
type = Explod
triggerall = Anim = 4007
trigger1 = Time = 2190
trigger2 = NumTarget
trigger2 = Target, StateNo = 6620
trigger2 = Target, Time = 1885
anim = 4020
ID = 4020
pos = 0,600
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-1
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999
pausemovetime = 999
sprpriority = 997
ontop = 1
scale = 0.7,0.7
ownpal = 1

[State 3705, Explod]
type = Explod
trigger1 = Time = [2330,2830]
anim = 8022
ID = 8022
pos = 0,0
postype = p2
vel = 0,0
accel = 0,2
random = 100,25
removetime = -2
scale = 1.0,1.0
supermovetime = 9999999
pausemovetime = 9999999
ontop = 1
ownpal = 1
removeongethit = 1
supermove = 1
sprpriority = 999
persistent = 4

[State 3705, PlaySnd]
type = PlaySnd
trigger1 = NumExplod(8022) != 0
channel = -1
value = 27,0
volume = 100
volumescale = 100
ignorehitpause = 1
persistent = 4

[State 3705, TargetLifeAdd]
type = TargetLifeAdd
triggerall = NumTarget
triggerall = Target, StateNo = 9920
trigger1 = Time = [2330,2830]
value = -2
kill = 0
absolute = 1
ignorehitpause = 1
persistent = 4

[State 3705, Explod]
type = Explod
triggerall = Anim = 4007
trigger1 = Time = 3199
anim = 4020
ID = 4020
pos = -15,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -0.05*Facing,-0.05
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 999
pausemovetime = 999
sprpriority = 999
ontop = 1
scale = 0.025,0.025
ownpal = 1

[State 3705, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(4020)
triggerall = Anim = 4007
trigger1 = Time >= 3998
id = 4020
ignorehitpause = 1
persistent = 1

[State 3705, PlaySnd]
type = PlaySnd
triggerall = Anim = 4007
trigger1 = Time = 3199
channel = 14
value = 4007,0
volume = 100
volumescale = 100
ignorehitpause = 1
persistent = 0

[State 3705, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1850+100,1855+100]
trans = addalpha
alpha = 256,20

[State 3705, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1856+100,1860+100]
trans = addalpha
alpha = 256,40

[State 3705, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1861+100,1865+100]
trans = addalpha
alpha = 256,80

[State 3705, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1866+100,1870+100]
trans = addalpha
alpha = 256,120

[State 3705, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1871+100,1875+100]
trans = addalpha
alpha = 256,150

[State 3705, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1876+100,1880+100]
trans = addalpha
alpha = 256,180

[State 3705, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1881+100,1885+100]
trans = addalpha
alpha = 256,210

[State 3705, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1886+100,1890+100]
trans = addalpha
alpha = 256,240

[State 3705, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1891+100,1895+100]
trans = addalpha
alpha = 256,256

[State 3705, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1896+100,1900+100]
trans = addalpha
alpha = 220,256

[State 3705, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1901+100,1905+100]
trans = addalpha
alpha = 180,256

[State 3705, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1906+100,1910+100]
trans = addalpha
alpha = 120,256

[State 3705, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1911+100,1915+100]
trans = addalpha
alpha = 90,256

[State 3705, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1916+100,1920+100]
trans = addalpha
alpha = 50,256

[State 3705, Trans]
type = Trans
triggerall = Anim = 4007
trigger1 = Time = [1921+100,5999+100]
trans = addalpha
alpha = 0,256

[State 3705, PosSet]
type = PosSet
trigger1 = AnimTime = 0
x = 0
y = 0
ignorehitpause = 1
persistent = 0

[State 3705, 5]
type = ChangeState
trigger1 = AnimElem = 79
value = 3770
ctrl = 0

[State 3705, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1