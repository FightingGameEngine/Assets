; States file for {character} -- Basics
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
; Lose (on timeover)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170,0]
type = PlaySnd
trigger1 = Time = 0
value = 13,1

[State 170,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Draw game (on timeover)
[Statedef 175]
type = S
ctrl = 0
anim = 175
velset = 0,0

[State 175,0]
type = PlaySnd
trigger1 = Time = 0
value = 13,0

[State 0, Explod]
type = Explod
trigger1 = animelem = 7
anim = 60
pos = 15,5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.75,0.75

[State 175,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Winposes
[Statedef 180]  ; winpose selector
type = S
ctrl = 0
velset = 0,0

[State 180,Winpose Magneto]
type = ChangeState
trigger1 = Time=0 && enemy,name="Magneto"
value = 183

[State 180,Winpose decider]
type = ChangeState
trigger1 = Time=0
value = 181 + ((Random * 2) / 1000)     ; change the 1 to however many winposes you have

;-----------------------
; Winpose #1 - do better
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181,0]
type = PlaySnd
trigger1 = Time = 50
value = 6,1 + ((Random * 3) / 1000)

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,240]
flag = RoundNotOver

;-----------------------
; Winpose #2 - Mission accomplished
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182,0]
type = PlaySnd
trigger1 = Time = 25
value = 6,1 + ((Random * 3) / 1000)

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,240]
flag = RoundNotOver

;-----------------------
; Winpose Against Magneto
[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 0, Explod]
type = Explod
trigger1 = time = 30
anim = 184
pos = 0,15
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
scale = 1.1,1.1
ontop = 0

[State 183,1]
type = AssertSpecial
trigger1 = Time = [0,320]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
value = 191 + ((Random * 2) / 1000)     ; change the 1 to however many intros you have

;-----------------------
; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, 1]
type = PlaySnd
trigger1 = Time = 70
value = 5, 3 + ((Random * 3) / 1000)
volume = 255

[State 0, Explod]
type = Explod
trigger1 = animelem = 7 && anim = 0
anim = 60
pos = 15,5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.75,0.75

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animtime = 0
value = 0

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,180]
flag = Intro

;-----------------------
; Intro #2
[Statedef 192]
type = S
ctrl = 0
anim = 195
velset = 0,0

[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = 5, 6 + ((Random * 4) / 1000)
volume = 255

[State 0, Explod]
type = Explod
trigger1 = animelem = 7 && anim = 0
anim = 60
pos = 15,5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.75,0.75

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animtime = 0
value = 0

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,130]
flag = Intro

;-----------------------
; Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0

