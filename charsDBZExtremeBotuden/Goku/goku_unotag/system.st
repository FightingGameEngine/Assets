
[Statedef 990]
type = s
movetype = I
physics = s
velset = 0,0
anim = 990
ctrl = 0
sprpriority = 1

[State 990, PowerAdd]
type = PowerAdd
triggerall = anim = 990 && power<powermax
trigger1 = !AIlevel && (command = "holdb" && command = "holdy")
trigger2 = AIlevel
value = 2 + (time / 10)

[State 740, Snd]
type = playsnd
trigger1 = anim = 990 && time =2
value =1,13
channel = 0
[State 740, Snd]
type = playsnd
trigger1 = anim = 990 && time = 10
value =8,0
channel = 1
[State 740, Snd]
type = playsnd
trigger1 = anim = 990 && time =2
value =2200,1
channel = 2

[State 740, Shake]
type = envshake
trigger1 = anim = 990 && !(time % 4)
time = 4
freq = 120
ampl = 2

[State 0, EnvShake]
type = EnvShake
trigger1 =timemod=4,0
time = 3
ampl = Ifelse(var(1),5,3)
ignorehitpause =1

[State 990, flash]
type = palfx
trigger1 = 1
time = 1
add =70+ceil(sin(time/8.0*pi)*70),20+ceil(sin(time/8.0*pi)*20),0

[State 990]
type=helper
trigger1= !numhelper(500)
helpertype=normal
stateno=999
ID=500
name="Charging Scale"
postype=p1
pausemovetime=9000
supermovetime=9000
ownpal=1
persistent = 0
[State 740, FX]
type = helper
trigger1 = anim = 990 && animelemtime(2) >= 0
trigger1 = !numhelper(7243)
helpertype = normal
stateno = 7243
ID = 7243
name = "Particles"
postype = p1
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 740, Anim]
type = changeanim
triggerall = anim != 991
trigger1 = !AIlevel && (command != "holdb" || command != "holdy")
trigger2 = power >= const(data.power) || power >= powermax || roundstate != 2
trigger3 = AIlevel && (inguarddist || p2bodydist x < 160)
value = 991
[State 740, End]
type = changestate
trigger1 = anim = 991 && !animtime
value = 0
ctrl = 1



[Statedef 991]
type = s
movetype = I
physics = s
velset = 0,0
anim = 991
ctrl =0
sprpriority = 5

[State 991, StopSnd]
type = StopSnd
trigger1 = animelem = 1
channel = 2

[State 991, ChangeState]
type = ChangeState
trigger1 = !animtime
value =0
ctrl = 1

[Statedef 999]
type = S
anim = 9741
velset = 0,0
ctrl = 0

[State 999]
type = bindtoroot
trigger1 = (root,stateno=990)
pos = 0,5

[State 7240, snd]
type=playsnd
trigger1= !time
value=7,4
channel=1


[State 999, StopSnd]
type = StopSnd
trigger1 = root,stateno!=990
channel = 6

[State 999, StopSnd]
type = StopSnd
trigger1 = root,stateno!=990
channel = 7

[State 999]
type = explod
trigger1 = !numexplod(992)
ID = 992
anim = 992
sprpriority = 4
postype = p1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
pos = 7,0
scale = .7,.8
ownpal = 1

[State 999, Dust]
type = explod
trigger1 = !(time%6)
anim = 993
sprpriority = -3
postype = p1
pos = 0,-floor(pos y)
scale =.7,.7
pos = 7,0
pausemovetime = -1
supermovetime = -1
ownpal = 1


[State 999]
type=modifyexplod
trigger1= numexplod(992) && (root,power<3000)
ID=992
scale=.6,.6*(root,power/3000.0)


[State 999, fx]
type=modifyexplod
trigger1= numexplod(992) && (root,power>=3000)
ID=992
scale=.5,.5

[State 999]
type = assertspecial
trigger1 = 1
flag = noshadow


[State 999, end]
type=removeexplod
trigger1 = (root,stateno!=990) || (root,movetype=H)


[State 999, end]
type=destroyself
trigger1 = (root,stateno!=990) || (root,movetype=H)



[Statedef 710]
type = S
physics = S
anim = 360
poweradd = 0
sprpriority = -1
velset = 0,0
ctrl = 0

[State 360, push]
type = PlayerPush
trigger1 = 1
value = 0

[State 360, hit]
type = HitBy
trigger1 = 1
value =  , AT

[State 360, hit]
type = NotHitBy
trigger1 = 1
value = , AA, AP

[State 360, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 8,1

[State 360, snd]
type = Poweradd
trigger1 = prevstateno = 150 || prevstateno = 151
trigger1 = AnimElem = 1
value = -1000

[State 360, 51]
type = EnvColor
trigger1 = animelem = 1
trigger1 = prevstateno = 150 || prevstateno = 151
value = 200,200,200
time = 3

[State 360, 1]
type = velset
trigger1 = Time = [10,25]
x = -5

[state 360, 1]
type = explod
trigger1 = animelem = 1
postype = p1
bindtime = 1
removetime = 8
removeongethit = 1
pos = 0,0
anim = 362
sprpriority = 3

[state 360, 1]
type = explod
trigger1 = time = 20
postype = p1
bindtime = 1
removetime = 8
removeongethit = 1
pos = -40,0
anim = 362
sprpriority = 3

[State 360, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 720]
type = S
physics = S
anim = 361
sprpriority = -1
poweradd = 0
velset = 0,0
ctrl = 0

[State 361, push]
type = PlayerPush
trigger1 = 1
value = 0

[State 361, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 8,1

[State 361, hit]
type = HitBy
trigger1 = 1
value =  , AT

[State 361, hit]
type = NotHitBy
trigger1 = 1
value = , AA, AP

[State 361, snd]
type = Poweradd
trigger1 = prevstateno = 150 || prevstateno = 151
trigger1 = AnimElem = 1
value = -1000

[State 361, 51]
type = EnvColor
trigger1 = animelem = 1
trigger1 = prevstateno = 150 || prevstateno = 151
value = 200,200,200
time = 3

[State 361, 1]
type = velset
trigger1 = Time = [10,25]
x = 5

[state 361, 1]
type = explod
trigger1 = animelem = 1
postype = p1
bindtime = 1
removetime = 8
removeongethit = 1
pos = 0,0
anim = 362
sprpriority = 3

[state 361, 1]
type = explod
trigger1 = time = 20
postype = p1
bindtime = 1
removetime = 8
removeongethit = 1
pos = 30,0
anim = 362
sprpriority = 3

[State 361, dust]
type = Explod
trigger1 = AnimElem = 1
anim = 4010
ID = 100
postype = p1
pos = -10,0
bindtime = 1
sprpriority = 2
ownpal = 1
scale = .7, .7

[State 361, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 0]
type = S
physics = S
movetype = I
velset = 0, 0
sprpriority = 0


[State 0, 3]
type = VelSet
trigger1 = abs(vel x) < Const(movement.stand.friction.threshold)
trigger2 = Time = 4
x = 0

[State 0, Gone]
type = removeexplod
trigger1 = ishelper
[State 0, Gone]
type = destroyself
trigger1 = ishelper

[State 0, 1]
type = ChangeAnim
trigger1 = Anim != 0 && Anim != 6
trigger2 = Anim = 6 && AnimTime = 0
value =0


[State 0, Dead]
type = changestate
trigger1 = !alive
value = 5050

[State 0, Skywalker]
type = changestate
triggerall = pos y < 0
trigger1 = !numenemy
trigger2 = numenemy = 1
trigger2 = (enemy, name = "M -NES Game 1" + enemy, name = "M -NES Game 2" + enemy, name = "M -GB Game 1" + enemy, authorname = "Bane84") < 2
trigger3 = numenemy >= 2
trigger3 = (enemy(0), name = "M -NES Game 1" + enemy(0), name = "M -NES Game 2" + enemy(0), name = "M -GB Game 1" + enemy(0), authorname = "Bane84") < 2
trigger3 = (enemy(1), name = "M -NES Game 1" + enemy(1), name = "M -NES Game 2" + enemy(1), name = "M -GB Game 1" + enemy(1), authorname = "Bane84") < 2
value = 50



[Statedef 10]
type = C
physics = C
movetype = I
velset = 0, 0
sprpriority = 0

[State 10, Anim]
type = changeanim
trigger1 = !time && anim = 12
value = 10
elem = 3 -animelemno(0)
[State 10, Anim]
type = changeanim
trigger1 = anim != 10
value = 10

[State 10, End]
type = changestate
trigger1 = !animtime
value = 11


[Statedef 11]
type = C
physics = C
movetype = I
anim = 11
velset = 0, 0
sprpriority = 0

[State 11, Anim]
type = changeanim
trigger1 = anim = 6 && !animtime
value = 11

[Statedef 12]
type = S
physics = S
movetype = I
velset = 0, 0
sprpriority = 0

[State 12, Anim]
type = changeanim
trigger1 = !time && anim = 10
value = 12
elem = 3 -animelemno(0)
[State 12, Anim]
type = changeanim
trigger1 = anim != 12
value = 12

[State 12, End]
type = changestate
trigger1 = command = "holddown" && command != "holdup"
value = 10
[State 12, End]
type = changestate
trigger1 = !animtime
value = 0



[Statedef 20]
type = S
physics = S
sprpriority = 0

[State 20, Vel]
type = velset
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)
[State 20, Vel]
type = velset
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 20, Anim]
type = changeanim
triggerall = vel x > 0
trigger1 = anim != 20 && anim != 5
trigger2 = anim = 5 && animelemtime(1) >= 1
value = 20

[State 20, Anim]
type = changeanim
triggerall = vel x < 0
trigger1 = anim != 21 && anim != 5
trigger2 = anim = 5 && animelemtime(1) >= 1
value = 21


[Statedef 21]
type= S
physics=N
sprpriority= 0
ctrl= 0
facep2= 1

[State 21, Init Pos fix]
type= posset
trigger1= !time
pos y= 0
persistent= 0

[State 21, Var14Clear]
type= Varset
trigger1= !time
var(14)= -1
Persistent=0

[State 21, Init get random var less them 400]
type= Varset
trigger1= !time
trigger1= random<400
var(14)=1

[State 21, Conditions for force MoveForward at start]
type= Varset
triggerAll= !time
trigger1= BackEdgeBodyDist <= 20
trigger2= Enemynear,BackEdgeBodyDist <= 20 && !(Enemynear,Prevstateno=[5100,5120])
trigger3= ((Enemynear,Stateno=[5100,5120]) || P2Statetype=L || P2Movetype=H) && P2Bodydist x >70
trigger4= NumTarget
trigger5= Enemynear,P2dist x < -20
var(14)=0

[State 21, Conditions for force MoveBackward at start]
type= Varset
triggerAll= !time
trigger1= BackEdgeBodyDist > 20 && !NumTarget && random<320 + 600*((Enemynear,Prevstateno=[5100,5120]) || (Enemynear,Stateno=[5100,5120]) || P2Statetype=L)
trigger2= NumEnemy && Enemynear,vel x > 3 && random<320
trigger3= NumPartner
var(14)= -1

[State 21, INIT Move Var]
type= Varset
trigger1= !time && var(14)=1
var(13)= 0

[State 21, add random Move Var]
type= Varset
trigger1= var(14)=1 && var(13)<1
var(13)= 40+random%41

[State 21, consume Move var]
type= Varadd
trigger1= var(14)=1
trigger1= var(13)>0
var(13)= -1

[State 21, Force move back]
type= Varset
triggerall= var(14) != -1 && time
trigger1= P2Bodydist x<40 && P2Statetype=L
trigger1= P2Bodydist x<40 && (P2StateNo=[5100,5120])
trigger2= NumTarget(1310)
trigger2= P2Bodydist x < 10
var(14)= -1

[State 21, Force move forward]
type= Varset
triggerall= var(14) != 0 && time
trigger1= NumTarget(1310)
trigger1= P2Bodydist x > 25
var(14)= 0

[State 21, adjust Move var-]
type= Null
triggerall= var(14) && var(13) && !NumTarget
trigger1= P2Statetype=A && P2bodydist x <100 && Enemynear,vel x>=0 && Random<100
trigger2= P2Statetype=S && P2bodydist x <100 && Enemynear,vel x>=4 && Random<80
var(13)= 29

[State 21, Move Forward]
type = VelSet
trigger1= !time && var(14)= 0
trigger2= Var(14)=1 && Var(13)>=30
trigger3= time && NumTarget(1310) && var(14) = 0
x = const(velocity.walk.fwd.x) * const(size.xscale)

[State 21, Move Backward]
type = VelSet
trigger1= !time && var(14)= -1
trigger2= Var(14)=1 && Var(13)<30
trigger3= time && NumTarget(1310) && var(14) = -1
x = const(velocity.walk.back.x) * const(size.xscale)

