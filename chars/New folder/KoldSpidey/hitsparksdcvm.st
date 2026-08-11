;==============================================================================================
;DJ-VAN DJ-VAN DJ-VAN DJ-VAN DJ-VAN DJ-VAN DJ-VAN DJ-VAN DJ-VAN DJ-VAN DJ-VAN DJ-VAN DJ-VAN
;==============================================================================================
; SUPER BG START UP  By DJ-VAN
;==============================================================================================
;DJ-VAN DJ-VAN DJ-VAN DJ-VAN DJ-VAN DJ-VAN DJ-VAN DJ-VAN DJ-VAN DJ-VAN DJ-VAN DJ-VAN DJ-VAN
;==============================================================================================
[Statedef 8021]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 8020
sprpriority = -999999999

[State 0, ]
type = AssertSpecial
trigger1 = 1
flag = invisible
flag2 = nobg

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8020
ID = 8020
pos = 0,240
postype = Left  ;p2,front,back,left,right
bindtime = -1
removetime = -1
supermovetime = 99999
pausemovetime = 99999
scale = 1.01,1.01
sprpriority = -99999999
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = Explod
triggerall = parent,facing = 1
trigger1 = time = 0
anim = 8021
id = 8021
pos = -50+(Time)*1,339+(Time)/2
postype = left
sprpriority = -999998
removetime = -1
bindtime = -1
pausemovetime = 999999
removeongethit = 1
random = 30,30
ownpal = 1
persistent = 0

[State 0, ]
type = explod
triggerall = parent,facing = 1
trigger1 = time = 0
anim = 8022
id = 8021
pos = -50+(Time)*1,339+(Time)/2
postype = left
sprpriority = -999999
removetime = -1
bindtime = -1
pausemovetime = 999999
removeongethit = 1
random = 30,30
ownpal = 1
persistent = 0

[State 0, ]
type = ModifyExplod
trigger1 = Time < 30
ID = 8021
scale = (0.1+(Time)/20.0)*parent,const(size.xscale) , 0.1+(Time)/20.0
pos = -50+(Time)*1,339+(Time)/2
pausemovetime = 999999

[State 0, ]
type = removeexplod
trigger1 = time >= 40
id = 8020

[State 0, ]
type = removeexplod
trigger1 = time >= 40
id = 8021

[State 0, ]
type = destroyself
trigger1 = time >= 40


;==============================================================================================
;DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM
;==============================================================================================
; SPARKS HELPERS  By Loganir
; Credits to these guys who share sprite packs open source online. Good material to edit new fx
; Wuwo(RumbleFish,CFJ,various), Xenozip&Blip(GGXX), NEW&ZantetsuMug(Tohou), P.O.T.S (FF7,FF8)
; Credits for the explods disperse tutorials by Flowagirl
;==============================================================================================
;DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM
;==============================================================================================

[Statedef 47000];---------- HITspark 1 weak 
type = S
movetype = I
physics = N
anim = 47005
sprpriority = 5

[State 47000, A0]
type = screenbound
trigger1 = 1
value = 0
[state 47000, a1]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 47000, a2]
type = null
trigger1= NumExplod(47015)=8
trigger1 = var(3):=1 

[State 47000, a3] ;balls
type = Explod
trigger1= NumExplod(47015)<8
trigger1 = var(3)=0
anim = 47015
id = 47015
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = (IfElse(Random <= 199,Random/100,Random/136)),(IfElse(Random <= 299,Random/136,Random/(-136)))
accel = -.1,.15
removetime = 20
supermovetime = 999
pausemovetime = 999
scale = 1,1;IfElse(Random <= 499,.3,.1),IfElse(Random <= 499,.3,.1)
sprpriority = 8
ownpal = 1

[State 47000, a4]
type = modifyexplod
trigger1 = 1
ID = 47015
scale = 1 -(.012*time),1 -(.012*time)


[State 47000, a6];blue red shape2
type = explod
trigger1 = !time
anim =IfElse(random<335,47002,IfElse(random>665,47001,47000))
facing =IfElse(random>830,1,-1)
ID = 47001
sprpriority = 6
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .12,.12
ownpal=1

[State 47000, a7];halo
type = explod
trigger1 = !time
anim = 47010
ID = 47010
sprpriority = 9
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = 1,1
ownpal=1