[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = 12,0
volume = 255

[State 0, Explod]
type = Explod
trigger1 = animelem = 7
anim = 60
pos = 15,5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.75,0.75

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Basic Attacks
;-------------------------------------------------------------------------------
; Standing Light Punch

[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 200
poweradd = 15
sprpriority = 2

[State 200, VelMul, corrida]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 200, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,0

[State 200, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 14,19

[State 200, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 15,1
givepower = 15
getpower = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 11,11
sparkno = s7710
sparkxy = -10, -80
guard.sparkno = s6767
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; Standing Medium Punch

[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 210
poweradd = 35
sprpriority = 2

[State 210, VelMul]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 210, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,1

[State 210, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 14,23

[State 210, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 25,1
givepower = 30
getpower = 40
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 11,11
sparkno = s7711
sparkxy = -10, -80
guard.sparkno = s6767
hitsound = s8000,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1

[State 210, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; Close Medium Punch

[Statedef 211]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 211
poweradd = 35
sprpriority = 2

[State 211, VelMul]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 211, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,1

[State 211, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 14,23

[State 211, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 25,1
givepower = 30
getpower = 40
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 11,11
sparkno = s7711
sparkxy = -10, -80
guard.sparkno = s6767
hitsound = s8000,1
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1

[State 211, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; Standing Heavy Punch

[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 220
poweradd = 55
sprpriority = 2

[State 220, VelMul]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 220, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,2

[State 220, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 15,3

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 14, 39

[State 220, Explod]
type = Explod
trigger1 = AnimElem = 5
anim =223
ID = 223
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
sprpriority = 4

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 35,1
givepower = 60
getpower = 80
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 11,11
sparkno = s7712
sparkxy = -10, -60
guard.sparkno = s6767
hitsound = s8000,2
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -10
air.type = Low
air.hittime = 18
air.velocity = -6,-7
envshake.time = 2
envshake.ampl = 2
palfx.time = 40
palfx.add = 235,60,0
palfx.sinadd = 235,60,0,5

[state 220, 8] ;Burning
type = explod
trigger1 = movehit && numexplod(7716) = 0
anim = 7716
id = 7716
pos = Floor(enemynear, const(size.mid.pos.x)),Floor(enemynear, const(size.mid.pos.y))
postype = p2
sprpriority = -1
facing = 1
bindtime = -1
ownpal = 1
ignorehitpause = 1
persistent = 0
removetime = 40

[State 220, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; Close Heavy Punch

[Statedef 221]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 221
poweradd = 55
sprpriority = 2

[State 221, VelMul]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 221, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,2

[State 221, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 15,3

[State 221, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 14, 39

[State 221, Explod]
type = Explod
trigger1 = AnimElem = 5
anim =223
ID = 223
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
sprpriority = 4

[State 221, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 35,1
givepower = 60
getpower = 80
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 11,11
sparkno = s7712
sparkxy = -10, -60
guard.sparkno = s6767
hitsound = s8000,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -10
air.type = Low
air.hittime = 18
air.velocity = -6,-7
envshake.time = 2
envshake.ampl = 2
palfx.time = 40
palfx.add = 235,60,0
palfx.sinadd = 235,60,0,5

[state 221, 8] ;Burning
type = explod
trigger1 = movehit && numexplod(7716) = 0
anim = 7716
id = 7716
pos = Floor(enemynear, const(size.mid.pos.x)),Floor(enemynear, const(size.mid.pos.y))
postype = p2
sprpriority = -1
facing = 1
bindtime = -1
ownpal = 1
ignorehitpause = 1
persistent = 0
removetime = 40

[State 221, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Standing light kick

[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 230
poweradd = 15
sprpriority = 2

[State 230, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,0

[State 230, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 14,20

[State 230, VelMul]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 230, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 15,1
givepower = 15
getpower = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 11,11
sparkno = s7710
sparkxy = -10, -40
guard.sparkno = s6767
hitsound = s8000,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.type = Low
air.hittime = 3
air.velocity = -5,0

[State 230, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Standing medium kick

[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 240
poweradd = 35
sprpriority = 2

[State 240, VelMul]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 240, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,1

[State 240, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 14,21

[State 240, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 35,1
givepower = 30
getpower = 40
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 11,11
sparkno = s7711
sparkxy = -10,-58
guard.sparkno = s6767
hitsound = s8000,4
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0

[State 240, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Close standing medium Kick

[Statedef 241]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 241
poweradd = 35
sprpriority = 2

[State 241, VelMul]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 241, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,1

[State 241, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 14,21

[State 241, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 35,1
givepower = 30
getpower = 40
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 11,11
sparkno = s7711
sparkxy = -10,-58
guard.sparkno = s6767
hitsound = s8000,4
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0

[State 241, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;---------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;Standing strong Kick

[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 250
poweradd = 55
sprpriority = 2

[State 250, VelMul]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 250, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,2

[State 250, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 14,22

[State 250, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 55,1
givepower = 60
getpower = 80
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 11,11
sparkno = s7712
sparkxy = -10, -70
guard.sparkno = s6767
hitsound = s8000,5
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -8,0
air.type = Low
air.hittime = 5
air.velocity = -7,0

[State 250, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Close standing strong Kick

[Statedef 251]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 251
poweradd = 55
sprpriority = 2

[State 251, VelMul]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 251, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,2

[State 251, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 14,22

[State 251, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 45,1
givepower = 60
getpower = 80
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 11,11
sparkno = s7712
sparkxy = -10, -70
guard.sparkno = s6767
hitsound = s8000,5
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -8,0
air.type = Low
air.hittime = 5
air.velocity = -7,0

[State 251, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;Crouching light punch

[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 400
poweradd = 15
sprpriority = 2

[State 400, VelMul]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 400, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,0

[State 400, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 14,19

[State 400, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 15,1
givepower = 15
getpower = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 11,11
sparkno = s7710
sparkxy = -10, -53
guard.sparkno = s6767
hitsound = s8000,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.type = Low
air.hittime = 3
air.velocity = -5,0

[State 400, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-------------------------------------------------------------------------------
;Crouching medium punch

[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 410
poweradd = 35
sprpriority = 2

[State 410, VelMul]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 410, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,1

[State 410, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 14,23

[State 410, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 35,1
givepower = 30
getpower = 40
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 11,11
sparkno = s7711
sparkxy = -10,-58
guard.sparkno = s6767
hitsound = s8000,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0

[State 410, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-------------------------------------------------------------------------------
;Crouching strong punch

[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 6
ctrl = 0
anim = 420
poweradd = 55
sprpriority = 2

[State 420, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400, 2

[State 420, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 15, 1

[State 420, VelMul]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 420, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 45,1
givepower = 60
getpower = 80
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 11,11
sparkno = s7712
sparkxy = -10, -53
guard.sparkno = s6767
hitsound = s8000,2
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8, 0
air.velocity = 0,-14
airguard.velocity = -6,0

[State 420, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-------------------------------------------------------------------------------
;Crouching light kick

[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 430
poweradd = 15
sprpriority = 2

[State 430, VelMul]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 430, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,0

[State 430, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 14,20

[State 430, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 15,1
givepower = 15
getpower = 20
animtype = Light
hitflag = MA
guardflag = L
priority = 4, Hit
pausetime = 11,11
sparkno = s7710
sparkxy = -10, -30
guard.sparkno = s6767
hitsound = s8000,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.type = Low
air.hittime = 3
air.velocity = -5,0

[State 430, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-------------------------------------------------------------------------------
;Crouching medium kick

[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 440
poweradd = 35
sprpriority = 2

[State 440, VelMul]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 440, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,1

[State 440, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 14,21

[State 440, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 35,1
givepower = 30
getpower = 40
animtype = Medium
hitflag = MA
guardflag = L
priority = 4, Hit
pausetime = 11,11
sparkno = s7711
sparkxy = -10,-30
guard.sparkno = s6767
hitsound = s8000,4
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0

[State 440, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-------------------------------------------------------------------------------
;Crouching strong kick

[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 6
ctrl = 0
anim = 450
poweradd = 55
sprpriority = 2

[State 450, VelMul]
type = VelMul
trigger1 = Time = 0
trigger1 = PrevStateNo = 100
x = .8

[State 450, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,2

[State 450, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 14,22

[State 450, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 45,1
givepower = 60
getpower = 80
animtype = up
hitflag = MAF
guardflag = L
priority = 4, Hit
pausetime = 11,11
sparkno = s7712
sparkxy = -10, -50
guard.sparkno = s6767
hitsound = s8000,5
guardsound = 6,0
ground.type = High
ground.slidetime = 30
ground.hittime  = 40
ground.velocity = 0, -14
air.velocity = 0,-14
airguard.velocity = -6,0
fall.recover = 0

[State 450, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-------------------------------------------------------------------------------
;Jumping light punch

[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 600
poweradd = 15
sprpriority = 2

[State 610, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,0

[State 610, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 14, 19

[State 600, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 15,1
givepower = 15
getpower = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 11,11
sparkno = s7710
sparkxy = -10, -63
guard.sparkno = s6767
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 25
ground.velocity = -6
air.fall = 0
air.velocity = -3.2, -10.5

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;-------------------------------------------------------------------------------
;Jumping medium punch

[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 610
poweradd = 35
sprpriority = 2

[State 610, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,1

[State 610, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 14,23

[State 610, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 35,1
givepower = 30
getpower = 40
animtype = medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 11,11
sparkno = s7711
sparkxy = -10,-68
guard.sparkno = s6767
hitsound = s8000,1
guardsound = 6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 20
ground.velocity = -8
air.fall = 0
air.velocity = -3.2, -7.5

[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;-------------------------------------------------------------------------------
;Jumping strong punch

[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 620
poweradd = 55
sprpriority = 2

[State 620, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,2

[State 620, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 15,1

[State 620, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 14, 39

[State 620, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 45,1
givepower = 50
getpower = 70
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 11,11
sparkno = s7712
sparkxy = -10, -53
guard.sparkno = s6767
hitsound = s8000,2
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 25
ground.velocity = -10
air.velocity = -12,10
air.hittime = 25
air.fall = 1
palfx.time = 40
palfx.add = 235,60,0
palfx.sinadd = 235,60,0,5
ID = 650

[State 420, Custom Trip]
type = TargetState
triggerall = numtarget(650)
trigger1 = target,stateno!=[120,155]
trigger1 = movehit=1 && !movereversed
trigger1 = !target(650),ishelper
trigger1 = target(650),statetype = A
;trigger1 = target(215),time=0 && target(215),movetype=H
value = 7715
ID = 650
ignorehitpause = 1
persistent = 0


[state 0]
type = posfreeze
trigger1 = prevstateno = [600,650]
trigger1 = movehit = 1


[state 0]
type = screenBound 
trigger1 = prevstateno = [600,650] 
trigger1 = movehit
trigger1 = FrontEdgeBodyDist >= 30	
value = 0

[state 451,6]
type = changestate
trigger1 = prevstateno = [600,650]
trigger1 = movehit
trigger1 = backedgebodydist <= 100
value = 7710
ctrl = 0

[state 620, 8] ;Burning
type = explod
trigger1 = movehit && numexplod(7716) = 0
anim = 7716
id = 7716
pos = Floor(enemynear, const(size.mid.pos.x)),Floor(enemynear, const(size.mid.pos.y))
postype = p2
sprpriority = -1
facing = 1
bindtime = -1
ownpal = 1
ignorehitpause = 1
persistent = 0
removetime = 40

[State 620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;-------------------------------------------------------------------------------
;Jumping light kick

[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 630
poweradd = 15
sprpriority = 2

[State 630, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,0

[State 630, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 15,1
givepower = 15
getpower = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 11,11
sparkno = s7710
sparkxy = -10, -63
guard.sparkno = s6767
hitsound = s8000,3
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.fall = 0
air.velocity = -3.2, -10.5
air.hittime = 25

[State 630, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50


;-------------------------------------------------------------------------------
;Jumping medium kick

[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 640
poweradd = 35
sprpriority = 2

[State 640, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,1

[State 251, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 14,21

[State 640, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 35,1
givepower = 30
getpower = 40
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 11,11
sparkno = s7711
sparkxy = -10,-68
guard.sparkno = s6767
hitsound = s8000,4
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
air.fall = 0
air.velocity = -3.2, -7.5
air.hittime = 25

[State 640, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;-------------------------------------------------------------------------------
;Jumping strong kick

[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 650
poweradd = 55
sprpriority = 2
 

[State 650, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,2

[State 650, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 14,22

[State 650, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 45,1
givepower = 50
getpower = 70
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 11,11
sparkno = s7712
sparkxy = -10, -53
guard.sparkno = s6767
hitsound = s8000,5
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 25
ground.velocity = -10
air.velocity = -12,10
air.fall = 1
air.hittime = 25
ID = 650

[State 420, Custom Trip]
type = TargetState
triggerall = numtarget(650)
trigger1 = target,stateno!=[120,155]
trigger1 = movehit=1 && !movereversed
trigger1 = !target(650),ishelper
trigger1 = target(650),statetype = A
;trigger1 = target(215),time=0 && target(215),movetype=H
value = 7715
ID = 650
ignorehitpause = 1
persistent = 0


[state 0]
type = posfreeze
trigger1 = prevstateno = [600,650]
trigger1 = movehit = 1


[state 0]
type = screenBound 
trigger1 = prevstateno = [600,650] 
trigger1 = movehit
trigger1 = FrontEdgeBodyDist >= 30	
value = 0

[state 451,6]
type = changestate
trigger1 = prevstateno = [600,650]
trigger1 = movehit
trigger1 = backedgebodydist <= 100
value = 7710
ctrl = 0

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;---------------------------------------------------------------------------
;Super Jump opponent locator
[Statedef 910]
type    = A
physics = N
ctrl = 0
sprpriority = 2

[State 910, arrow]
type = ChangeAnim
trigger1 = IsHelper(0)
;trigger1 = TeamSide = 2
value = 910

[State 910, destroyself]
type = DestroySelf
triggerall = IsHelper(0)
trigger1 = RootDist Y > 0

;-----------------------
; Safe fall (from superjump, or jumping attack)
[StateDef 948]
type = A
movetype = I
physics = A
ctrl = 1

; neutral
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X = 0)
value = 48

; forwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X > 0)
value = 49

; backwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X < 0)
value = 50

;----- begin of Hyper Effects Helpers-----
;;;;;###################################################################################

;----------------------------[2002 UM MAX2 BG]----------------------------------
[Statedef 40001]
anim = 9999

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noBG
flag2 = noFG

;[State 40001, Tile #1-7]
;type = Explod
;triggerall = !numexplod(15600)
;trigger1 = !time
;anim = 15600
;ID = 15600
;pos = 0,0
;postype = left  ;p2,front,back,left,right
;removetime = 10
;pausemovetime = -1
;supermovetime = -1
;scale = 1.1,1.1
;sprpriority = -20
;ownpal = 1
;ignorehitpause = 1
;bindtime = -1
;persistent = 0

[State 40001, Tile #1-7]
type = Explod
trigger1 = !time
trigger2 = numexplod(15601) = 0
anim = 15600
ID = 15601
pos = 0,0
postype = left  ;p2,front,back,left,right
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1.1,1.1
sprpriority = -9999
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 40001, Glass Break]
type = ChangeState
;trigger1 = root, stateno != 3300 && root, stateno != 3350
;trigger2 = root, stateno = 3300 && root,animelemtime(61) = 1  || root, stateno = 3350 && root,animelemtime(50) = 1
trigger1 = root, stateno !=[3000,4999]
;trigger2 = root, NumHelper(8400) !=0|| root, NumHelper(8420) !=0
value = stateno+1

[Statedef 40002]
anim = 9999

;[State 40002, RemoveExplod]
;type = RemoveExplod
;trigger1 = !time
;id = 15600

[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15601

[State 40002, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S14001,0
volume = 200

[State 40001, Glass Break]
type = Explod
triggerall = !numexplod(15640)
trigger1 = !time
anim = 15604
ID = 15640
pos = 0,0
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
scale = 1,1
sprpriority = -20
ownpal = 1
bindtime = -1
ignorehitpause = 1

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;--------------------------[2002 UM MAX2 PORTRAIT]------------------------------
[Statedef 40003]
anim = 9999

[State 40001, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,abs((240*var(0))-81)
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,abs((240*var(0))-81)
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607
ID = 15660
pos = 0,abs((240*var(0))-81)
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40001, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607
ID = 15661
pos = 0,abs((240*var(0))-81)
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15650
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15650
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15650
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15650
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15650
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15650
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15650
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15650
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15651
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15651
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15651
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15651
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15651
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15651
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15651
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15651
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15660
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15660
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15660
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15660
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15660
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15660
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15660
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15660
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15661
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15661
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15661
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15661
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15661
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15661
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15661
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15661
scale = 1,1

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 60

[Statedef 40004]
anim = 9999

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;------- End of Hyper effects helpers