[State 21, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20

[State 21, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21

[State 21, Exit to 0]
type = changestate
trigger1 = !NumTarget
trigger1 = p2bodydist x <= 70 && (random < ifelse((Enemynear,vel x<-1),20,200))
trigger1 = P2StateNo<5000 && P2Movetype!=H
trigger2 = p2dist x < 0
trigger3 = time && vel x>0 && FrontEdgeBodyDist <= 40
trigger4 = time && vel x<0 && BackEdgeBodyDist <= 20
trigger5 = enemy,numproj > 0
trigger6 = InGuardDist
trigger7 = roundstate != 2
trigger8 = (P2Stateno=[5100,5120]) && P2Bodydist x <30
trigger10 = p2bodydist x < 10 && !NumTarget
trigger11 = NumTarget(1310)
trigger11 = P2Bodydist x < 90
value = 0
ctrl = 1

[State 21, Exit to 102]
type = changestate
trigger1 = P2Bodydist x>80 && Enemynear,vel x<0
trigger1 = Var(14)=0 && time>80
trigger1 = random < time
trigger2 = P2Bodydist x>20 && Enemynear,Anim=5300
value = 102
ctrl = 0



[Statedef 39]
type = S
physics = S
anim = 40
ctrl = 0
velset = 0, 0
sprpriority = 1
facep2 = 1

[State 39, HuMan TO Jump]
type= ChangeState
trigger1= !time
trigger1= !AILevel
value=40

[State 39, Var]
type = varset
trigger1 = !time && AIlevel
var(9) = ifelse((p2dist x > 240 || p2dist y > 180 || random < 100), 3, 1)

[State 39, Var]
type = varset
trigger1 = AIlevel
sysvar(1) = ifelse((enemynear, movetype = A || backedgebodydist <= 20 || (Enemynear,backedgebodydist >0 && Enemynear,vel x <=0)), 1, ifelse((P2StateNo=[5000,5299]), -1, 0))

[State 39, Var]
type = varset
trigger1 = AIlevel && var(9) != 3 && random < 60
var(9) = 2

[State 39, Dust]
type = helper
trigger1 = !animtime
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 39, Vel]
type = velset
trigger1 = !animtime && var(9) != 3
x = ifelse(!sysvar(1), const(velocity.jump.neu.x), ifelse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = ifelse(var(9) = 2, 0.75, 1) * const(velocity.jump.y)

[State 39, Vel]
type = velset
trigger1 = !animtime && var(9) = 3
x = ifelse(!sysvar(1), const(velocity.jump.neu.x), ifelse(sysvar(1) = 1, 1.5 * const(velocity.jump.fwd.x), 1.5 * const(velocity.jump.back.x)))
y = ifelse(!sysvar(1), 1.15, 1) * const(velocity.jump.y)

[State 39, Vel]
type = velset
trigger1 = !animtime && var(9) = 3 && sysvar(1)
x = ifelse(!sysvar(1), const(velocity.jump.neu.x), ifelse(sysvar(1) = 1, 1.5 * const(velocity.jump.fwd.x), 1.5 * const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 39, Vel]
type = velset
trigger1 = !animtime && prevstateno = 100 && sysvar(1) = 1
trigger1 = var(9) := 3
x = const(velocity.runjump.fwd.x)

[State 39, End]
type = changestate
trigger1 = !animtime
value = 50
ctrl = 1





[Statedef 40]
type=S
physics=S
movetype=I
anim=40
ctrl=0
velset=0,0
sprpriority=1
facep2=1

[State 40, Direction]
type=varset
trigger1= !AILevel
sysvar(1)= ifelse(!time, 0, ifelse(command="holdfwd", 1, ifelse(command="holdback", -1, sysvar(1))))
[State 40, Direction]
type=varset
trigger1= AILevel
sysvar(1)= ifelse((enemynear,movetype!=A || backedgebodydist<=10), 1, ifelse((enemynear,movetype=A), -1, 0))

[State 40, High Jump]
type=varset
trigger1= !time && !AILevel
var(3)= ifelse(command="highjump", 3, 0)
[State 40, High Jump]
type=varset
trigger1= !time && AILevel
var(3)= ifelse((p2bodydist x>=160 || random<125), 3, 0)
[State 40, High Jump]
type=varset
trigger1= !time && prevstateno=100
var(3)=3

[State 40, Low Jump]
type=varset
trigger1= !AILevel && command!="holdup" && (var(3)!=[1,2])
var(3)= ifelse((var(3)=3 && sysvar(1)), 2, 1)
[State 40, Low Jump]
type=varset
trigger1= AILevel&& (var(3)!=[1,2])
trigger1= (enemynear,statetype=C) && random<500
var(3)= ifelse((var(3)=3 && sysvar(1)), 2, 1)

[State 40, Snd]
type=playsnd
trigger1= !animtime
value=0, ifelse((var(3)=[2,3]), 41, 40)
[State 40, Dust]
type=helper
trigger1= !animtime
helpertype=normal
stateno=8100
ID=8100
name="Jump Dust"
postype=p1
ownpal=1

[State 40, Vel Normal]
type=velset
trigger1= !animtime
x= ifelse(!sysvar(1), const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y= const(velocity.jump.y)

[State 40, Vel Short]
type=velset
trigger1= !animtime && var(3)=1
x= ifelse(!sysvar(1), const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y= .76 * const(velocity.jump.y)

[State 40, Vel Medium]
type=velset
trigger1= !animtime && var(3)=2
x= ifelse(!sysvar(1), const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y= .76 * const(velocity.jump.y)

[State 40, Vel Long]
type=velset
trigger1= !animtime && var(3)=3
x= ifelse(!sysvar(1), const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y= ifelse(!sysvar(1), const(velocity.runjump.y), const(velocity.jump.y))

[State 40, End]
type=changestate
trigger1= !animtime
value=50
ctrl=1


[Statedef 50]
type=A
physics=N
movetype=I
sprpriority=1

[State 50, Anim]
type=changeanim
trigger1= !time
value= ifelse(!vel x, 41, ifelse(vel x>0, 42, 43)) + 10*(var(3)=[1,2])
persistent=0

[State 50, Grounded Frame]
type=posfreeze
trigger1= time<1 && prevstateno=40
value=1
[State 50, Grav]
type=gravity
trigger1= time>=1 || prevstateno!=40

[State 50, No Guard]
type=assertspecial
trigger1= var(3)=[1,2]
flag=noairguard

[State 50, Land]
type=changestate
trigger1= pos y>-vel y
value=52


[Statedef 51]
type=A
physics=N
movetype=I
sprpriority=1
[State 51, Grav]
type=gravity
trigger1= 1
[State 51, Land]
type=changestate
trigger1= pos y>-vel y
value=52


[Statedef 52]
type=S
physics=S
movetype=I
anim=47
ctrl=0
velset=0,0
sprpriority=1

[State 52, anim 57]
type=changeanim
trigger1= !time && (var(3)=1 || var(3)=2)
trigger1= (prevstateno=[600,699])
value=57

[State 52, Pos]
type=posset
trigger1= 1
y=0

[State 52, Ctrl]
type=ctrlset
trigger1= !time && (prevstateno!=[600,699])
trigger2= time=1 && anim!=57
value=1
[State 52, Guard]
type=changestate
trigger1= ctrl && command="holdback"
trigger1= inguarddist && (prevstateno!=[600,699])
value=120

[State 52, No Walk]
type=assertspecial
trigger1= anim!=5
flag=nowalk

[State 52, Snd]
type=playsnd
trigger1= !time
value=0,52
[State 52, Dust]
type=explod
trigger1= !time
anim=8105
sprpriority=-3
postype=p1
scale=.5,.5
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 52, Turn]
type=changeanim
trigger1= ctrl && p2dist x<0
trigger1= anim!=5
value=5
[State 52, Turn]
type=turn
trigger1= anim=5 && animelem=1

[State 52, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1





[Statedef 100]
type    = S
physics = S
anim = 100
sprpriority = 1
ctrl=0

[State 100, 2]
type = PlaySnd
trigger1 =!time
value = 1,3

[State 100, dash dust]
type = Explod
trigger1 = !time
anim = 2216
ID = 2216
pos = -50,6
scale = 1,0.5
sprpriority = 8
ownpal = 1
ignorehitpause = 1

[State 100, 5]
type = Explod
trigger1 = (time%4) = 1
ID = 2221
anim = 2221
postype = p1
facing = 1
vfacing = 1
pos = -16,-70
bindtime = 1
removetime = 6
ontop = 1
vel = 0,0
ownpal = 1
random = 12,90
sprpriority = 3
scale = .4,.14
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 100, 1]
type = VelSet
trigger1 =anim=100
x = const(velocity.run.fwd.x)
[State 100, 2]
type = AssertSpecial
trigger1 = 1
flag = NoWalk
[State 100, 3]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, 4]
type = ChangeState
trigger1=!AILevel&&command = "holdup"
value=40
ctrl=0

[State 100, 4]
type = ChangeState
trigger1=!AILevel&&command != "holdfwd"
trigger2=AILevel&&p2bodydist x<=60
trigger3=frontedgedist<=0
value=101
ctrl=0

[Statedef 101]
type = S
physics = S
velset = 3,0
ctrl = 0
anim = 101
poweradd = 0
sprpriority = 2

[State 101, dust]
type= makedust
trigger1 =time%2
pos=30,0

[State 100, Effect]
type = PlaySnd
trigger1=!time
value=1,21
[State 0, VelMul]
type = VelMul
trigger1 = time = 5
x = .8
[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 101, end]
type = ChangeState
trigger1=!animtime
value = 0
ctrl = 1


[Statedef 105]
type= S
movetype = I
physics = S
velset = 0, 0
anim = 105
ctrl = 0
sprpriority = 1

[State 105,AssertSpecial]
type= AssertSpecial
trigger1 =1
flag= NoWalk
flag2 =NoAutoTurn

[State 105, dash dust]
type = Explod
trigger1 = !time
anim = 2217
ID = 2217
pos = 35,6
scale = 1,0.5
sprpriority = 8
ownpal = 1
ignorehitpause = 1

[State 105,VelSet]
type= VelSet
trigger1 =animelemtime(2)>=0
x=Const(Velocity.Run.Back.X)

[State 105, Flash]
type = Explod
trigger1 = (time%4) = 1
ID = 2223
anim = 2223
postype = P1
pos = 30,-80
bindtime = 1
vel = -2.2
ownpal = 1
random = 18,80
removetime = -2
sprpriority = 2
scale = .45,.16
removeongethit = 1
ignorehitpause = 1

[State 105,PlaySnd]
type=PlaySnd
trigger1=(AnimElem = 2)
value=S1,3

[State 105,ChangeState]
type=ChangeState
trigger1=!animtime
value=106


[Statedef 106]
type= S
movetype=I
physics=N
anim=106
vel=-2,0
ctrl=0

[State 0, VelMul]
type = VelMul
trigger1 = time = 5
x = .8

[State 106, dust]
type= makedust
trigger1 =time%2
pos=-20,0

[State 106, Effect]
type = PlaySnd
trigger1=!time
value=1,21
[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0


[State 106,ChangeState]
type= ChangeState
trigger1 =(!AnimTime)
value =0
ctrl= 1


[Statedef 110]
type = A
physics = N
ctrl = 0
anim = 110

[State 500, 2]
type = varset
trigger1 = Time = 0
var(24) = 0

[State -3]
type = varset
trigger1 = Time = 0
fvar(23) = 16

[State 100, 5]
type = Explod
trigger1 = (time%4) = 1
ID = 2221
anim = 2221
postype = p1
facing = 1
vfacing = 1
pos = -16,-70
bindtime = 1
removetime = 6
ontop = 1
vel = 0,0
ownpal = 1
random = 12,90
sprpriority = 3
scale = .4,.14
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State -3]
type = varadd
trigger1 = Time = 0
var(11) = 1

[State 100, 2]
type = PlaySnd
trigger1 =!time
value = 1,3

[State 100, 3]
type = velset
trigger1 = Time = 0
x = 8.75

[State 100, 3]
type = velset
trigger1 = Time = 0
trigger1 = vel y > 0 || sysvar(0)
y = 0

[State 100, 3]
type = velmul
trigger1 = Time < 4
trigger1 = vel y < 0
y = 0.8

[State 100, 3]
type = velset
trigger1 = Time = 4
trigger1 = vel y < 0
y = 0






[State 100, 3]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 1


[Statedef 115]
type = A
physics = N
ctrl = 0
anim = 115

[State 100, 2]
type = PlaySnd
trigger1 =!time
value = 1,3

[State 500, 2]
type = varset
trigger1 = Time = 0
var(24) = 0

[State 50, 2]
type = varset
trigger1 = Time = 0
var(15) = 0
[State 105, Flash]
type = Explod
trigger1 = (time%4) = 1
ID = 2223
anim = 2223
postype = P1
pos = 30,-80
bindtime = 1
vel = -2.2
ownpal = 1
random = 18,80
removetime = -2
sprpriority = 2
scale = .45,.16
removeongethit = 1
ignorehitpause = 1





[State 100, 3]
type = velset
trigger1 = Time = 0
x = -7


[State 100, 3]
type = velset
trigger1 = Time = 0
trigger1 = vel y > 0
y = 0

[State 100, 3]
type = velmul
trigger1 = Time < 5
trigger1 = vel y < 0
y = 0.8

[State 100, 3]
type = velset
trigger1 = Time = 5
trigger1 = vel y < 0
y = 0

[State -3]
type = varadd
trigger1 = Time = 0
var(11) = 1

[State -3]
type = varset
trigger1 = Time = 0
fvar(23) = 12






[State 100, 3]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 1



[Statedef 123]
type = A
movetype = I
physics = N
anim = 40
velset = 0,0
ctrl = 0

[state 50, playsnd]
type = playsnd
trigger1=animtime = 0
value = s0,2
channel = 0
[State 123, Explod]
type = Explod
trigger1 = !animtime
anim = 2222
postype = p1
pos = 0,30
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 3
scale = .3,.4
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 123,1 ]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 123,2 ]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 123,3 ]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 123,4 ]
type = VelSet
trigger1 = animtime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)*1.4