[State 47000, a7x];particle stuck
type = explod
trigger1 = !time
anim = IfElse(random<335,47032,IfElse(random>665,47031,47030))
ID = 47000
sprpriority = 8
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .2,.2
ownpal=1


[State 47000, a8]
type = modifyexplod
trigger1 = 1
ID = 47000
scale = .2+(.03*time),.2+(.03*time)
[State 47000, a4]
type = modifyexplod
trigger1 = 1
ID = 47001
scale = .12+(.025*time),.12+(.025*time)

;[State 47000, a91] ;yellow
;type = PalFX
;trigger1 =!time
;time = 20
;add = 11,-10,-112
;mul = 461,410,471
;sinadd = 0,0,0,1
;invertall = 0
;color = 256
;ignorehitpause = 1
;persistent = 0

;[State 47000, PalFXWiz] ;red
;type = PalFX
;trigger1 =!time
;time = 20
;add = 11,-112,-153
;mul = 502,420,512
;sinadd = 0,0,0,1
;invertall = 0
;color = 256
;ignorehitpause = 1
;persistent = 0


[State 47000, end]
type = destroyself
trigger1 = time >=16;25

;==============================================================================================
;DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM
;==============================================================================================

[Statedef 47001];---------- HITspark 2 - medium
type = S
movetype = I
physics = N
anim = 47005
sprpriority = 5

[State 47001, A0]
type = screenbound
trigger1 = 1
value = 0
[state 47001, a1]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 47001, a2] 
type = null
trigger1= NumExplod(47015)=8
trigger1 = var(3):=1 


[State 47001, a3] ;particles
type = Explod
trigger1= NumExplod(47015)<8
trigger1 = var(3)=0
anim = 47015
id = 47015
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = (IfElse(Random <= 499,Random/60,Random/146)),(IfElse(Random <= 199,Random/145,Random/(-90)))
accel = -.1,.15
removetime = 20
supermovetime = 999
pausemovetime = 999
scale = 1.14,1.14;IfElse(Random <= 499,.55,.25),IfElse(Random <= 499,.55,.25)
sprpriority = 8
ownpal = 1

[State 47001, a4]
type = modifyexplod
trigger1 = 1
ID = 47015
scale = 1.14-(.03*time),1.14-(.03*time)



[State 47001, a5];blue red shape1
type = explod
trigger1 = !time
anim = IfElse(random<335,47002,IfElse(random>665,47001,47000))
facing = IfElse(random>830,1,-1)
ID = 47000
sprpriority = 5
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .12,.12
ownpal=1

[State 47001, a6];blue red shape2
type = explod
trigger1 = !time
anim =47020
ID = 47001
sprpriority = 6
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .1,.1
ownpal=1

[State 47001, a7];halo
type = explod
trigger1 = !time
anim = 47010
ID = 47010
sprpriority = 9
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = 1,1
ownpal=1

[State 47001, a7x];particle stuck
type = explod
trigger1 = !time
anim = IfElse(random<335,47032,IfElse(random>665,47031,47030))
ID = 47030
sprpriority = 8
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .4,.4
ownpal=1

[State 47001, a8]
type = modifyexplod
trigger1 = 1
ID = 47000
scale = .12+(.035*time),.12+(.035*time)
[State 47001, a4]
type = modifyexplod
trigger1 = 1
ID = 47001
scale = .1+(.025*time),.1+(.025*time)

[State 47001, a9x]
type = modifyexplod
trigger1 = 1
ID = 47030
scale = .4+(.035*time),.4+(.035*time)

;[State 47001, PalFXWiz] ; gold
;type = PalFX
;trigger1 =!time
;time = 20
;add = 11,-51,-132
;mul = 512,379,512
;sinadd = 0,0,0,1
;invertall = 0
;color = 256
;ignorehitpause = 1
;persistent = 0

;[State 47001, PalFXWiz] ;red
;type = PalFX
;trigger1 =!time
;time = 20
;add = 11,-112,-153
;mul = 502,420,512
;sinadd = 0,0,0,1
;invertall = 0
;color = 256
;ignorehitpause = 1
;persistent = 0

[State 47001, end]
type = destroyself
trigger1 = time >= 18;25


;==============================================================================================
;DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM
;==============================================================================================

