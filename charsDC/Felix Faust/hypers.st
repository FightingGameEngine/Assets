; States file for {character} -- Hypers
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
; Hyper Attacks
; 
; Hyper 1 (QCF + PP) -- state 3000
;   hyper 1
;---------------------------------------------------------------------------
;Hyper Root Strike Start“
[Statedef 3100]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 3100
ctrl = 0
sprpriority = 2
poweradd = -1000

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = s110,3

[State 3000, dust]
type = Explod
trigger1 = animelem = 2
anim = 6301
ID = 6301
pos=-51,-138
bindtime = 1
removetime = -2
sprpriority = 9
removeongethit = 1

[State 3000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
ID = 918
bindtime = 1
removetime = -2
sprpriority = 3
removeongethit = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
sound = S10,1
pos = 20,-70
darken = 1


;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 2
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------

[State 3100, Helper];•X’Œ1
type = Helper
trigger1 = NumHelper(3050)=0
trigger1 = animelem = 4
helpertype = normal
name = "Ice 1"
id = 3050
postype = p1
pos = 111,0
stateno = 3050
keyctrl = 0
ownpal = 1
;supermovetime = 9999
pausemovetime = 9999

[State 3100, black bg]
type = bgpalfx
trigger1 = AnimElem = 1
add = 20,20,20
mul = 0,75,0
time = 130

[State 3100, ƒXƒe[ƒg•ÏX]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Hyper Root Strike

[Statedef 3050]
type = S
movetype = A
physics = N
anim = 1033
poweradd = 0
juggle = 3
velset = 0
ctrl = 0
sprpriority = 2

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = s2000,7


[State 3050, shake]
type = EnvShake
trigger1 = Time =0
time = 80

[State 3000, NotHitBy];–³“G
type = NotHitBy
trigger1 = 1
value = SCA


[State 3300, Helper];•X’Œ2
type = Helper
trigger1 = NumHelper(3051)=0
trigger1 = time = 9
helpertype = normal
name = "Ice 2"
id = 3051
postype = p1
pos = 45,0
stateno = 3051
keyctrl = 0
ownpal = 1
;supermovetime = 9999
pausemovetime = 9999


[State 3000, ƒqƒbƒg’è‹`]
type = HitDef
trigger1 = animelem = 2
attr = A, HP ;—§‚¿•KŽE‹ZiStanding, Special Attackj
animtype  = back
damage    = 50, 15
getpower  = 0 ;UŒ‚‚ð“–‚Ä‚½Žž‚Éƒpƒ[ƒQ[ƒW‚ð‘‚â‚³‚È‚¢‚æ‚¤‚É‚µ‚Ä‚é
numhits = 4   ;‰ÁŽZ‚³‚ê‚éƒqƒbƒg”
priority  = 6, hit
SprPriority = 2
hitflag = MAFP
guardflag = M
pausetime = 0,1
guard.pausetime = 12,11
sparkxy = -10, -76 + (floor(p2bodydist Y))
sparkno = 3
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -7,-5
guard.velocity = -6
guard.ctrltime = 15
air.hittime = 99
air.velocity = -3,-5
fall = 1
fall.recover = 0
yaccel = .48
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
id = 3050

[State 2205, destroy]
type = Destroyself
trigger1 = animtime = 0

;---------------------------------------------------------------------------
;ƒcƒCƒ“Eƒo[ƒ“i•X’Œ2j
[Statedef 3051]
type = S
movetype = A
physics = N
anim = 1033
poweradd = 0
juggle = 3
velset = 0
ctrl = 0
sprpriority = 2

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = s240,1

[State 3000, NotHitBy];–³“G
type = NotHitBy
trigger1 = 1
value = SCA

[State 3300, Helper];•X’Œ3
type = Helper
trigger1 = NumHelper(3052)=0
trigger1 = time = 9
helpertype = normal
name = "Ice 3"
id = 3052
postype = p1
pos = 45,0
stateno = 3052
keyctrl = 0
ownpal = 1
;supermovetime = 9999
pausemovetime = 9999

[State 3000, ƒqƒbƒg’è‹`]
type = HitDef
trigger1 = time = 0
attr = A, HP ;—§‚¿•KŽE‹ZiStanding, Special Attackj
animtype  = back
damage    = 50, 20
SprPriority = 2
getpower  = 0 ;UŒ‚‚ð“–‚Ä‚½Žž‚Éƒpƒ[ƒQ[ƒW‚ð‘‚â‚³‚È‚¢‚æ‚¤‚É‚µ‚Ä‚é
numhits = 4   ;‰ÁŽZ‚³‚ê‚éƒqƒbƒg”
priority  = 6, hit
hitflag = MAFP
guardflag = M
pausetime = 0,1
guard.pausetime = 12,10
sparkxy = -10, -76 + (floor(p2bodydist Y))
sparkno = 3
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -7,-5
guard.velocity = -6
guard.ctrltime = 15
air.hittime = 99
air.velocity = -3,-5
fall = 1
fall.recover = 0
yaccel = .48
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
id = 3051


[State 2205, destroy]
type = Destroyself
trigger1 = animtime = 0

;---------------------------------------------------------------------------
;ƒcƒCƒ“Eƒo[ƒ“i•X’Œ3j
[Statedef 3052]
type = S
movetype = A
physics = N
anim = 1033
poweradd = 0
juggle = 3
velset = 0
ctrl = 0
sprpriority = 2

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = s2000,8

[State 3000, NotHitBy];–³“G
type = NotHitBy
trigger1 = 1
value = SCA


[State 3300, Helper];•X’Œ4
type = Helper
trigger1 = NumHelper(3053)=0
trigger1 = time = 9
helpertype = normal
name = "Ice 4"
id = 3053
postype = p1
pos = 45,0
stateno = 3053
keyctrl = 0
ownpal = 1
;supermovetime = 9999
pausemovetime = 9999

[State 3000, ƒqƒbƒg’è‹`]
type = HitDef
trigger1 = time = 0
attr = A, HP ;—§‚¿•KŽE‹ZiStanding, Special Attackj
animtype  = back
damage    = 50,20
getpower  = 0 ;UŒ‚‚ð“–‚Ä‚½Žž‚Éƒpƒ[ƒQ[ƒW‚ð‘‚â‚³‚È‚¢‚æ‚¤‚É‚µ‚Ä‚é
numhits = 4   ;‰ÁŽZ‚³‚ê‚éƒqƒbƒg”
priority  = 6, hit
sprpriority = 2
hitflag = MAFP
guardflag = M
pausetime = 0,1
guard.pausetime = 12,11
sparkxy = -10, -76 + (floor(p2bodydist Y))
sparkno = 3
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -6,-5
guard.velocity = -6
guard.ctrltime = 15
air.hittime = 99
air.velocity = -3,-5.5
fall = 1
fall.recover = 0
yaccel = .49
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
id = 3052

[State 2205, destroy]
type = Destroyself
trigger1 = animtime = 0

;---------------------------------------------------------------------------
;ƒcƒCƒ“Eƒo[ƒ“i•X’Œ4j
[Statedef 3053]
type = S
movetype = A
physics = N
anim = 1033
poweradd = 0
juggle = 3
velset = 0
ctrl = 0
sprpriority = 2

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = s240,1

[State 3300, Helper];•X’Œ2
type = Helper
trigger1 = NumHelper(3054)=0
trigger1 = time = 9
helpertype = normal
name = "Ice 5"
id = 3051
postype = p1
pos = 50,0
stateno = 3054
keyctrl = 0
ownpal = 1
;supermovetime = 9999
pausemovetime = 9999

[State 3000, NotHitBy];–³“G
type = NotHitBy
trigger1 = 1
value = SCA


[State 3000, ƒqƒbƒg’è‹`]
type = HitDef
trigger1 = time = 0
attr = A, HP ;—§‚¿•KŽE‹ZiStanding, Special Attackj
animtype  = back
damage    = 50, 20
getpower  = 0 ;UŒ‚‚ð“–‚Ä‚½Žž‚Éƒpƒ[ƒQ[ƒW‚ð‘‚â‚³‚È‚¢‚æ‚¤‚É‚µ‚Ä‚é
numhits = 3   ;‰ÁŽZ‚³‚ê‚éƒqƒbƒg”
priority  = 6, hit
sprpriority = 2
hitflag = MAFP
guardflag = M
pausetime = 0,3
guard.pausetime = 12,11
sparkxy = -10, -76 + (floor(p2bodydist Y))
sparkno = 3
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -6,-5
guard.velocity = -6
guard.ctrltime = 15
air.hittime = 99
air.velocity = -3,-5.5
fall = 1
fall.recover = 0
yaccel = .48
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
id = 3054

[State 2205, destroy]
type = Destroyself
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;ƒcƒCƒ“Eƒo[ƒ“i•X’Œ5j

[Statedef 3054]
type = S
movetype = A
physics = N
anim = 1033
poweradd = 0
juggle = 3
velset = 0
ctrl = 0
sprpriority = 2

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = s2000,7

[State 3050, shake]
type = EnvShake
trigger1 = Time =0
time = 80

[State 3000, NotHitBy];–³“G
type = NotHitBy
trigger1 = 1
value = SCA



[State 3000, ƒqƒbƒg’è‹`]
type = HitDef
trigger1 = animelem = 2
attr = A, HP ;—§‚¿•KŽE‹ZiStanding, Special Attackj
animtype  = back
damage    = 50, 15
getpower  = 0 ;UŒ‚‚ð“–‚Ä‚½Žž‚Éƒpƒ[ƒQ[ƒW‚ð‘‚â‚³‚È‚¢‚æ‚¤‚É‚µ‚Ä‚é
numhits = 4   ;‰ÁŽZ‚³‚ê‚éƒqƒbƒg”
priority  = 6, hit
SprPriority = 2
hitflag = MAFP
guardflag = M
pausetime = 0,1
guard.pausetime = 12,11
sparkxy = -10, -76 + (floor(p2bodydist Y))
sparkno = 3
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -7,-5
guard.velocity = -6
guard.ctrltime = 15
air.hittime = 99
air.velocity = -3,-5
fall = 1
fall.recover = 0
yaccel = .48
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
id = 3054

[State 2205, destroy]
type = Destroyself
trigger1 = animtime = 0
;------------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hyper 1 -- Mega beam
[StateDef 3000 ]
type    = S
physics = S
ctrl = 0
anim = 3000
velset = 0,0
poweradd = -1000

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = s60,7

[State 3000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
ID = 918
bindtime = 1
removetime = -2
sprpriority = 3
removeongethit = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 40
sound = S10,1
pos = 20,-70
darken = 1


;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 2
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 3
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------

[State 3010, Helper]
type = Helper
trigger1 = AnimElem = 4
name = "megabeam"
ID = 3010
stateno = 3010
pos = ceil((30)*const(size.xscale)), ceil((-99)*const(size.yscale))
ownpal = 1
supermove

[State 3010, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;³------------------------------------------
; Hyper 1 - beam helper
[StateDef 3010]
type = A
movetype = A
physics = C
anim = 3010
ctrl = 0
sprpriority = 2

[State 0, ScreenBound]
type = ScreenBound
trigger1 = stateno = 3010
value = 0
movecamera = 0,0


[State 3010, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10

[State 3010, noreversal]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 3010, noreversal2]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3010, hitdef]
type = HitDef
trigger1 = timemod= 5,0
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 40,5
pausetime = 0,10
hitsound = S500,0
guardsound = S3,0
sparkno = S550
sparkxy = 0,-45
animtype = Heavy
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 16
air.hittime = 5
airguard.ctrltime = 16
ground.velocity= 6,10
guard.velocity = -9
air.velocity = -5.5,-3.9
airguard.velocity = -5.5, -1.5
ground.cornerpush.veloff = 5
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = .5
fall=0
air.fall = 1
fall.recover = 0
fall.recovertime = 13
kill = 1
guard.kill = 1
fall.kill = 1


[State Lighning]
Type=Targetstate
Triggerall=numtarget
Triggerall=target,stateno!=[120,160]
Trigger1=movehit=1
Trigger1=target,selfanimexist(7696)
value=207

[State 3115, DestroySelf]
type = DestroySelf
trigger1 = Time = 27
;---------------------------------
[Statedef 3299 ]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 1099
poweradd=-1000

[State 3000, dust]
type = Explod
trigger1 = animelem = 1
anim = 6301
ID = 6301
pos=-51,-138
bindtime = 1
removetime = -2
sprpriority = 9
removeongethit = 1

[State 3000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
ID = 918
bindtime = 1
removetime = -2
sprpriority = 3
removeongethit = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 40
sound = S10,1
pos = 20,-70
darken = 1


;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 2
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 3
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------

[State 3300, 1]
type = ChangeState
trigger1 = animtime = 0
value = 3300
ctrl = 1
;-----------------------------------------------------------------------------------------------------------------------
 ; Lost soul's hyper
[Statedef 3300 ]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 1100


[State 191, Explod]
type = Explod
trigger1 = animelem = 1
anim = 6000
ID = 193
pos = 0,-40
removetime=20
scale = 0.6,0.6
sprpriority = 5
ontop = 1
ownpal = 1


[State 191, RemoveExplod]
type = RemoveExplod
trigger1 = animelem = 6
id = 193

[State 1260]
type = Explod
trigger1 = time = 0
pos =0,10
anim = 1227
scale = 0.5,0.5
ontop = 1
ownpal = 1
sprpriority=1




[State 3300, energyball]
type = Explod
trigger1 = time = 1
anim = 8421
ID = 1000
pos = 0,0
scale=1,1
postype = p1
bindtime = 999
removetime = 60
sprpriority = 3
ownpal = 1

[State 3300,]
type = PlaySnd
trigger1 = animelem = 1
value = 100,4


[State 3300, 0]
type = Pause
trigger1 = AnimElem = 1
time = 3
movetime = 3

[State 1090, Souls1]
type = helper
trigger1 = AnimElem = 4
helpertype = normal
name = "LostS"
id = 1111
pos = 20,6
postype = p1
stateno = 1121
ownpal = 0
size.xscale = 1
size.yscale = 1

[State 1260]
type = Explod
trigger1 = AnimElem = 4
pos =  20,6
anim = 1111
scale = 1,1
ontop = 1
ownpal = 1
sprpriority=5
id =  1100

[State 1260]
type = Explod
trigger1 = AnimElem = 4
pos =  64,3
anim = 1111
scale = 1,1
ontop = 1
ownpal = 1
sprpriority=5
id =  1100


[State 3300, Souls1]
type = helper
trigger1 = AnimElem = 4
helpertype = normal
name = "LostS"
id = 1111
pos = 64,3
postype = p1
stateno = 1121
ownpal = 0
size.xscale = 1
size.yscale = 1

type = helper
trigger1 = AnimElem = 4
helpertype = normal
name = "LostS"
id = 1111
pos = 64,3
postype = p1
stateno = 1101
ownpal = 0
size.xscale = 1
size.yscale = 1

[State 1260]
type = Explod
trigger1 = AnimElem = 4
pos =  64,3
anim = 1111
scale = 1,1
ontop = 1
ownpal = 1
sprpriority=5
id =  1100

[State 1260]
type = Explod
trigger1 = AnimElem = 4
pos =  -100,3
anim = 1111
scale = 1,1
ontop = 1
ownpal = 1
sprpriority=5
id =  1100

[State 3300, Souls1]
type = helper
trigger1 = AnimElem = 4
helpertype = normal
name = "LostS"
id = 1111
pos = -100,3
postype = p1
stateno = 1111
ownpal = 0
size.xscale = 1
size.yscale = 1

[State 3300, Souls1]
type = helper
trigger1 = AnimElem = 4
helpertype = normal
name = "LostS"
id = 1111
pos = 100,3
postype = p1
stateno = 1121
ownpal = 0
size.xscale = 1
size.yscale = 1

[State 1260]
type = Explod
trigger1 = AnimElem = 4
pos =  100,3
anim = 1111
scale = 1,1
ontop = 1
ownpal = 1
sprpriority=5
id =  1100



[State 1260]
type = Explod
trigger1 = AnimElem = 4
pos =  -64,3
anim = 1111
scale = 1,1
ontop = 1
ownpal = 1
sprpriority=5
id =  1100

[State 3300, Souls1]
type = helper
trigger1 = AnimElem = 4
helpertype = normal
name = "LostS"
id = 1111
pos = -64,3
postype = p1
stateno = 1121
ownpal = 0
size.xscale = 1
size.yscale = 1


[State 3300, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;------------------------------------------------
 ;============================HYPER1===========================================
[Statedef 3200]
type = S
movetype = A
physics = S
anim = 3200
velset = 0,0
ctrl = 0
sprpriority = 7
poweradd = -1000

[State 3000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
ID = 918
bindtime = 1
removetime = -2
sprpriority = 3
removeongethit = 1

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 2
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 3
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------

[State 0, AllPalFX]
type = AllPalFX
trigger1 = time = 0
time = 1
add = 255,255,255
mul = 256,256,256

[
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S60,3
volume = 255
channel = -1


[State 3200, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 3201
ctrl = 1
;-------------------------------------------------------------------------------
[Statedef 3201]
type    = s
movetype= A
physics = s
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3201

[State 1260]
type = Explod
trigger1 = time = 0
pos =31,-85
anim = 3204
scale = 1,1
ontop = 1
ownpal = 1
id=3204
sprpriority=10

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = anim!=3201
id =  3204
;ignorehitpause =
;persistent =



[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 58
;ignorehitpause =
;persistent =

[State 0, ScreenBound]
type = ScreenBound
trigger1 = stateno = 3201
value = 0
movecamera = 0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = roundnotover
ignorehitpause = 1

[State 3200, VarSet]
type = Varset
trigger1 = time = 0
v = 12
value = -200

[State 3200, VarAdd]
type = VarAdd
trigger1 = time >= 0 && Var(12) < 0
v = 12
value = 1


[State 0, PalFXWiz]
type = BgPalFX
trigger1 = time > 0
time = 1
add = Var(12),Var(12),Var(12)

[State 2000, 1]
type = HitDef
trigger1 = animelem = 3
attr = S, HA
damage = 50,25
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2,Miss
pausetime = 0,0
sparkno = -1
guard.sparkno = S6199
sparkxy = 10,-50
hitsound = S0,22
guardsound = S0,3
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = 0,0
air.hittime = 12
p2stateno = 6193004



[State 0, SPARK1]
type = Explod
trigger1 = animelem = 3
anim = 3202
ID = 3202
pos = 47,-23
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 15
ownpal = 1
ontop = 1
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S0,23
volume = 255
channel = -1

[State 3201, 5]
type = ChangeState
trigger1 = enemy,stateno = 6193004
trigger1 = AnimTime = 0
value = 3205
ctrl = 1

[State 3201, 5]
type = ChangeState
trigger1 = enemy,stateno != 6193004
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Thrown by Aerial drop
[Statedef 6193004]
type = S
movetype = H
physics = S
velset = 0,0
ctrl = 0

[State 0, PalFX]
type = PalFX
trigger1 = time = 0
time = 200
add = 30,20,0
sinadd = 50,50,50,0
invertall = 0
color = 1

[State 0, PosSet]
type = PosSet
trigger1 = pos y >= 0
y = 0
;ignorehitpause =
;persistent =


[State 620, Velocity]
type = Velset
trigger1 = pos y = 0
x = 0
y = 0

[State 0, Gravity]
type = Gravity
trigger1 = 1
trigger1 = pos y != 0
;ignorehitpause =
;persistent =

[State 0, SprPriority]
type = SprPriority
trigger1 = time = 0
value = -1

[State 0, SprPriority]
type = SprPriority
trigger1 = animelem = 2
value = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = time < 0
value = -1

[State 0, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 6193004

[State 2003, Hit ground]
type = SelfState
trigger1 = time >= 200
value = 5050
;---------------------------------------------------------------------------
; Standing Strong Punch
; CNS difficulty: easy
[Statedef 3205]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3205

[State 1260]
type = Explod
trigger1 = time = 0
pos =0,-115
anim = 3206
scale = .7,.7
ontop = 1
ownpal = 1
id=3204
sprpriority=10

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = animelem=2
id =  3206

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time > 0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1
;ignorehitpause =
;persistent =

[State 0, ScreenBound]
type = ScreenBound
trigger1 = stateno = 3005
value = 0
movecamera = 0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = roundnotover
ignorehitpause = 1

[State 3000, VarSet]
type = Varset
trigger1 = time = 0
v = 12
value = -200
ignorehitpause = 1

[State 3000, VarAdd]
type = VarAdd
trigger1 = time >= 0 && Var(12) < 0
v = 12
value = 1
ignorehitpause = 1


[State 0, PalFXWiz]
type = BgPalFX
trigger1 = time > 0
time = 1
add = Var(12),Var(12),Var(12)
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = Time = 0
anim = 6195
ID =  6195
pos = 56,-69
postype = P1
facing = 1
bindtime = -1
removetime = -2
supermove = 1
pausemove =1
scale = 1,1
sprpriority = 7
ontop = 1
shadow = 0
ownpal = 1
removetime = -2
supermovetime = -1
pausemovetime = -1


[State 0, ScreenBound]
type = ScreenBound
trigger1 = stateno = 3005
value = 0
movecamera = 0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = roundnotover
ignorehitpause = 1

[State 3000, VarSet]
type = Varset
trigger1 = time = 0
v = 12
value = -200

[State 3000, VarAdd]
type = VarAdd
trigger1 = time >= 0 && Var(12) < 0
v = 12
value = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = enemy,stateno != 6193004
id = 3203

[State 0: 	AfterImage]
type 		= AfterImage
trigger1        = time = 0
time 		= 84
framegap 	= 1
length 		= 7
paladd 		= 50,15,0
palcontrast 	= 100, 100, 100
trans           = add


[State 0, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 84
add = 100,100,100
mul = 256,256,256
sinadd = 80,80,80,10
invertall = 0
color = 256
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = HitDef
trigger1 = time = 0
attr = S, HA
damage = 212,66
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 50,50
sparkno = 0
guard.sparkno = S6192
sparkxy = 0,-56
hitsound = S0,22
guardsound = S0,3
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = 2,-10
guard.velocity = -3
airguard.velocity = -3
air.type = High
air.velocity = 2,-10
air.hittime = 120
envshake.time = 50
envshake.freq = 100
ground.cornerpush.veloff = -10
air.cornerpush.veloff = -10
down.cornerpush.veloff = -10
guard.cornerpush.veloff = -10
airguard.cornerpush.veloff = -10
fall = 1
fall.recover = 0



[State 3010, Helper]
type = Helper
trigger1 = time > 50
name = "smog"
ID = 3210
stateno = 3210
pos = ceil((-69)*const(size.xscale)), ceil((10)*const(size.yscale))
ownpal = 1
supermove
size.xscale = .5
size.yscale =  .5



[State 0, VelSet]
type = VelSet
trigger1 = time > 50
x = 20
y = 0
;ignorehitpause =
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1,15
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S0,14
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,24
volume = 255
channel = -1

[State 3005, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------------
 [StateDef 3210]
type = A
movetype = A
physics = C
anim = 3210
ctrl = 0
velset=20,0
sprpriority = 2

[State 3210, DestroySelf]
type = DestroySelf
trigger1 = time= 30