[State 123,5 ]
type = ChangeState
trigger1 = animtime = 0
value = 124
ctrl = 1

[Statedef 124]
type    = A
physics = A
ctrl = 1

[State 0, ]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 0, ]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

[State 0, ]
type = VelAdd
triggerall = Vel X >= -2
trigger1 = command = "holdback"
x = -0.1

[State 0, ]
type = VelAdd
triggerall = Vel X <= 2.5
trigger1 = command = "holdfwd"
x = 0.25

[State 0, ]
type = VelSet
trigger1 = Anim = 42
trigger1 = Time = [0,5]
x = 4

[State 0, ]
type = VelSet
trigger1 = Anim = 43
trigger1 = Time = [0,5]
x = -3.5



[Statedef 120]
type = U
physics = U
[State 120, Vel]
type = velset
trigger1 = !time && statetype != A
x = 0
y = 0
[State 120, Anim]
type = changeanim
trigger1 = !time
value = 120 + (statetype = C) + (statetype = A) * 2
[State 120, Type]
type = statetypeset
trigger1 = !time && statetype = S
physics = S
[State 120, Type]
type = statetypeset
trigger1 = !time && statetype = C
physics = C
[State 120, Type]
type = statetypeset
trigger1 = !time && statetype = A
physics = A
[State 120, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 120, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S
[State AI fix]
type = ctrlset
trigger1 = AIlevel && numenemy
value = (enemynear, time >= 120 || time >= 180)
[State 120, End]
type = changestate
trigger1 = !animtime || AIlevel
value = 130 + (statetype = C) + (statetype = A) * 2
[State 120, Stop]
type = changestate
trigger1 = (!AIlevel && command != "holdback")
trigger2 = !inguarddist
trigger3 = AIlevel && numenemy
trigger3 = enemynear, hitdefattr = SCA, AT
value = 140



[Statedef 130]
type = S
physics = S

[State 130, Anim]
type = changeanim
trigger1 = anim != 130
value = 130

[State AI fix]
type = ctrlset
trigger1 = AIlevel && numenemy
value = (enemynear, time >= 120 || time >= 180)

[State 130, High to Low]
type = changestate
trigger1 = !AIlevel && command = "holddown"
trigger2 = AIlevel && random < (550 * (AIlevel ** 2 / 64.0))
trigger2 = (enemynear, movetype = A) && (enemynear, statetype = C)
value = 131

[State 130, Stop Guarding]
type = changestate
trigger1 = (!AIlevel && command != "holdback")
trigger2 = !inguarddist
trigger3 = AIlevel && numenemy
trigger3 = enemynear, hitdefattr = SCA, AT
trigger4 = AIlevel && NumEnemy
trigger4 = Enemynear,name = "Ryu" && Enemynear,authorname = "Phantom.of.the.Server" && (P2StateNo=3020 || Enemynear,NumHelper(3025))
trigger5 = AIlevel && NumEnemy
trigger5 = (Life < 100 && (Enemynear,hitdefattr = SCA, SP,HP,SA,HA || Enemynear,NumHelper || Enemynear,NumProj))
value = 140

[State 130, Snd]
type = playsnd
trigger1 = !time
trigger1 = prevstateno = 132 || (prevstateno = [154, 155])
value = 0, 52

[State 130, Dust]
type = explod
trigger1 = !time
trigger1 = prevstateno = 132 || (prevstateno = [154, 155])
anim = 7102
ID = 7102
sprpriority = -2
postype = p1
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1


[Statedef 131]
type = C
physics = C
[State 131, Anim]
type = changeanim
trigger1 = anim != 131
value = 131
[State AI fix]
type = ctrlset
trigger1 = AIlevel && numenemy
value = (enemynear, time >= 120 || time >= 180)
[State 131, Low to High]
type = changestate
trigger1 = !AIlevel && command != "holddown"
trigger2 = AIlevel && random < (525 * (AIlevel ** 2 / 64.0))
trigger2 = (enemynear, movetype = A) && (enemynear, statetype != C)
value = 130

[State 131, Stop Guarding]
type = changestate
trigger1 = (!AIlevel && command != "holdback")
trigger2 = !inguarddist
trigger3 = AIlevel && numenemy
trigger3 = enemynear, hitdefattr = SCA, AT
trigger4 = AIlevel && NumEnemy
trigger4 = Enemynear,name = "Ryu" && Enemynear,authorname = "Phantom.of.the.Server" && (P2StateNo=3020 || Enemynear,NumHelper(3025))
trigger5 = AIlevel && NumEnemy
trigger5 = (Life < 100 && (Enemynear,hitdefattr = SCA, SP,HP,SA,HA || Enemynear,NumHelper || Enemynear,NumProj))
value = 140



[Statedef 132]
type = A
physics = N
[State 132, Anim]
type = changeanim
trigger1 = anim != 132
value = 132
[State 132, Accel]
type = veladd
trigger1 = 1
y = const(movement.yaccel)
[State 132, Var]
type = varset
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)
[State 132, Vel]
type = velset
trigger1 = sysvar(0)
y = 0
[State 132, Pos]
type = posset
trigger1 = sysvar(0)
y = 0
[State AI fix]
type = ctrlset
trigger1 = AIlevel && numenemy
value = (enemynear, time >= 120 || time >= 180)
[State 132, End]
type = changestate
trigger1 = sysvar(0) && inguarddist
trigger1 = (!AIlevel && command = "holdback") || AIlevel
value = 130
[State 132, End]
type = changestate
trigger1 = sysvar(0)
value = 52

[State 132, stop guarding]
type = changestate
trigger1 = (!AIlevel && command != "holdback")
trigger2 = !inguarddist
trigger3 = AIlevel && numenemy
trigger3 = enemynear, hitdefattr = SCA, AT
trigger4 = AIlevel && NumEnemy
trigger4 = (Life < 100 && (Enemynear,hitdefattr = SCA, SP,HP,SA,HA || Enemynear,NumHelper || Enemynear,NumProj))
value = 140



[Statedef 140]
type = U
physics = U
ctrl = 1
[State 140, Anim]
type = changeanim
trigger1 = !time
value = 140 + (statetype = C) + (statetype = A) * 2
[State 140, Type]
type = statetypeset
trigger1 = !time && statetype = S
physics = S
[State 140, Type]
type = statetypeset
trigger1 = !time && statetype = C
physics = C
[State 140, Type]
type = statetypeset
trigger1 = !time && statetype = A
physics = A
[State 140, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 140, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S
[State 140, 5]
type = changestate
trigger1 = !animtime
value = (statetype = C) * 11 + (statetype = A) * 51


[Statedef 150]
type = S
movetype = H
physics = N
velset = 0, 0
[State 150, Anim]
type = changeanim
trigger1 = 1
value = 150
[State 150, End]
type = changestate
trigger1 = hitshakeover
value = 151 + 2 * ((!AIlevel && command = "holddown") || (AIlevel && (enemynear, movetype = A) && (enemynear, statetype = C)))
[State 150, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 150, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S


[Statedef 151]
type = S
movetype = H
physics = S
anim = 150
[State 151, Vel]
type = hitvelset
trigger1 = !time
x = 1
[State 151, Vel]
type = velset
trigger1 = time = gethitvar(slidetime)
trigger2 = hitover
x = 0
[State 151, Ctrl]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1
[State 151, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && random < (550 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 151, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && random < (525 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S
[State 151, End]
type = changestate
trigger1 = hitover
value = 130
ctrl = 1


[Statedef 152]
type = C
movetype = H
physics = N
velset = 0, 0
[State 152, Anim]
type = changeanim
trigger1 = 1
value = 151
[State 152, End]
type = changestate
trigger1 = hitshakeover
value = 151 + 2 * ((!AIlevel && command = "holddown") || (AIlevel && (enemynear, movetype = A) && (enemynear, statetype = C)))
[State 152, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && random < (550 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 152, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && random < (525 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S


[Statedef 153]
type = C
movetype = H
physics = C
anim = 151
[State 153, Vel]
type = hitvelset
trigger1 = !time
x = 1
[State 153, Vel]
type = velset
trigger1 = time = gethitvar(slidetime)
trigger2 = hitover
x = 0
[State 153, Ctrl]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1
[State 153, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = S && (enemynear, movetype = A) && (enemynear, statetype = C)
statetype = C
physics = C
[State 153, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = statetype = C && (enemynear, movetype = A) && (enemynear, statetype != C)
statetype = S
physics = S
[State 153, End]
type = changestate
trigger1 = hitover
value = 131
ctrl = 1


[Statedef 154]
type = A
movetype = H
physics = N
velset = 0, 0
[State 154, Anim]
type = changeanim
trigger1 = 1
value = 152
[State 154, End]
type = changestate
trigger1 = hitshakeover
value = 155


[Statedef 155]
type = A
movetype = H
physics = N
anim = 152
[State 155, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1
[State 155, Vel]
type = veladd
trigger1 = 1
y = const(movement.yaccel)
[State 155, Ctrl]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1
[State 155, Var]
type = varset
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)
[State 155, Vel]
type = velset
trigger1 = sysvar(0)
y = 0
[State 155, Pos]
type = posset
trigger1 = sysvar(0)
y = 0
[State 155, End]
type = changestate
trigger1 = sysvar(0) && inguarddist
trigger1 = (!AIlevel && command = "holdback") || AIlevel
value = 130
[State 155, End]
type = changestate
trigger1 = sysvar(0)
value = 52



[Statedef 5130]
type = S
movetype = H
physics = S
anim = 5130
[State 5130, NHB]
type = nothitby
trigger1 = !alive
value = SCA
[State 5130, Pos]
type = posset
trigger1 = 1
y = 0
[State 5130, End]
type = changestate
trigger1 = !animtime
value = 5131

[Statedef 5131]
type = L
movetype = H
physics = C
anim = 5131
[State 5131, NHB]
type = nothitby
trigger1 = !alive
value = SCA
[State 5131, Pos]
type = posset
trigger1 = 1
y = 0
[State 5131, posfix]
type = posadd
trigger1 = animelem = 4 || animelem = 5
x = ifelse((animelem = 4), -12, -24)
[State 5131, Snd]
type = playsnd
trigger1 = !time
trigger2 = animelem = 5
value = 0, 52
[State 5131, Dust]
type = explod
trigger1 = !time
anim = 7104
ID = 7104
sprpriority = -4
postype = p1
pos = -7, 0
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1
[State 5131, Dust]
type = explod
trigger1 = animelem = 5
anim = 7102
ID = 7102
sprpriority = -5
postype = p1
scale = 0.75, 0.75
ownpal = 1
pausemovetime = -1
supermovetime = -1
[State 5131, End]
type = changestate
trigger1 = !animtime
value = ifelse(alive, 5110, 5150)




[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1




[Statedef 180]
type = S

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
value = 181




[Statedef 181]
type = S
ctrl = 0
anim = 180
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S3150,3

channel = -1









[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1




[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 190, 1]
type = Changestate
triggerall = P2name = "Cell" = 0
triggerall = P4name = "Cell" = 0
triggerall = P2name = "Frieza" = 0
triggerall = P4name = "Frieza" = 0
triggerall = P2name = "Buu" = 0
triggerall = P4name = "Buu" = 0
triggerall = P2name = "Broly" = 0
triggerall = P4name = "Broly" = 0
triggerall = P2name = "MajinBuu" = 0
triggerall = P4name = "MajinBuu" = 0
trigger1 = time=0
value = 191

[State 190, 1]
type = Changestate
triggerall = P2name = "Piccolo" = 0
triggerall = P4name = "Piccolo" = 0
triggerall = P2name = "Krillin" = 0
triggerall = P4name = "Krillin" = 0
triggerall = P2name = "Songoku" = 0
triggerall = P4name = "Songoku" = 0
triggerall = P2name = "Trunks" = 0
triggerall = P4name = "Trunks" = 0
triggerall = P2name = "Vegeta" = 0
triggerall = P4name = "Vegeta" = 0
triggerall = P2name = "SonGohan" = 0
triggerall = P4name = "SonGohan" = 0
triggerall = P2name = "Gohan" = 0
triggerall = P4name = "Gohan" = 0
trigger1 = time=0
value = 192

[State 190, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, bukuujutsu]
type = PlaySnd
trigger1 = Time = 35
value = 2100,1

[State 191, land]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,2

[State 191, voice]
type = PlaySnd
trigger1 = AnimElem = 13
triggerall = P2name = "Piccolo" = 0
triggerall = P4name = "Piccolo" = 0
triggerall = P2name = "Krillin" = 0
triggerall = P4name = "Krillin" = 0
triggerall = P2name = "Songoku" = 0
triggerall = P4name = "Songoku" = 0
triggerall = P2name = "Trunks" = 0
triggerall = P4name = "Trunks" = 0
triggerall = P2name = "Vegeta" = 0
triggerall = P4name = "Vegeta" = 0
triggerall = P2name = "SonGohan" = 0
triggerall = P4name = "SonGohan" = 0
triggerall = P2name = "Gohan" = 0
triggerall = P4name = "Gohan" = 0
value = 2200, 1
volume = 255

[State 191, voicevspiccolo]
type = PlaySnd
triggerall =  AnimElem = 13
trigger1 = P2name = "Piccolo"
trigger2 = P4name = "Piccolo"
value = 2200, 0
volume = 255


[State 191, voicevskrillin]
type = PlaySnd
triggerall =  AnimElem = 13
trigger1 = P2name = "Krillin"
trigger2 = P4name = "Krillin"
value = 2200, 0
volume = 255

[State 191, voicevsfrieza]
type = PlaySnd
triggerall =  AnimElem = 13
trigger1 = P2name = "Frieza"
trigger2 = P4name = "Frieza"
value = 191,0
volume = 255

[State 191, voicevssongoku]
type = PlaySnd
triggerall =  AnimElem = 13
trigger1 = P2name = "Songoku"
trigger2 = P4name = "Songoku"
value = 191,4
volume = 255

[State 191, voicevstrunks]
type = PlaySnd
triggerall =  AnimElem = 2
trigger1 = P2name = "Trunks"
trigger2 = P4name = "Trunks"
value = 2200, 0
volume = 255


[State 191, landdust1]
type = explod
trigger1 = time = 42
postype = p1
pos = 6,0
spacing = 1
anim = 193
ownpal = 1
scale = 1.16, 1.16
sprpriority = 4
removetime = 19

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 38
time = 18
ampl = 4

[State 191, landdust1]
type = explod
trigger1 = AnimElem = 2
postype = p1
pos = -46,0
spacing = 1
anim = 4010
ownpal = 1
scale = .5, .5
sprpriority = 4

[State 191, landdust2]
type = explod
trigger1 = AnimElem = 2
postype = p1
pos = 0,0
facing = -1
spacing = 1
anim = 4010
ownpal = 1
scale = .5, .5
sprpriority = 4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S4001,0
volume = 999

[State 191, 1]
type = ChangeAnim
trigger1 = RoundState = 0
value = 191

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0



[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 191, bukuujutsu]
type = PlaySnd
trigger1 = Time = 35
value = 2100,1

[State 191, land]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,2




[State 191, landdust1]
type = explod
trigger1 = time = 42
postype = p1
pos = 6,0
spacing = 1
anim = 193
ownpal = 1
scale = 1.16, 1.16
sprpriority = 4
removetime = 19

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 38
time = 18
ampl = 4

[State 191, landdust1]
type = explod
trigger1 = AnimElem = 2
postype = p1
pos = -46,0
spacing = 1
anim = 4010
ownpal = 1
scale = .5, .5
sprpriority = 4

[State 191, landdust2]
type = explod
trigger1 = AnimElem = 2
postype = p1
pos = 0,0
facing = -1
spacing = 1
anim = 4010
ownpal = 1
scale = .5, .5
sprpriority = 4

[State 191, voice]
type = PlaySnd
trigger1 = AnimElem = 13
triggerall = P2name = "Piccolo" = 0
triggerall = P4name = "Piccolo" = 0
triggerall = P2name = "Krillin" = 0
triggerall = P4name = "Krillin" = 0
triggerall = P2name = "Songoku" = 0
triggerall = P4name = "Songoku" = 0
triggerall = P2name = "Trunks" = 0
triggerall = P4name = "Trunks" = 0
triggerall = P2name = "Vegeta" = 0
triggerall = P4name = "Vegeta" = 0
triggerall = P2name = "SonGohan" = 0
triggerall = P4name = "SonGohan" = 0
triggerall = P2name = "Gohan" = 0
triggerall = P4name = "Gohan" = 0
value = 2200, 1
volume = 255

[State 191, voicevspiccolo]
type = PlaySnd
triggerall =  AnimElem = 13
trigger1 = P2name = "Piccolo"
trigger2 = P4name = "Piccolo"
value = 2200, 0
volume = 255


[State 191, voicevskrillin]
type = PlaySnd
triggerall =  AnimElem = 13
trigger1 = P2name = "Krillin"
trigger2 = P4name = "Krillin"
value = 2200, 0
volume = 255

[State 191, voicevsfrieza]
type = PlaySnd
triggerall =  AnimElem = 13
trigger1 = P2name = "Frieza"
trigger2 = P4name = "Frieza"
value = 191,0
volume = 255

[State 191, voicevssongoku]
type = PlaySnd
triggerall =  AnimElem = 13
trigger1 = P2name = "Songoku"
trigger2 = P4name = "Songoku"
value = 191,4
volume = 255

[State 191, voicevstrunks]
type = PlaySnd
triggerall =  AnimElem = 2
trigger1 = P2name = "Trunks"
trigger2 = P4name = "Trunks"
value = 2200, 0
volume = 255

[State 191, 1]
type = ChangeAnim
trigger1 = RoundState = 0
value = 191

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0




[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1







[Statedef 5050]
type    = A
movetype= H
physics = N

[State 5050, 1]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090
value = 5050

[State 5050, 2]
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 4]
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200

[State 5050, 5]
type = ChangeState
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5100



[Statedef 5100]
type    = L
movetype= H
physics = N

[State 5100, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var]
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 5100, 2]
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5100, 3]
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6]
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110

[State 5100, Explod]
type = Explod
trigger1 = Time = 0
anim = 6003
ID = 6003
pos = 0,0
facing = 1
bindtime = 1
removetime = -2
scale = .7,.7
sprpriority = -3
ownpal = 1
ignorehitpause = 1

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 0
value = S5100,0

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 5101

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20


[Statedef 5110]
type    = L
movetype= H
physics = N

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1]
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5110, 2]
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119]
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 5110, 3]
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119]
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, Var]
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = S5100,1

[State 5110, Explod]
type = Explod
trigger1 = Time = 0
trigger1 = !SysVar(0)
anim = 6004
ID = 6004
pos = 0,0
facing = 1
bindtime =1
removetime = -2
scale = 1,1
sprpriority = -3
ownpal = 1
ignorehitpause = 1

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9]
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0)
value = 5110 + (anim % 10)

[State 5110, 10]
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0)
value = 5110