[Statedef 47002];---------- HITspark 3 - strong
type = S
movetype = I
physics = N
anim = 47005
sprpriority = 5

[State 47002, A0]
type = screenbound
trigger1 = 1
value = 0

[state 47002, a1]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 47002, sparksvar] 
type = null
trigger1= NumExplod(8700)=10
trigger1 = var(3):=1 

[State 47002, a3] ;particles
type = Explod
trigger1= NumExplod(47015)<10
trigger1 = var(3)=0
anim = 47015
id = 47015
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = (IfElse(Random <= 499,Random/56,Random/146)),(IfElse(Random <= 199,Random/86,Random/(-86)))
accel = -.1,.15
removetime = 20
supermovetime = 999
pausemovetime = 999
scale = 1.18,1.18
sprpriority = 8
ownpal = 1

[State 47002, a4]
type = modifyexplod
trigger1 = 1
ID = 47015
scale = 1.21-(.03*time),1.21-(.03*time)

[State 47002, a5];blue red shape1
type = explod
trigger1 = !time
anim = IfElse(random<335,47002,IfElse(random>665,47001,47000))
facing = IfElse(random>830,1,-1)
ID = 47000
sprpriority = 5
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .15,.15
ownpal=1

[State 47002, a6];blue red shape2
type = explod
trigger1 = !time
anim =47020
ID = 47001
sprpriority = 6
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .1,.1
ownpal=1

[State 47002, a7];halo
type = explod
trigger1 = !time
anim = 47010
ID = 47010
sprpriority = 9
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = 1,1
ownpal=1

[State 47002, a7x];p.stuck
type = explod
trigger1 = !time
anim = IfElse(random<335,47032,IfElse(random>665,47031,47030))
ID = 47030
sprpriority = 9
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .4,.4
ownpal=1

[State 47002, a8]
type = modifyexplod
trigger1 = 1
ID = 47000
scale = .15+(.047*time),.15+(.047*time)
[State 47002, a4]
type = modifyexplod
trigger1 = 1
ID = 47001
scale = .1+(.037*time),.1+(.037*time)

[State 47002, a9x]
type = modifyexplod
trigger1 = 1
ID = 47030
scale = .4+(.06*time),.4+(.06*time)


;[State 47002, PalFXWiz] ;red
;type = PalFX
;trigger1 =!time
;time = 20
;add = 11,-112,-153
;mul = 502,420,512
;sinadd = 0,0,0,1
;invertall = 0
;color = 256
;ignorehitpause = 1
;persistent = 0

;[State 47002, PalFXWiz] ;blue
;type = PalFX
;trigger1 =!time
;time = 20
;add = -132,-40,52
;mul = 471,317,379
;sinadd = 0,0,0,1
;invertall = 0
;color = 256
;ignorehitpause = 1
;persistent = 0

[State 47002, end]
type = destroyself
trigger1 = time >= 19;25


;==============================================================================================
;DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM-DCVM
;==============================================================================================


[Statedef 47016];---------- defend particles 
type = S
movetype = I
physics = N
anim = 47005
sprpriority = 7

[State 47016, A0]
type = screenbound
trigger1 = 1
value = 0

[state 47016, a1]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 47016, sparksvar] 
type = null
trigger1= NumExplod(47025)=6
trigger1 = var(3):=1 

[State 47016 Explod] ;particles
type = Explod
trigger1= NumExplod(47025)<6
trigger1 = var(3)=0
anim = 47025
id = 47025
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = (IfElse(Random <= 199,Random/-100,Random/-136)),(IfElse(Random <= 299,Random/136,Random/(-136)))
accel = .1,.15
removetime = 20
supermovetime = 999
pausemovetime = 999
scale = 1,1
sprpriority = 8
ownpal = 1

[State 47016, a4]
type = modifyexplod
trigger1 = 1
ID = 47025
scale = 1 -(.035*time),1 -(.035*time)

;[State 47016, PalFXWiz] ;blue
;type = PalFX
;trigger1 =!time
;time = 20
;add = -132,-40,52
;mul = 471,317,379
;sinadd = 0,0,0,1
;invertall = 0
;color = 256
;ignorehitpause = 1
;persistent = 0
; removed Palfx from code - doesnt work with explods from screenpack 

[State 47016, a6]
type = destroyself
trigger1 = time >=16;25