[State 5110, 11]
type = ChangeState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0)
trigger3 = Anim = [5110,5119]
value = 5150

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13]
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 15]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

[Statedef 5200]
type = A
movetype = H
physics = N
[State 5200, Anim]
type = changeanim
trigger1 = anim = 5035 && !animtime
value = 5050
[State 5200, Vel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)
[State 5200, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= -10
value = 5201

[Statedef 5201]
type = S
movetype = I
physics = N
anim = 5200
ctrl = 0
facep2 = 1

[State 5201, Pos]
type = posset
trigger1 = 1
y = 0
[State 5201, Vel]
type = velset
trigger1 = !time
x = -8
y = 0
[State 5201, Vel]
type = velmul
trigger1 = 1
x = 0.9

[State 5201, Snd]
type = playsnd
trigger1 = animelem = 1
value = 3 + (var(1) = 2) * 10, 0
channel = 0
[State 5201, Flash]
type = palfx
trigger1 = !time
add = 255, 255, 255
sinadd = -255, -255, -255, 40
time = 10

[State 5201, Dust]
type = playsnd
trigger1 = !time
value = 0, 101
[State 5201, Dust]
type = explod
trigger1 = !(time % 6) && abs(vel x) >= 1
anim = 7103
sprpriority = 3
postype = p1
pos = 0, 0
vel = 1, 0
scale = 1, 1
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 5201, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1
[State 5201, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


[Statedef 5210]
type = A
movetype = I
physics = N
anim = 5210
ctrl = 0

[State 5210, Snd]
type = playsnd
trigger1 = animelem = 1
value = 3 + (var(1) = 2) * 10, 3 * (var(1) = 2)
channel = 0

[State 5210, Flash]
type = palfx
trigger1 = !time
add = 255, 255, 255
sinadd = -255, -255, -255, 40
time = 10

[State 5210, Accel]
type = veladd
trigger1 = 1
y = 0.6

[State 5210, Vel]
type = velset
trigger1 = !time
x = ifelse((command = "holdfwd" && command != "holdback"), 4, ifelse((command != "holdfwd" && command = "holdback"), -4, 0))
y = -7.55

[State 5210, Turn]
type = turn
trigger1 = !time
trigger1 = p2dist x < 0

[State 5210, NHB]
type = nothitby
trigger1 = time < 14
value = SCA
time = 1

[State 5210, Ctrl]
type = ctrlset
trigger1 = time >= 14
value = 1

[State 5210, Land]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52



[Statedef 5205]
type = A
physics = N
movetype = H

[State 5205, Anim]
type = changeanim
trigger1 = !animtime
trigger1 = anim = 5035
value = 5050

[State 5205, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[State 5205, Ground]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 5205, Air]
type = selfstate
trigger1 = time >= 60
value = 5210


[Statedef 5150]
type = L
movetype = H
physics = N
sprpriority = -3

[State 5150, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5150

[State 5150, Anim]
type = ChangeAnim
triggerall = Anim != 171
triggerall = (Roundstate = 2 || MatchOver) && !(TeamMode = Turns)
triggerall = NumEnemy
trigger1 = Enemy, AuthorName = "Phantom.of.the.Server&Jmorphman" && Enemy, Name = "Ken Masters"
trigger1 = Enemy, Anim = 184 && (Enemy, var(40) != 1)
value = 171

[State 5150, SprPriority]
type = SprPriority
trigger1= Anim = 171
value = 3

[State 5150, VelMul]
type = VelMul
trigger1 = 1
x= 0.85

[State 5150, VelSet]
type = VelSet
trigger1 = abs(vel x) < 0.05
x = 0

[State 5150, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[Statedef 5900]
type = S
[State 5900, varreset]
type = varrangeset
trigger1 = !roundsexisted
value = 0
[State 5900, varreset]
type = varrangeset
trigger1 = !roundsexisted
fvalue = 0

[State 5900, Palette]
type = remappal
trigger1 = 1
source = 1, 1
dest = 1, palno

[State 5900, End]
type = changestate
trigger1 = !time
value = ifelse(roundno = 1, 190, 0)


[Statedef 7827]
type = S
movetype = I
physics = N
velset = 0,0
ctrl = 0
facep2=1

[State 0, ScreenBound]
type = ScreenBound
trigger1 =1
value =0
ignorehitpause =1
[State 7827]
type = PosSet
trigger1=!time
y = 0
ignorehitpause=1
[State 7827]
type = ChangeState
trigger1 = NumEnemy = [1,2]
trigger1 = Enemy(0),statetype = L || Enemy(0),movetype != H
value = 7828
[State 7827]
type = ChangeState
trigger1 = NumEnemy = 2
trigger1 = Enemy(1),statetype = L || Enemy(1),movetype != H
value = 7828

[Statedef 7828]
type    = S
physics = S
anim = 100
ctrl = 0
facep2=1

[State 7828, FX]
type = Explod
trigger1 = (time%2) = 1
ID = 2221
anim = 2221
postype = p1
facing = 1
vfacing = 1
pos = -26,-55
bindtime = 1
removetime = 6
ontop = 1
vel = 0,0
ownpal = 1
random = 30,70
sprpriority = 3
scale = .4,.14
removeongethit = 1
ignorehitpause = 1
persistent = 1
[State 7828, SND]
type = playsnd
trigger1 = (animelem = 3 || animelem = 6)
value = 0, 100

[State 7828]
type = PosSet
trigger1 = !Time
y = 0
ignorehitpause=1
[State 7828]
type = VelSet
trigger1 = AnimElem = 1
x = 7
ignorehitpause=1
[State 7828]
type = VelSet
trigger1 = AnimElemNo(0) = [1,2]
x = 9
ignorehitpause=1
[State 7828]
type = AssertSpecial
trigger1 = 1
flag = NoWalk
ignorehitpause=1
[State 7828]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn
ignorehitpause=1

[State 7828]
type = ChangeState
trigger1= time>=20
value = 7829
ctrl = 0

[Statedef 7829]
type    = S
physics = S
anim = 101
ctrl = 0

[State 0, VelMul]
type = VelMul
trigger1 =time=2
x = .5
[State 0,Dust]
type = MakeDust
trigger1=time%6
pos = 30, 0

[State 7829, SND]
type = playsnd
trigger1 =!time
value = 0, 101
persistent = 0
[State 7829,END]
type = ChangeState
trigger1=!animtime
value = 0
ctrl = 1


[Statedef 88887]
type    = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = Ifelse(var(1),88885,88887)
poweradd = 0
sprpriority = 1

[State 999, flash]
type = palfx
trigger1 = 1
time = 1
add =70+ceil(sin(time/8.0*pi)*70),20+ceil(sin(time/8.0*pi)*20),0

[State 6070, Charge]
type=Helper
trigger1=!NumHelper(8885)
trigger1=animelemTime(3)=1
id=8885
name="Charge"
pos=0,5
postype=P1
stateno=8885
helpertype=normal
keyctrl=0
ownpal=1
ignorehitpause=1
pausemovetime=99999999
supermovetime=99999999
size.xscale=1
size.yscale=1

[State 0, Helper]
type = Helper
trigger1 = time = 9
helpertype = normal
name = "Particel"
ID = 2220
stateno = 2022
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 11
value = 3 + (var(1) = 1) * 10, 5 + (var(1) = 1)
channel = 20
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 9
value = S7,4
channel = 21

[State 0, PowerAdd]
type = PowerAdd
trigger1 = time >= 9
value = 2+floor((time/10))
[State 88887, State]
type=ChangeState
triggerall = !AILevel
trigger1=Command!="holdy"&&Command!="holdb"
trigger2=power>=3000
value=88888
ctrl=0

[State 88887, State]
type=ChangeState
triggerall=AILevel
trigger1=power>=3000
trigger2=p2bodydist x <155
trigger3=enemy,numproj
trigger4=p2bodydist x <175
trigger5=enemynear,movetype=A
trigger6=inguarddist
trigger7=inguarddist
trigger7=enemynear,stateno=5120
trigger8=inguarddist
trigger8=enemynear,stateno=5201
value=88888
ctrl=0

[Statedef 88888]
type    = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 88888
poweradd = 0
sprpriority = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 8886

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 8885

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 2
channel = 21

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 5
channel = 20

[State 200, 5]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

[Statedef 100000]
type = A
physics = N
anim = 104
ctrl = 0

[State 905, Explod]
type = Explod
trigger1 = (time%4) = 1
ID = 2221
anim = 2221
postype = p1
facing = 1
vfacing = 1
pos = -19,-63
bindtime = 1
removetime = 6
ontop = 1
vel = 0,0
ownpal = 1
random = 19,63
sprpriority = 3
scale = .32,.15
supermovetime = 999
pausemovetime = 999
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 100, 1]
type = VelSet
trigger1 = 1
x = 7
y = 0

[State 100, 1]
type = VelSet
trigger1 = time = 11
x = -2
y = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 4
value = S0,3

[State 100, assert]
type = AssertSpecial
trigger1 = time = [1,14]
flag = NoAirguard

[State 940, ChangeState]
type = ChangeState
trigger1 = Time = 15
value = 100002
ctrl = 0


[Statedef 100001]
type = A
physics = N
anim = 104
ctrl = 0

[State 907, Explod]
type = Explod
trigger1 = (time%4) = 1
ID = 2223
anim = 2223
postype = p1
facing = 1
vfacing = 1
pos = 21,-63
bindtime = 1
removetime = 6
ontop = 1
vel = 0,0
ownpal = 1
random = 21,63
sprpriority = 3
scale = .31,.16
supermovetime = 999
pausemovetime = 999
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 100, 1]
type = VelSet
trigger1 = 1
x = -7
y = 0

[State 100, 1]
type = VelSet
trigger1 = time = 11
x = 2
y = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 4
value = S0,3

[State 100, assert]
type = AssertSpecial
trigger1 = time = [1,14]
flag = NoAirguard

[State 940, ChangeState]
type = ChangeState
trigger1 = Time = 15
value = 100002
ctrl = 0


[Statedef 100002]
type    = A
physics = A

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3





[Statedef -2]

;  --- Uno Tag System v3.2.2 STATEDEF -2 ---

[State -2, deactivate tag]
type = VarSet
triggerall = NumPartner
triggerall = sysvar(4) > 0
triggerall = sysvar(4) != 6
trigger1 = roundstate > 2
trigger1 = Win || Lose
trigger2 = Roundstate < 1
trigger2 = teammode = Simul
trigger2 = !Partner, sysvar(4)
trigger2 = Time = [1,2]
trigger3 = Partner, sysvar(4)
trigger3 = !Life
sysvar(4) = 0

[State -2, def]
type = VarSet
triggerall = NumPartner
trigger1 = Partner, StateNo != [1251110,1251114]
trigger1 = sysvar(4) = 10
trigger2 = prevStateNo = 1251116
sysvar(4) = 15

[State -2, Uno]
type = null ;ParentVarSet
trigger1 = PrevStateNo = 1251106
sysvar(4) = 7

[State -2, qc_def]
type = VarSet
triggerall = sysvar(4) != 12
trigger1 = Numhelper(1251105)
;trigger2 = Partner, Stateno = 1251102
sysvar(4) = 12

[State -2, Eksena]
type = ScreenBound
trigger1 = NumPartner && Partner, sysvar(4) = 4
trigger1 = StateNo = 1251131 || prevStateNo = 1251131
value = 1
movecamera = 1,1

[State -2, no_throw]
type = NotHitBy
triggerall = NumPartner
triggerall = StateNo != 1251114
trigger1 = sysvar(4) = [8,9]
trigger2 = sysvar(4) = 12
value = , AT

[State -2, def]
type = VarSet
triggerall = NumPartner && sysvar(4) != 9
triggerall = Partner, Time = [0,1]
trigger1 = Partner, StateNo = 1251104
trigger2 = Partner, StateNo = 1251110
trigger2 = StateNo != [1251101,1251133]
sysvar(4) = 1

[State -2, pa_qcError]
type = VarSet
triggerall = NumPartner && sysvar(4) = [8,9]
trigger1 = Partner, StateNo = [1251112,1251114]
trigger1 = StateNo = 0
sysvar(4) = 1
ctrl = 1

[State -2, GTG]
type = ChangeState
triggerall = Roundstate = 2 && Alive
triggerall = sysvar(4) = 12
trigger1 = StateNo != [1251101,1251133]
trigger1 = MoveType = I || (StateNo = 5120 && AnimTime < 2)
trigger1 = StateType != A
value = 1251109

[State -2, Oh No!]
type = SelfState
triggerall = sysvar(4) != [8,9]
triggerall = sysvar(4) != [12,15]
trigger1 = prevStateNo = 1251114
trigger1 = !(StateNo = [1251101,1251133])
value = 1251114
ctrl = 0

[State -2, PowerReset]
type = poweradd
trigger1 = sysvar(4) = 5
trigger1 = RoundNo < 2
trigger1 = RoundState < 2
trigger1 = Time = 0
value = -Power
persistent = 0

[State -2, PowerAdd]
type = poweradd
trigger1 = sysvar(4) = 5 && power < 900
trigger1 = RoundNo < 2
trigger1 = RoundState < 2
trigger1 = Time = 1
value = 1000
persistent = 0

[State -2, prior]
type = SprPriority
trigger1 = NumPartner && Partner, sysvar(4) = 2
trigger2 = (sysvar(4) = [8,9]) && StateNo != [1251110,1251111]
value = 5

[State -2, err]
type = ChangeState
trigger1 = NumPartner && ID > Partner, ID
trigger1 = roundstate = 2 && sysvar(4)
trigger1 = StateNo = 0 && pos Y < 0
value = 1251114

; Tag active ctrl
[State -2, ctrl]
type = SelfState
trigger1 = TeamMode = Simul
trigger1 = Partner, sysvar(4)
trigger1 = NumPartner
trigger1 = !sysvar(4)
trigger1 = sysvar(4) != [8,9]
trigger1 = sysvar(4) != 12
trigger1 = StateNo != 5900
trigger1 = Partner, sysvar(4) != [2,15]
trigger1 = RoundState = 2
trigger1 = Life && Partner, Life
trigger1 = StateNo != [1000,1251199]
value = 1251114
ctrl = 0

[State -2, 1]
type = SelfState
value = 1251106
trigger1 = NumPartner
trigger1 = StateNo != 1251106 && Partner, StateNo = [1251128,1251129]

[State -2, 1]
type = SelfState
value = 1251131
triggerall = NumPartner && Partner, Time = [0,1]
triggerall = (StateNo = 1251112 || StateNo = 1251114) && MoveType != A
trigger1 = Partner, StateNo = 1251132 || Partner, prevStateNo = 1251132
trigger2 = Partner, StateNo = 1251127 && !NumHelper(1251101)

[State -2, cancelfx]
type = PalFx
triggerall = Time = [0,1]
trigger1 = StateNo = 1251123
trigger2 = StateNo = 1251125 && NumTarget
Time = 6
add = (110 + Time*15), (110 + Time*15), (190 + Time*15)
sinadd =-245, -245, -250, (40 + Time*5)

[State -2, drop]
type = TargetDrop
triggerall = NumTarget
triggerall = Time = [0,1]
trigger1 = !Life
trigger2 = StateNo = [1251101,1251105]
trigger3 = StateNo = 1251106
trigger4 = StateNo = [1251115,1251116]

[State -2, Ov]
type = TargetState
triggerall = NumTarget  && NumPartner
triggerall = !(Target, StateNo = [120,152]) && !(Target, Anim = [120,152]) && Partner, StateNo = [1251101,1251133]
triggerall = Time = [0,2]
trigger1 = StateNo = 1251125 && Target, StateType != A
trigger2 = (StateNo = 1251126 || PrevStateNo = 1251126) && Target, Pos Y >= -10 && (Target, StateNo != [1251109,1251119]) && (Target, StateNo != [5000,5500])
value = 1251117
ignorehitpause = 1

[State -2, Ov2]
type = TargetState
triggerall = NumTarget
trigger1 = !(Target, StateNo = [120,152]) && !(Target, Anim = [120,152]) && ((Target, StateNo != [1251109,5500]) || (Target, StateNo != 5050 && Target, StateNo = [5030,5100]))
trigger1 = Target, Pos Y < -10
trigger1 = (StateNo = 1251125 && Time = [0,2])
value = 1251119
ignorehitpause = 1

[State -2, T_T]
type = TargetVelSet
triggerall = NumTarget = 1 && Target, Movetype = H && Target, vel x != 0
trigger1 = StateNo = 1251109 || sysvar(4) = 12
x = ifelse((Target, vel x > 0),0.72,-0.72)

[State -2, UM]
type = SelfState
trigger1 = Numpartner && Partner, StateNo = 1251106
trigger1 = StateNo = [1000,4500]
value = 1251129

; ------ Uno Tag System v3.2 END LINE ------

;


[State -2, Super Finish Detection]
type = VarSet
triggerAll = !(Enemy, Alive)
trigger1 = StateNo = 3120
var(11) = 1
ignoreHitPause = 1


[State -2, Hit Detection]
type = VarSet
trigger1 = MoveContact = 1 && var(30) < 0
trigger1 = (stateno!=[4000,4001])
var(30) = HitPauseTime
ignoreHitPause = 1

[State -2, Hit Sound]
type = PlaySnd
trigger1 = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveHit = 1 && var(31) >= 0
value = 2, var(31)
channel = 2
ignoreHitPause = 1

[State -2, Guard Sound]
type = PlaySnd
trigger1 = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveGuarded = 1 && var(32) >= 0
value = 2, var(32)
channel = 2
ignoreHitPause = 1


[State -2, Hit Detection]
type = VarSet
trigger1 = 1
var(30) = -1

[State -2, Hit Detection]
type = VarRangeSet
trigger1 = MoveType = I
trigger2 = MoveType = H && Time
first = 30
last = 36
value = -1
ignoreHitPause = 1

[State -2, P2 Facing]
type = targetfacing
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover) && !(target, hitfall) && (target, time <= 1)
value = ifelse(p2dist x >= 0, -1, 1)
ignorehitpause = 1

[State -2, P2 Safe Fall]
type = targetstate
trigger1 = numtarget = 1
trigger1 = target, command = "recovery"
trigger1 = target, pos y >= -48 && target, vel y > 0
trigger1 = target, alive && target, hitfall && target, gethitvar(fall.recover)
trigger1 = target, stateno = 5030 || target, stateno = 5035 || target, stateno = 5050 || target, stateno = 5071
value = 5205
ignorehitpause = 1

[State -2, Counter Flag]
type = varset
trigger1 = numenemy
var(29) = (enemynear, movetype = A)
ignorehitpause = 1

[State -2, Hit Count]
type = VarAdd
trigger1 = MoveHit = 1
trigger1 = !(HitDefAttr = SCA, AT)
var(13) = 1

[State -2, Hit Count Reset]
type = VarSet
trigger1 = NumEnemy && var(13)
trigger1 = (EnemyNear, MoveType != H) && (EnemyNear, StateNo != 5300)
var(13) = 0
ignoreHitPause = 1

[State -2, Wall Bounce Count]
type = VarAdd
trigger1 = MoveHit = 1 && Numtarget(1310)
var(14) = 1

[State -2, Wall Bounce Count Reset]
type = VarSet
trigger1 = NumEnemy && var(14)

trigger1 = (Enemy, StateType != A) && (Enemy, StateNo != [5100,5109]) && (Enemy, Time >= 1)
trigger2 = (Enemy, MoveType != H) || (Enemy, StateNo = [120,155]) || (Enemy, Ctrl)

var(14) = 0
ignoreHitPause = 1

[State -2, Throws Disallowed]
type = varset
triggerall = numenemy
trigger1 = enemynear, movetype != H
trigger1 = enemynear, stateno != 140
trigger1 = (enemynear, ctrl && enemynear, time >= 1) || (enemynear, time >= 8)
trigger2 = enemynear, movetype = A
trigger3 = (enemynear, stateno != [0, 52]) && (enemynear, stateno != [120, 155]) && (enemynear, stateno != [5000, 5120])
var(38) = 0
[State -2, Throws Disallowed]
type = varset
triggerall = numenemy
trigger1 = enemynear, stateno = [150, 155]
trigger2 = (enemynear, stateno = 51 || enemynear, stateno = 140) && (enemynear, prevstateno = [150, 155])
trigger3 = enemynear, movetype = H && enemynear, statetype != A && !var(20)
trigger4 = (enemynear, stateno = [5020, 5040]) && enemynear, hitfall = 0
trigger5 = enemynear, stateno = 40 && enemynear, prevstateno != 52 && (enemynear, anim != [0, 29])
var(38) = 1
ignorehitpause = 1

[State -2, Defence Levels]
type = lifeadd
trigger1 = var(1) = 2 || var(1) = 3
trigger1 = gethitvar(hitcount) = 1 && gethitvar(damage)
value = -ceil(ifelse(var(1) = 3, 0.25, 0.125) * gethitvar(damage))
kill = 0
ignorehitpause = 1
[State -2, Defence Levels]
type = defencemulset
trigger1 = var(1) = 2 || var(1) = 3
value = ifelse(var(1) = 3, 1.25, 1.125) * (const(data.fall.defence_mul) ** gethitvar(fallcount))
ignorehitpause = 1
[State -2, VarSet]
type = VarSet
trigger1 = stateno!= 52
trigger1 = !(stateno = [3000,4999])
var(23) = 0
ignorehitpause = 1

[State -2, Assert: nostandguard]
type = AssertSpecial
triggerall = stateno = 52
trigger1 = (anim = [1102,1104])
trigger2 = anim = 1208
trigger3 = anim = 3102
flag = nostandguard
flag2 = nocrouchguard
ignoreHitPause = 1

[State -2, OTG]
type= varset
trigger1= p2statetype=L
var(24)= 1
ignorehitpause=1

[State -2, OTG]
type= varset
trigger1= movecontact=1 && p2statetype!=L
trigger2= p2statetype!=A && p2statetype!=L
var(24)= 0
ignorehitpause=1

[State -2, Free Juggling]
type = assertspecial
trigger1 = var(20) > 0 || var(24) || numtarget(3120) || numtarget(3180)
trigger2 = roundstate != 2
flag = nojugglecheck
ignorehitpause = 1

[State -2, stopsnd3]
type = stopsnd
trigger1 = time <= 1
trigger1 = prevstateno = 3040
channel = 3
[State -2, stopsnd4]
type = stopsnd
trigger1 = time <= 1
trigger1 = prevstateno = 3040
channel = 4

[State -2, KO snd]
type = varset
trigger1 = alive && var(8) > 0
trigger2 = !alive && var(8) < 2
var(8) = ifelse(alive, 0, var(8) + 1)
ignorehitpause = 1
[State -2, KO snd]
type = playsnd
trigger1 = !alive && var(8) = 1
trigger1 = var(8) := 2
value = 11, ifelse((var(1) = 2), 2, 1) + 2 * (stateno = 5130)
ignorehitpause = 1

[State -2, PosAdd]
type = PosAdd
trigger1 = var(1) = 2
trigger1 = (stateno = [1000,3999]) && time = 1
trigger1 = prevstateno = 250
x = 10
ignorehitpause = 1
persistent = 0


[State -2, Voice Pos]
type = sndpan
trigger1 = 1
channel = 0
pan = 0
ignorehitpause = 1


[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = MoveType = H
trigger2 = StateNo = [0,49]
trigger3 = StateNo = [100,189]
trigger4 = StateNo = 195
trigger5 = StateNo = [200,799]
trigger6 = StateNo = [850,859]
trigger7 = StateNo = [900,1999]
trigger8 = winko
trigger9 = StateNo = [4500,99999]
id = 6035

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = MoveType = H
trigger2 = StateNo = [0,49]
trigger3 = StateNo = [100,155]
trigger4 = StateNo = 195
trigger5 = StateNo = [200,699]
trigger6 = StateNo = [750,859]
trigger7 = (StateNo = [900,1999])&&stateno!=1350&&stateno!=1400
trigger8 = winko
trigger9 = (StateNo = [4500,99999])&&stateno!=5982
time = 1


[State -2, AssertSpecial]
type = AssertSpecial
trigger1 = (stateno = [3000,4999])&&movetype!=H
flag = nobardisplay
flag2 = noBG
flag3 = noFG
ignorehitpause=1



[State -2, Damage based on hits]
type=varset
trigger1= numenemy
trigger1=enemynear,gethitvar(hitcount)
trigger1= (enemynear,movetype=H)
fvar(12)=1
ignorehitpause=1
[State -2, Reset var when the opponent recovers]
type=varset
triggerall=enemynear,hitover&&enemynear,hitshakeover&&enemynear,ctrl=1
trigger1= numenemy&&(enemynear,movetype!=H)
fvar(12)=0
ignorehitpause=1

[State -2, combo]
type=varset
triggerall=enemynear,hitover&&enemynear,hitshakeover
trigger1 = (enemynear,movetype!=H)
trigger1 = fvar(12)=0
fvar(13)=0
ignorehitpause=1
[State -2, combo]
type=varset
trigger1 = (stateno = [200,999])&&!Numtarget(1400)&&(enemynear,movetype=H)&&!moveguarded
fvar(13)=1
ignorehitpause=1
[State -2, combo]
type=varset
trigger1 = (stateno = [1000,2999])&&!Numtarget(1400)&&(enemynear,movetype=H)&&!moveguarded
fvar(13)=2
ignorehitpause=1
[State -2, combo]
type=varset
trigger1 = (stateno = [3000,4999])&&!Numtarget(1400)&&(enemynear,movetype=H)&&!moveguarded
fvar(13)=3
ignorehitpause=1
[State -2, combo]
type=varset
trigger1 = (stateno = [200,4999])&&Numtarget(1400)&&(enemynear,movetype=H)&&!moveguarded
fvar(13)=4
ignorehitpause=1

[State -2, reset]
type=varset
trigger1=fvar(12)=0
fvar(9)=0
ignorehitpause=1
[State -2, reset]
type=varset
trigger1 = ctrl=1
fvar(9)=1
ignorehitpause=1

[State -2, Juggler]
type=varset
trigger1 = (stateno = [200,4999])&&Numtarget(1400)&&fvar(12)!=0&&(enemynear,movetype=H)&&(fvar(13)=[0,4])
fvar(10)= .2
ignorehitpause=1
[State -2, Normal]
type=varset
trigger1 = (stateno = [200,999])&&!Numtarget(1400)&&fvar(12)!=0&&(enemynear,movetype=H)&&(fvar(13)=[0,1])
fvar(10)= ifelse((prevstateno=[3000,4999]),.3,ifelse((prevstateno=[1000,2999]),.4,ifelse((prevstateno=[200,999]),.8,1)))
ignorehitpause=1
[State -2, Special]
type=varset
trigger1 = (stateno = [1000,2999])&&!Numtarget(1400)&&fvar(12)!=0&&(enemynear,movetype=H)&&(fvar(13)=[0,2])
fvar(10)= ifelse((prevstateno=[3000,4999]),.4,ifelse((prevstateno=[200,999]),.5,1))
ignorehitpause=1
[State -2, Dampener For Supers]
type=varset
trigger1 = (stateno = [3000,4999])&&!Numtarget(1400)&&fvar(12)!=0&&(enemynear,movetype=H)&&(fvar(13)=[0,3])
fvar(10)= ifelse((prevstateno=[1000,2999]),.7,ifelse((prevstateno=[200,999]),.8,1))
ignorehitpause=1
[State -2, Juggler reset]
type=varset
trigger1=fvar(12)=0
trigger2=moveguarded
fvar(10)=1
ignorehitpause=1
[State -2, Dampener For Specials]
type=varset
trigger1=fvar(12)=0
fvar(11)=0
ignorehitpause=1
[State -2, Dampener For Specials]
type=varset
trigger1=fvar(9)=1&&(prevstateno = [1000,2999])&&fvar(10)=1&&fvar(12)!=0&&!moveguarded
fvar(11)=1
ignorehitpause=1
[State -2, Dampener For Supers]
type=varset
trigger1=fvar(9)=1&&(prevstateno = [3000,4999])&&fvar(10)=1&&fvar(12)!=0&&!moveguarded
fvar(11)=2
ignorehitpause=1
[State -2, Dampener For Supers]
type=varset
trigger1=fvar(9)=1&&(prevstateno != [1000,4999])&&fvar(10)=1&&fvar(12)!=0&&!moveguarded
fvar(11)=3
ignorehitpause=1

[State -2, Dampener For Specials]
type=varset
trigger1 = fvar(11)=1
fvar(10)=.3
ignorehitpause=1
[State -2, Dampener For Supers]
type=varset
trigger1 = fvar(11)=2
fvar(10)=.4
ignorehitpause=1
[State -2, Dampener For Specials]
type=varset
trigger1 = fvar(11)=3
fvar(10)=.5
ignorehitpause=1

[State -2, Dampener itself]
type=attackmulset
trigger1= 1
value=fvar(10)
ignorehitpause=1


[State -2, DEBUG]
trigger1 = 1
type = DisplayToClipboard
ignorehitpause = 1
text = "Dampener = %d hitcount = %d Frontedge =%d Backedge = %d"
params = fvar(10) , enemynear,gethitvar(hitcount) , frontedgebodydist , backedgebodydist
ignorehitpause=1



[Statedef -3]
;  --- Uno Tag System v3.2.2 STATEDEF -3 ---


; Tag active definer
[State -2, def]
type = VarSet
triggerall = NumPartner
trigger1 = sysvar(4) = [8,9]
trigger1 = !(Partner, Life) || (Partner, StateNo = [1251110,1251114])
trigger2 = Partner, StateNo = [1251110,1251114]
trigger2 = sysvar(4) != [2,15] 
trigger3 = sysvar(4) = 5
trigger3 = Roundstate = 2 && StateNo = [1251111,1251114]
trigger4 = sysvar(4) = 14
trigger4 = MoveType = H && Partner, StateNo = [1251101,1251133]
trigger5 = sysvar(4) = 15 && NumEnemy
trigger5 = EnemyNear, StateNo = [0,50]
sysvar(4) = 1

[State -2, def_Partner]
type = VarSet
triggerall = teammode = simul
trigger1 = roundstate < 1 
trigger1 = sysvar(4) != 12
sysvar(4) = 1 + ((ID > Partner, ID)*4)

[State -3, enterTheScreen]
type = ChangeState
trigger1 = sysvar(4)
trigger1 = NumPartner
trigger1 = StateNo = [1251112,1251114]	
trigger1 = Life 
trigger1 = (Partner, StateNo = [1251109,1251111]) || (Partner, StateNo = 1251125 && Partner, Time > 0)
value = ifelse((Partner, StateNo = 1251125),1251131,1251115)

; Jump into the screen (Game is OVER)
[State -3, enterTheScreen]
type = ChangeState
triggerall = sysvar(4)
triggerall = NumPartner
trigger1 = Alive
trigger1 = StateNo = [1251112,1251114]
trigger1 = Time > 0
trigger1 = roundstate > 2
trigger1 = Win || LoseTime || WinTime || drawgame
value = 1251120

[State -3, NoJC]
type = AssertSpecial
triggerall = NumPartner
trigger1 = Partner, sysvar(4) = 12
trigger2 = sysvar(4) = [8,9]
trigger3 = PrevStateNo = [1251112,1251133]
trigger4 = sysvar(4) = 15 && Partner, Time < 150
flag = nojugglecheck
ignorehitpause = 1

[State -3, RemoveExplod]
type = RemoveExplod
trigger1 = StateNo = [1251110,1251113]
trigger2 = !Life
trigger3 = StateNo = [1251126,1251127]
ignorehitpause = 1

[State -3, cancelfx2s_b]
type = PalFx
triggerall = RoundState = 2
trigger1 = Time = [0,3]
trigger1 = StateNo = 1251116
trigger2 = StateNo != 1251109 && NumHelper(1251105) && (Helper(1251105), Time = [2,35])
Time = ifelse(StateNo = 1251116,4,10)
add = (175 - Time), (125 - Time), (125 - Time)
mul = 245, 245, (125 + Time)

[State -3, cancelfx2s_a]
type = PalFx
triggerall = RoundState = 2
trigger1 = NumHelper(1251105) && (Helper(1251105), Time < 2)
trigger2 = NumPartner && (Partner, StateNo = 1251116) && (Partner, Time <= 12)
Time = 2
add = 256,256,256

[State -3, Quiet]
type = AssertSpecial
trigger1 = NumPartner
trigger1 = Partner, sysvar(4) = 7
trigger1 = !Alive && !NumHelper(1251130)
flag = nokosnd

[State -3, Dark]
type = AssertSpecial
triggerall = NumPartner
trigger1 = StateNo = 1251106
trigger2 = StateNo = 1251127 || Partner, StateNo = 1251127
trigger3 = NumHelper(1251101) && StateNo = 1251131 && Partner, StateNo != 1251125
flag = noBG
flag2 = noFG
flag3 = Timerfreeze
ignorehitpause = 1

[State -3, leavefx]
type = PalFx
trigger1 = StateNo = 1251111 
trigger2 = StateNo = 1251109
trigger3 = StateNo = 1251127
trigger4 = (sysvar(4) = [8,9]) && StateNo = 1251110 && Time > 12
trigger5 = StateNo = 1251110 && Time > 14
Time = 2
add = 0,0,0
mul = 150,150,150

[State -3, InvBG]
type = BGPalFx
trigger1 = NumHelper(1251130)
trigger2 = StateNo = 1251106
Time = 2
color = 0
add = -16 -ceil(cos(gameTime / 60.0 * pi) * 16), -16 -ceil(cos(gameTime / 60.0 * pi) * 16), -16 -ceil(cos(gameTime / 60.0 * pi) * 16)
ignorehitpause = 1

[State -3, InvChar]
type = PalFx
triggerall = NumEnemy
trigger1 = (Enemy, PrevStateNo = [1251128,1251129]) || (EnemyNear, PrevStateNo = [1251128,1251129])
trigger2 = Enemy, StateNo = 1251106 || EnemyNear, StateNo = 1251106
Time = 2
color = 0
add = -16 -ceil(cos(gameTime / 60.0 * pi) * 16), -16 -ceil(cos(gameTime / 60.0 * pi) * 16), -16 -ceil(cos(gameTime / 60.0 * pi) * 16)
ignorehitpause = 1

[State -3, Invert]
type = PalFx
trigger1 = PrevStateNo = [1251128,1251129]
Time = 10
invertall = 1

[State -3, SuperPause]
type = SuperPause
triggerall = NumPartner
trigger1 = Partner, StateNo = 1251106
trigger1 = NumHelper(1251130)
trigger2 = NumHelper(1251101) && Partner, StateNo != 1251125
trigger2 = MoveType != H
Time = 10
anim = -1
sound = -1
moveTime = 10
darken = 1
p2defmul = 0
unhittable = 1
pausebg = 1

[State -3, NoAirGuard]
type = AssertSpecial
trigger1 = NumPartner
trigger1 = sysvar(4) = 8
trigger1 = Movetype = A
trigger1 = prevStateNo = 1251133
flag = Noairguard
flag2 = nojugglecheck
flag3 = nowalk
ignorehitpause = 1

[State -3, aHit]
Type = VarSet
Triggerall = sysvar(4) = 8 && Roundstate = 2
triggerall = NumPartner && Partner, Alive
trigger1 = Movetype = H
trigger2 = StateNo = [5000,5990]
trigger3 = StateNo = [150,151]
sysvar(4) = 9

[State -3, bangon]
type = SelfState
trigger1 = NumPartner && sysvar(4) = 9
trigger1 = Alive && Partner, Alive
trigger1 = StateNo != 5120
trigger1 = StateNo = 5110 || Anim = 5110
trigger1 = Time >= 12
value =5120

[State -3, leavePA]
type = SelfState
triggerall = sysvar(4) = [8,9]
triggerall = StateType != A || prevStateNo = [5000,5500]
triggerall = NumPartner
trigger1 = Roundstate = 2
trigger1 = Life && Partner, life
trigger1 = Partner, StateNo != [1251101,1251135]
trigger1 = StateNo != [200,1251199]
trigger1 = MoveType != H || ((StateNo = [5110, 5120]) && (Time >= 19 || AnimElemTime(4) >= 1))
value = ifelse((sysvar(4)=9 || (StateNo = [150,151])),1251111,1251110)
ctrl = 0

[State -3, LE]
type = SelfState
trigger1 = StateNo = 7828
trigger1 = PrevStateNo = [1251110,1251114] 
trigger2 = sysvar(4) = [8,9]
trigger2 = Anim = 100 && StateNo != [1251101,1251133]
trigger3 = sysvar(4) = 5
trigger3 = PrevStateNo = [1251110,1251114] 
trigger3 = StateNo != [1251101,1251133]
value = 1251111

[State -3, leaveIntro]
type = SelfState
triggerall = sysvar(4) = 5
triggerall = NumPartner
trigger1 = Roundstate >= 2
trigger1 = StateNo != [1000,1251199]
value = 1251110
ctrl = 0

[State -3, leave2]
type = SelfState
triggerall = NumPartner
triggerall = sysvar(4) = 14 && roundstate = 2
trigger1 = StateNo != 1251109
trigger1 = Statetype != A
trigger1 = Partner, StateNo != [1251109,1251116]
value = 1251109

[State -3, antala]
type = VarSet
triggerall = NumPartner
triggerall = sysvar(4) = 14
trigger1 = Partner, StateNo = [1251114,1251115]
trigger1 = Partner, vel x <= 0
sysvar(4) = 1

[State -3, fromdark]
type = Helper
trigger1 = sysvar(4) = 7 && !NumHelper(1251139)
trigger1 = PrevStateNo = 1251106
trigger1 = Time <= 25
Helpertype = Normal
ID = 1251139
StateNo = 1251130
name = "dark"
ownpal = 1
supermoveTime = 9999
pausemoveTime = 9999

[State -3, sb_PA]
type = ScreenBound
trigger1 = NumPartner
trigger1 = sysvar(4) = [8,9]
value = ifelse(MoveType = A,1,0)
movecamera = 0,0

[State -3, NoCtrl]
type = CtrlSet
trigger1 = NumPartner
trigger1 = StateNo != [1251111,1251114]
trigger1 = sysvar(4) = [8,9]
value = ifelse((Partner, Alive),0, 1)

[State -3, Party]
type = Null ;CtrlSet
triggerall = NumPartner
triggerall = Partner, StateNo != [1251110,1251114]
trigger1 = Partner, sysvar(4) = 2
trigger1 = Movetype != A
trigger1 = StateNo != [5000,5500]
trigger1 = Partner, StateNo != [5000,5500]
trigger1 = prevStateNo != [5000,5500]
value = ifelse((prevStateNo = [1251132,1251131]) || (Partner, StateNo = 1251125) ||(Partner, movetype = A), 0, 1)

[State -3, Party]
type = AssertSpecial
triggerall = NumPartner
triggerall = Partner, StateNo != [1251110,1251114]
trigger1 = Partner, sysvar(4) = 2
trigger1 = Movetype != A
trigger1 = StateNo != [5000,5500]
trigger1 = Partner, StateNo != [5000,5500]
trigger1 = prevStateNo != [5000,5500]
flag = nojugglecheck
;flag2 = nowalk

[State -3, PartyDone]
type = Null ;CtrlSet
triggerall = NumPartner
triggerall = !Ctrl
triggerall = Partner, sysvar(4) = 2
triggerall = Movetype = I
triggerall = StateNo != [200,5500]
trigger1 = prevStateNo = [5000,5500]
trigger2 = Partner, StateNo = 1251111
trigger3 = Partner, MoveType = H && !Partner, HitShakeOver
value = 1

[State -3, shift]
type = CtrlSet
trigger1 = sysvar(4) = 12
trigger2 = StateNo = 1251109
value = 0

[State -3, fadeOut]
type = Trans
triggerall = NumPartner
trigger1 = !Life && Partner, Life
;trigger1 = RoundState = 2 || Partner,sysvar(4) = 7
trigger1 = Partner, sysvar(4) = 7
trigger1 = StateNo = 5150
Trans = addalpha
alpha = (256-ifelse((Partner,sysvar(4) = 7),(Time *3),(Time*2))), (Time*Time)

[State -3, fadeOut]
type=assertspecial
triggerall = alive=0 && !ishelper && numpartner && Partner, sysvar(4) && RoundState = 2
trigger1=stateno=5150 && (((time=[80,150])&&(time%10<5))||(time>150))
trigger1=(partner,stateno!=stateno)||((partner,stateno=stateno)&&(partner,time<time))
flag=invisible
flag2=noshadow

[state -3, fadeOut]
type=posset
trigger1 = sysvar(4)
trigger1=stateno=5150 && alive=0 && !ishelper && numpartner && (time>150)
trigger1=(partner,stateno!=stateno)||((partner,stateno=stateno)&&(partner,time<time))
trigger1 = Partner, sysvar(4)
y=-3

[state -3, dead_Var]
type = VarSet
triggerall = !Alive
triggerall = RoundState = 2
triggerall = StateNo = [5131,5150]
triggerall = NumPartner && Partner, sysvar(4)
trigger1 = Time >= 125
trigger2 = Partner, sysvar(4) = 7
trigger2 = Time >= 85
sysvar(4) = 6

[state -3, awake_Var]
type = VarSet
triggerall = roundstate = 2
trigger1 = Alive
trigger1 = sysvar(4) = 6
trigger2 = Partner, Life
trigger2 = sysvar(4) = 7
sysvar(4) = 1

[state -3, offME]
type = NotHitBy
triggerall = NumPartner
trigger1 = sysvar(4) = 6
trigger2 = StateNo = 1251128 || PrevStateNo = 1251128
trigger3 = Partner, sysvar(4) = 6
trigger3 = (StateNo = [1251101,1251116]) || (StateNo = [1251120,1251133])
value = SCA

[state -3, disa2]
type = ChangeState
trigger1 = RoundState = 2
trigger1 = StateNo = [5110,5150]
trigger1 = sysvar(4) = 6
value = 1251113

[state -3, Ghost]
type = AssertSpecial
triggerall = !Alive
triggerall = RoundState >= 2
triggerall = sysvar(4) = 6
trigger1 = Anim = [5000,5600]
trigger2 = PrevStateNo = [1251113,1251121]
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State -3, EndLife]
type = LifeAdd
triggerall = RoundState = 2
trigger1 = PrevStateNo = 1251129
trigger2 = sysvar(4) = 6
value = -LifeMax

[State -3, END]
type = PosSet
trigger1 = NumPartner
trigger1 = roundstate > 2
trigger1 = !Alive
trigger1 = PrevStateNo = 1251113
x = (Partner, pos x) - 5000*facing
y = 0

[State -3, sb]
type = ScreenBound
trigger1 = BackEdgeBodyDist <= 10
trigger1 = StateNo = [1251115,1251116]
trigger2 = StateNo = 1251109
value = 0
movecamera = 0,0

[State -3, sb]
type = PlayerPush
trigger1 = StateNo = [1251115,1251116]
value = ifelse(BackEdgeBodyDist >= 0 || p2bodydist x <= 45,1,0)

[State -3, 1251129]
type = LifeAdd
trigger1 = PrevStateNo = 1251129 && Time > 1
value = -LifeMax

[State -3, 1251129]
type = ChangeState
trigger1 = StateNo < 5000
trigger1 = PrevStateNo = 1251129 && AnimElemNo(3) = 7
value = 5150

[State -3, Aura]
type=Helper
triggerall= !NumHelper(1251124)
trigger1 = sysvar(4) = 7 && MoveType = I && (StateNo = 1251106 || Life <= (LifeMax*.2))
Helpertype=normal
StateNo=1251124
ID=1251124
name="AURA"
postype=p1
ownpal = 1
pausemoveTime=999999
supermoveTime=999999

; ----------- UNO MODE -----------
[State -3, Cursed]
type = LifeAdd
trigger1 = RoundState = 2
trigger1 = StateNo != 1251106 && !(Partner, Life)
trigger1 = (gameTime%10) = 0
trigger1 = sysvar(4) = 7
value = (-3 + ifelse(Life < LifeMax/6, 2, 0))
kill = 0

[State -3, C_2]
type = PowerAdd
trigger1 = RoundState = 2
trigger1 = StateNo != 1251106 && !(Partner, Life)
trigger1 = sysvar(4) = 7
trigger1 = Power < PowerMax && MoveType != A
value = 100

[State -2, C_3]
type = AttackMulSet
trigger1 = RoundState = 2
trigger1 = sysvar(4) = 7 && StateNo = [200,4000]
value = 1.5 ;+ ((LifeMax/Life) * 0.015)

[State -3, C_4]
type = DefenceMulSet
trigger1 = RoundState = 2
trigger1 = sysvar(4) = 7 && !(Partner, Life)
value = ifelse((Life>150),(0.2 - ((LifeMax/Life) * 0.015)),0.15)

[State -2, C_5]
type = AssertSpecial
trigger1 = RoundState = 2
trigger1 = sysvar(4) = 7 && MoveType = A
flag = nojugglecheck
ignorehitpause = 1

[State -3, C_7]	; TimeOVER!
type = LifeAdd
trigger1 = NumPartner && RoundState > 2 && StateNo != 1251106 && !(Partner, Life) && sysvar(4) = 7 && !Win
value = -(Life)
kill = 1

[State -3, C_8]
type = SelfState
trigger1 = NumPartner && RoundState>=3 && Life > 1 && !(Partner, Life) && sysvar(4) = 7 && MoveType=H
value = ifelse(StateNo=5110,5120,5040)

[State -3, C_e1]
type = PalFx
trigger1 = StateNo != 1251106
trigger1 = RoundState = 2
trigger1 = !Win && !Lose && !MatchOver && !DrawGame
trigger1 = !NumHelper(1251107)
trigger1 = sysvar(4) = 7
add=(50+Random*0.15),(50+Random*0.12),(50+Random*0.12)
mul = (120+Random*0.12511), (120+Random*0.12511), (120+Random*0.12511)
sinadd=-255,-245,-245,(40 + Time*2)
Time=10

[State -3, C_e2]
type = AfterImage
triggerall = RoundState <= 2
triggerall = !Win && !Lose && !MatchOver && !DrawGame
triggerall = sysvar(4) = 7 && MoveType = A
trigger1 = PrevStateNo = 5300 || PrevStateNo = 4600
trigger2 = (gameTime%10) = 0
Trans = add
PalContrast = 5, 5, 256
PalBright = 0,0,50
Time    =  -1
length  = 17
TimeGap = 1
FrameGap = 1

[State -3, C_e3]
type = AfterImageTime
trigger1 = RoundState > 2
trigger1 = sysvar(4) = 7
trigger2 = !Alive
trigger3 = Partner, Alive
trigger4 = sysvar(4) = 7 && MoveType != A
Time = 0

[State -3, C_KOed]
type = SelfState
triggerall = sysvar(4) = 7
trigger1 = !Life
trigger1 = StateType != A
trigger1 = StateNo != [5000,5950]
value = 5950

[State -3, C_Dead]
type = SelfState
trigger1 = (PrevStateNo = [1251128, 1251129]) || (!Life)
trigger1 = StateNo = 5950
trigger1 = AnimTime = 0 || Time > 225
value = 5150
; ----------------------

[State -3, T_T]
type = ScreenBound
trigger1 = roundstate > 2
trigger1 = !Alive
trigger1 = PrevStateNo = 1251113
;trigger2= EnemyNear, NumHelper(1251107) || Enemy, NumHelper(1251107)
value = 0
movecamera = 0,0

[State -3, T_T]
type = PosFreeze
trigger1 = NumEnemy && EnemyNear, NumHelper(1251107) || Enemy, NumHelper(1251107)
trigger2 = PrevStateNo = 1251121
trigger3 = StateNo = 1251125

[State -3, T_T]
type = SelfState
triggerall = NumPartner && sysvar(4) > 0
trigger1 = RoundState = 2  && Pos Y < 0
trigger1 = StateNo = 0 && (Partner, StateNo != [1251112,1251114])
trigger1 = PrevStateNo = [1251112,1251114]
value = 1251114

[State -3, wait out]
type = ChangeState
triggerall = NumPartner
triggerall = RoundState = 2
triggerall = Life && Partner, Life
triggerall = StateNo != [1251110,1251114]
trigger1 = sysvar(4) = 2			; performed team attack
trigger1 = (PrevStateNo = [5000,5500]) || (StateNo != [200,1251199]) && (MoveType != H)
trigger2 = sysvar(4) = 4          ; performed Delayed Cancel
trigger2 = MoveType != A || ((Partner, prevStateNo = 1251131 || Partner, StateNo != [1251101,1251135]) && Time > 1)
trigger3 = (sysvar(4) = [2,4]) && MoveType = I && (StateNo != [1251101,1251133])
trigger4 = NumHelper(1251125)
trigger4 = StateNo = [0,199]
value = 1251111
ctrl = 0
ignorehitpause = 1

; ---- Uno Tag System v3.2 END LINE ----

;
  ;]


[State -3, GetHit Snd]
type=playsnd
triggerall= alive && time=1
triggerall= stateno=5000 || stateno=5010
trigger1= gethitvar(animtype)>=2 && random<500
trigger2= gethitvar(animtype)=1 && random<375
trigger3= gethitvar(animtype)=0 && random<250
value=5000,1+(random%5)
channel=0
ignorehitpause=1

[State -3, GetHit Snd]
type=playsnd
triggerall= alive && time=1
trigger1= (stateno=5000 || stateno=5010) && numenemy
trigger1= gethitvar(fall) || (enemynear,hitdefattr=SCA,SA,HA)
trigger2= (stateno=5020 || stateno=5070 || stateno=5080)
trigger3= (stateno=5050 || stateno=5100) && (prevstateno!=[5000,5199])
value=5000,1+(random%5)
channel=0
ignorehitpause=1


[State -3, AI]
type=varset
trigger1= alive && ishometeam
trigger1= teamside=2 || matchno>1
var(59)=1

[State -3, Gametime Var]
type = varset
trigger1 = 1
var(58) = gametime
ignorehitpause = 1

[State -3,veladd]
type = Veladd
triggerall= !AILevel
triggerall = roundstate=2
triggerall =command = "holdfwd"
triggerall = prevstateno = 123
trigger1 = stateno = 50
x = .1

[State state-3,veladd]
type = Veladd
triggerall= !AILevel
triggerall = roundstate=2
triggerall =command = "holdback"
triggerall = prevstateno = 123
trigger1 = stateno = 50
x = -.1

[State -3,veladd]
type = Veladd
triggerall = (AILevel)
triggerall = prevstateno = 123
trigger1 = enemy,vel y < -1
trigger1 = p2bodydist x >= 45
trigger1 = p2movetype != A
trigger1 = p2statetype = A
x = .2

[State -3, Prevent Crossup]
type = Width
trigger1 = MoveType != H
edge = 8, 0
ignoreHitPause = 1


[State -3, Shadows]
type = afterimage
triggerall = time = 1 && !var(20)
trigger1 = stateno = 50 && var(9) = 3
trigger2 = stateno = 710 || stateno = 720
time = 2
timegap = 1
framegap = 3
length = 12
palbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.9, 0.9, 0.9
palcontrast = 120, 120, 120
palpostbright = 0, 0, 0
trans = add1

[State -3, ExSnd]
type = playsnd
trigger1 = (stateno = [1000, 2999]) && time = 1 && movetype = A && var(10) = 4
value = 7, 6
ignorehitpause = 1
[State -3, ExShadow]
type = afterimage
trigger1 = (stateno = [1000, 2999]) && time = 1 && movetype = A && var(10) = 4
time = 2
timegap = 1
framegap = 1
length = 8
palbright = 32, 32, 0
palcontrast = 128, 128, 128
paladd = -10, -10, -10
palmul = 1.1, 1, 0.5
trans = add
ignorehitpause = 1
[State -3, ExFlash]
type = palfx
trigger1 = (stateno = [1000, 2999]) && movetype = A && var(10) = 4
triggerall = (anim != [1101, 1103]) && anim != 1207
time = 1
add = 32 + ceil(sin(gametime / 1.5) * 32), 32 + ceil(sin(gametime / 1.5) * 32), 0
mul = 300, 300, 200
ignorehitpause = 1

[State -3, Lv1 Shadows]
type = afterimage
trigger1 = stateno = 3000 && animelem = 4
trigger2 = stateno = 3020 && animelem = 3
trigger3 = stateno = 3100 && anim = 3100 && animelem = 4
trigger4 = stateno = 3140 && anim = 3140 && animelemtime(1) = 2
trigger5 = stateno = 3200 && anim = 3200 && animelem = 3
time = 2
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
trans = add1

[State -3, Lv2 Shadows]
type = afterimage
trigger1 = stateno = 3180 && anim = 3180 && animelem = 2
trigger2 = stateno = 3160 && anim = 3160 && animelem = 4
time = 2
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 32, 32, 160
palpostbright = 0, 0, 0
trans = add1

[State -3, Lv3 Shadows]
type = afterimage
trigger1 = stateno = 3040 && anim = 3040 && animelem = 4
trigger2 = stateno = 3120 && anim = 3120 && animelem = 2
trigger3 = stateno = 4000 && time = 1
trigger4 = stateno = 368 && time = 1
time = 2
timegap = 1
framegap = 10
length = 30
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 160, 32, 32
palpostbright = 0, 0, 0
trans = add1

[State -3, AfterImagePersist]
type = afterimagetime
trigger1 = stateno = 50 && var(9) = 3 && vel y < -1
trigger2 = var(20) > 0
trigger3 = stateno = 710 || stateno = 720 || stateno = 1400
trigger4 = (stateno = [1000, 2999]) && var(10) = 4 && (anim != [1101, 1103]) && anim != 1207
trigger5 = (stateno = [3000, 4999]) && (anim != [1101, 1102]) && (anim != [1111, 1112])
trigger6 = stateno = 368 && animelemtime(2) < 0
time = 2

[State -3, Corner Push]
type = varset
trigger1 = fvar(5)
trigger1 = numtarget
trigger1 = target, hitover || (target, gethitvar(hitshaketime) > 0 && target, time <= 0)
fvar(5) = 0
[State -3, Corner Push]
type = varset
trigger1 = movecontact = 1 && numtarget
fvar(5) = target, gethitvar(xvel)
ignorehitpause = 1
[State -3, Corner Push]
type = posadd
triggerall = fvar(5)
triggerall = (statetype = S || statetype = C) && numtarget
triggerall = !hitpausetime && target, gethitvar(hitshaketime) <= 0
triggerall = (target, statetype = S || target, statetype = C) && !(target, gethitvar(yvel)) && !(target, hitfall)
trigger1 = target, frontedgebodydist <= abs(target, vel x)
trigger1 = (target, gethitvar(xvel) * target, facing) > 0
trigger2 = target, backedgebodydist <= abs(target, vel x)
trigger2 = (target, gethitvar(xvel) * target, facing) < 0
x = ifelse(target, frontedgebodydist <= 0, -1, 1) * (target, facing) * fvar(5)
[State -3, Corner Push]
type = varset
trigger1 = fvar(5)
trigger1 = abs(fvar(5)) < 1.0
fvar(5) = 0
[State -3, Corner Push]
type = varset
trigger1 = numtarget
trigger1 = target, gethitvar(hitshaketime) <= 0
fvar(5) = fvar(5) * 0.85

[State -3, Underground Juggle Prevention]
type = targetbind
trigger1 = movecontact = 1
trigger1 = numtarget && numenemy
trigger1 = (target, time = 0) && (target, ID = enemynear, ID)
trigger1 = !(target, hitshakeover) && (target, pos y > 0)
pos = ceil(p2dist x), ceil(-pos y)
ignorehitpause = 1

[State -3, Prevent Crossup]
type = width
trigger1 = movetype != H
edge = 8, 0
ignorehitpause = 1

[State -3, Variable Height]
type = playerpush
triggerall = statetype = A && movetype != H && numenemy = 1
triggerall = p2bodydist x = [ -(enemynear, const(size.ground.back) + enemynear, const(size.ground.front)) , 0]
trigger1 = p2statetype = S
trigger1 = p2dist y >= (enemynear, const(size.height) - 30)
trigger2 = p2statetype = C
trigger2 = p2dist y >= (enemynear, const(size.height) - 56)
trigger3 = p2statetype = L
trigger3 = p2dist y >= 12
value = 0
ignorehitpause = 1

[State -3, GetHit Snd]
type = playsnd
triggerall = alive && time = 1
triggerall = stateno = 5000 || stateno = 5010
trigger1 = gethitvar(animtype) >= 2 && random < 500
trigger2 = gethitvar(animtype) = 1 && random < 375
trigger3 = gethitvar(animtype) = 0 && random < 250
value = 5000 + (var(1) = 2) * 10, ceil(random / 200)
channel = 0
ignorehitpause = 1

[State -3, GetHit Snd]
type = playsnd
triggerall = alive && time = 1
trigger1 = (stateno = 5000 || stateno = 5010) && numenemy
trigger1 = gethitvar(fall) || (enemynear, hitdefattr = SCA, SA, HA)
trigger2 = (stateno = 5020 || stateno = 5070 || stateno = 5080)
trigger3 = (stateno = 5050 || stateno = 5100) && (prevstateno != [5000, 5199])
value = 5000 + (var(1) = 2) * 10, ceil(random / 200)
channel = 0
ignorehitpause = 1







[State -3, Cheap KO]
type = changestate
trigger1 = !alive && (stateno = [5000, 5010])
trigger1 = (prevstateno = [130, 131]) || (prevstateno = [140, 141]) || (prevstateno = [150, 153])
value = 5130
ignorehitpause = 1


[State -3, Normal Finish]
type = Helper
triggerall = roundstate >= 2
triggerall = WinKo && NumHelper(9994)=0
trigger1 = (stateno = [200, 999])&&movetype!=H&&Movetype=A
ID = 9994
stateno = 9994
postype = back
pos = 0,0
pausemovetime = 999999
supermovetime = 999999
ignorehitpause = 1
ownpal = 1
persistent=0

[State -3, Special Finish]
type = Helper
triggerall = roundstate >= 2
triggerall = WinKo && NumHelper(9994)=0
trigger1 = (stateno = [1000, 2999])&&movetype!=H&&Movetype=A
ID = 9994
stateno = 9995
postype = back
pos = 0,0
pausemovetime = 999999
supermovetime = 999999
ignorehitpause = 1
ownpal = 1
persistent=0

[State -3, Finish Hit Explod - Helper]
type = Helper
triggerall = roundstate >= 2
triggerall = WinKo && !NumHelper(9994)
trigger1 = (stateno = [3000, 4999])&&movetype!=H
helpertype = Normal
name = "Finish Hit Explod"
id = 9994
pos = 0, 0
postype = p1
facing = 0
stateno = 9996
keyctrl = 0
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1
persistent=0

