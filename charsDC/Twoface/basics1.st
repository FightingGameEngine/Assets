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
value = 6,1

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
value = 6,2

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

[State 180,Winpose decider]
type = ChangeState
trigger1 = Time = 0
value = 181 + ((Random * 3) / 1000)     ; change the 1 to however many winposes you have

;-----------------------
; Winpose #1 - do better
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181,0]
type = PlaySnd
trigger1 = Time = 0
value = 50,14

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,170]
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
trigger1 = Time = 0
value = 6,1


[State 182, girl1]
type = Explod
trigger1 = !Time
anim = 184
ID = 184
pos = 0,20
removetime = 250
bindtime = 250
sprpriority = 1
;ontop = 1
ownpal = 1
removeongethit = 1

;[State 182, girl1]
;type = Helper
;trigger1 = Time = 0
;stateno = 184
;postype = P1
;pos = -124,20
;ownpal = 1
;keyctrl = 0
;helpertype = normal


;[State 182, girl2]
;type = Helper
;trigger1 = Time = 0
;stateno = 185
;postype = P1
;pos = 124,20
;ownpal = 1
;keyctrl = 0
;helpertype = normal

[State 182, girl2]
type = Explod
trigger1 = !Time
anim = 185
ID = 185
pos = 30,20
removetime = 250
bindtime = 250
sprpriority = 1
;ontop = 1
ownpal = 1
removeongethit = 1


[State 182, 3];jump
type = playsnd
trigger1 = time = 0
value = 50,13

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,230]
flag = RoundNotOver



;---------------------------------------------------------------------------
[Statedef 183]
type = S
ctrl = 0
anim = 1215

[state 183, no lifebars]
type = assertspecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 183, 2]             
type = AssertSpecial
trigger1 = Time = [0,465]
flag = Intro

[State 183, 3];Ghost
type = Explod
trigger1 = time = 200
Anim = 1212
Pos = 0, 0
vel = 9,0 ;12,0
sprpriority = -4
removetime = 285
Bindtime = 1
shadow = -1,0,0

[State 183, 3];Ghostjump off
type = Explod
trigger1 = time = 225;285
Anim = 1217
Pos = 0,0;320, -2
;vel = 12,0
sprpriority = -5
removetime = 12
Bindtime = 1
shadow = -1,0,0

;[State 193, 3];bike alone
;type = Explod
;trigger1 = time = 200
;Anim = 1212
;Pos = 80, 10
;vel = 12,0
;sprpriority = -5
;removetime = 200
;Bindtime = 1
;shadow = -1,0,0




;[State 193, 3];fire
;type = Explod
;trigger1 = time = 200
;Anim = 192
;Pos = -1000, 3
;vel = 12,0
;sprpriority = -4
;removetime = 200
;Bindtime = 1

[State 183, 3];jumping ghost
type = Explod
trigger1 = time = 230;299
Anim = 1218
Pos = 0,0;50, 0
;vel = -3,0
sprpriority = -5
removetime = 12
Bindtime = 1
shadow = -1,0,0

[State 183, 3];police1 voice
type = playsnd
trigger1 = time = 0
value = 10,7


[State 183, 3];bike voice
type = playsnd
trigger1 = time = 150
value = 10,4

[State 183, 3];police1 voice
type = playsnd
trigger1 = time = 100
value = 10,7

[State 183, 3];police1 voice
type = playsnd
trigger1 = time = 125
value = 10,7

[State 183, 3];police1 voice
type = playsnd
trigger1 = time = 175
value = 10,7



[State 183, 3];jump
type = playsnd
trigger1 = time = 0
value = 50,0


[State 183, 4];Policecar1
type = Explod
trigger1 = time = 250
Anim = 1200
Pos = -1000, -5
vel = 12,0
sprpriority = -5
removetime = 200
Bindtime = 1
shadow = -1,0,0

[State 183, 4];Policecar1wheels
type = Explod
trigger1 = time = 250
Anim = 1201
Pos = -1000, -5
vel = 12,0
sprpriority = -4
removetime = 200
Bindtime = 1

[State 183, 4];Policecar1lamp
type = Explod
trigger1 = time = 250
Anim = 1202
Pos = -1000, -5
vel = 12,0
sprpriority = -4
removetime = 200
Bindtime = 1
shadow = -1,0,0

[State 183, 4];Policecar1number
type = Explod
trigger1 = time = 250
Anim = 1203
Pos = -1000, -5
vel = 12,0
sprpriority = -4
removetime = 200
Bindtime = 1

[State 183, 4];Policecar1policeman
type = Explod
trigger1 = time = 250
Anim = 1207
Pos = -1000, -5
vel = 12,0
sprpriority = -4
removetime = 200
Bindtime = 1
shadow = -1,0,0

[State 183, 4];Policecar1blueglow
type = Explod
trigger1 = time = 250
Anim = 1214
Pos = -1000, -5
vel = 12,0
sprpriority = -4
removetime = 200
Bindtime = 1
Trans = add
alpha=200,75
xscale = 0.5         
yscale = 0.5

[State 183, 4];Policecar1redglow
type = Explod
trigger1 = time = 250
Anim = 1213
Pos = -1000, -5
vel = 12,0
sprpriority = -6
removetime = 200
Bindtime = 1
Trans = add
alpha=200,75
xscale = 0.5         
yscale = 0.5

[State 183, 4];Dustcloud
type = Explod
trigger1 = time = 340
Anim = 1216
Pos = 120, -5
sprpriority = -1
Bindtime = 1
shadow = -1,0,0

[State 183, 5];Dustcloud2
type = Explod
trigger1 = time = 330
Anim = 1216
Pos = 160, 5
sprpriority = 2
Bindtime = 1
shadow = -1,0,0
Trans = add
alpha=200,75

[State 183, 5];Dustcloud3
type = Explod
trigger1 = time = 360
Anim = 189
Pos = 160, 5
sprpriority = -1
Bindtime = 1
shadow = -1,0,0



[State 183, 5];Policecar2
type = Explod
trigger1 = time = 350
Anim = 1200
Pos = -1000, 5
vel = 12,0
sprpriority = 2
removetime = 200
Bindtime = 1
shadow = -1,0,0

[State 183, 5];Policecar2wheels
type = Explod
trigger1 = time = 350
Anim = 1201
Pos = -1000, 5
vel = 12,0
sprpriority = 3
removetime = 200
Bindtime = 1

[State 183, 5];Policecar2lamp
type = Explod
trigger1 = time = 350
Anim = 1202
Pos = -1000, 5
vel = 12,0
sprpriority = 3
removetime = 200
Bindtime = 1
shadow = -1,0,0

[State 183, 5];Policecar2number
type = Explod
trigger1 = time = 350
Anim = 1204
Pos = -1000, 5
vel = 12,0
sprpriority = 3
removetime = 200
Bindtime = 1

[State 183, 5];Policecar2policeman
type = Explod
trigger1 = time = 350
Anim = 1208
Pos = -1000, 5
vel = 12,0
sprpriority = 3
removetime = 200
Bindtime = 1
shadow = -1,0,0

[State 183, 5];Policecar2blueglow
type = Explod
trigger1 = time = 350
Anim = 1214
Pos = -1000, 10
vel = 12,0
sprpriority = 5
removetime = 200
Bindtime = 1
Trans = add
alpha=200,75
xscale = 0.5         
yscale = 0.5 

[State 183, 5];Policecar2redglow
type = Explod
trigger1 = time = 350
Anim = 1213
Pos = -1000, 5
vel = 12,0
sprpriority = 1
removetime = 200
Bindtime = 1
Trans = add
alpha=200,75
xscale = 0.5         
yscale = 0.5

[State 183, 5];Dustcloud
type = Explod
trigger1 = time = 440
Anim = 1216
Pos = 90, 5
sprpriority = 8
Bindtime = 1
shadow = -1,0,0

[State 183, 5];Dustcloud2
type = Explod
trigger1 = time = 400
Anim = 7009
Pos = 50, 5
sprpriority = 2
Bindtime = 1
shadow = -1,0,0

[State 183, 6];Policecar3
type = Explod
trigger1 = time = 375
Anim = 1200
Pos = -1000, -5
vel = 12,0
sprpriority = -5
removetime = 200
Bindtime = 1
shadow = -1,0,0

[State 183, 6];Policecar3wheels
type = Explod
trigger1 = time = 375
Anim = 1201
Pos = -1000, -5
vel = 12,0
sprpriority = -4
removetime = 200
Bindtime = 1

[State 183, 6];Policecar3lamp
type = Explod
trigger1 = time = 375
Anim = 1202
Pos = -1000, -5
vel = 12,0
sprpriority = -4
removetime = 200
Bindtime = 1
shadow = -1,0,0

[State 183, 6];Policecar3number
type = Explod
trigger1 = time = 375
Anim = 1205
Pos = -1000, -5
vel = 12,0
sprpriority = -4
removetime = 200
Bindtime = 1
shadow = -1,0,0

[State 183, 6];Policecar3policeman
type = Explod
trigger1 = time = 375
Anim = 1209
Pos = -1000, -5
vel = 12,0
sprpriority = -4
removetime = 200
Bindtime = 1
shadow = -1,0,0

[State 183, 6];Policecar3blueglow
type = Explod
trigger1 = time = 375
Anim = 1214
Pos = -1000, -5
vel = 12,0
sprpriority = -3
removetime = 200
Bindtime = 1
Trans = add
alpha=200,75
xscale = 0.5         
yscale = 0.5 

[State 183, 6];Policecar3redglow
type = Explod
trigger1 = time = 375
Anim = 1213
Pos = -1000, -5
vel = 12,0
sprpriority = -6
removetime = 200
Bindtime = 1
Trans = add
alpha=200,75
xscale = 0.5         
yscale = 0.5

[State 183, 7];Policecar4
type = Explod
trigger1 = time = 425
Anim = 1200
Pos = -1000, 4
vel = 12,0
sprpriority = 5
removetime = 200
Bindtime = 1
shadow = -1,0,0

[State 183, 7];Policecar4wheels
type = Explod
trigger1 = time = 425
Anim = 1201
Pos = -1000, 4
vel = 12,0
sprpriority = 6
removetime = 200
Bindtime = 1

[State 183, 7];Policecar4lamp
type = Explod
trigger1 = time = 425
Anim = 1202
Pos = -1000, 4
vel = 12,0
sprpriority = 6
removetime = 200
Bindtime = 1
shadow = -1,0,0

[State 183, 7];Policecar4number
type = Explod
trigger1 = time = 425
Anim = 1206
Pos = -1000, 4
vel = 12,0
sprpriority = 6
removetime = 200
Bindtime = 1

[State 183, 7];Policecar4policeman
type = Explod
trigger1 = time = 425
Anim = 1210
Pos = -1000, 4
vel = 12,0
sprpriority = 6
removetime = 200
Bindtime = 1
shadow = -1,0,0

[State 183, 7];Policecar4blueglow
type = Explod
trigger1 = time = 425
Anim = 1214
Pos = -1000, 4
vel = 12,0
sprpriority = 7
removetime = 200
Bindtime = 1
Trans = add
alpha=200,75
xscale = 0.5         
yscale = 0.5 

[State 183, 7];Policecar4redglow
type = Explod
trigger1 = time = 425
Anim = 1213
Pos = -1000, 4
vel = 12,0
sprpriority = 4
removetime = 200
Bindtime = 1
Trans = add
alpha=200,75
xscale = 0.5         
yscale = 0.5

[State 183, 7];Dustcloud
type = Explod
trigger1 = time = 430
Anim = 1216
Pos = 110, 0
sprpriority = 2
Bindtime = 1
shadow = -1,0,0


[State 183, 7];Dustcloud2
type = Explod
trigger1 = time = 450
Anim = 1216
Pos = 60, 5
sprpriority = 8
Bindtime = 1
shadow = -1,0,0

[State 183, 8];Ghost 
type = Explod
trigger1 = time = 0
Anim = 1211
Pos = 0, 0
sprpriority = -5
removetime =338 ;238
Bindtime = -1
shadow = -1,0,0

[State 183, 8];Ghost 
type = changeanim
trigger1 = time = 568
value = 0

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,520]
flag = RoundNotOver


;----------------------------------------
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
trigger1 = Time = 0
value = 50,11

[State 191, Explod]
type = Explod
trigger1 = Time = 0
anim = 2305
ID = 2305
pos = -48,23
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1

[State 191, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 100
id = 2305

[State 192, 2]             
type = AssertSpecial
trigger1 = Time = [0,170]
flag = Intro


;-----------------------
; Intro 2 - car
[Statedef 192]
type = S
ctrl = 0
anim = 192
sprpriority = 250

[State 192, playsnd1]
type = PlaySnd
trigger1 = time =0
value = 10,4


[State 192, playsnd1]
type = PlaySnd
trigger1 = animelem = 1
value = 171,11

[State 192, playsnd2]
type = PlaySnd
trigger1 = AnimElem = 25
value = 9,4;5,0

[state 192, no lifebars]
type = assertspecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 192, bike flying offscreen]
type = Explod
trigger1 = AnimElem = 17
anim = 992
pos =  0,0      ;0,40   ;60,0
vel = 0,0   ;25,0
;removetime = 60 ;-2
sprpriority = 290

[State 192, 2]             
type = AssertSpecial
trigger1 = Time = [0,70]
flag = Intro
;---------------------------------------------------

;-----------------------------------------------------
; Stand Light Punch
[StateDef 200]
anim = 200
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 30

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 30
guardflag = MA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-99
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Medium Punch
[StateDef 210]
anim = 210
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 65

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 210, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,1

[State 210, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 65
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-100
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State 210, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Punch
[StateDef 220]
anim = 220
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 96

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 96
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Light Kick
[StateDef 230]
anim = 230
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 25

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 230, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 230, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 25
guardflag = MAFD
pausetime = 6,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-30
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3

[State 230, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Kick
[StateDef 240]
anim = 240
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 65

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 240, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 240, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 65
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-80
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State 240, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Kick
[StateDef 250]
anim = 250
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 96

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 250, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 96
guardflag = MA
pausetime = 6,6
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -7
guard.velocity = -4
air.velocity = -4,-8

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Crouch Light Punch
[StateDef 400]
anim = 400
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 30

[State 400, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 400, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 400, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 30
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-40
animtype = Light
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -2
air.velocity = -3,-6

[State 400, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[StateDef 410]
anim = 410
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 65

[State 410, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 410, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 410, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 65
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-40
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8
guard.velocity = -10
air.velocity = -3,-6

[State 410, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Punch
[StateDef 420]
anim = 420
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 65

[State 420, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 420, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 420, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 25
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-40
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = -2,-11

[State 420, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 455
ID = 455
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
;removetime = -2
;sprpriority = 2
ontop = 1
removeongethit = 1

[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Kick
[StateDef 430]
anim = 430
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 25

[State 430, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 430, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 430, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 25
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,0
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -1
air.velocity = -2,-3

[State 430, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[StateDef 440]
anim = 440
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 10

[State 440, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 440, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 440, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 30
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-50
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6,-2
guard.velocity = -3
air.velocity = -6,-6

[State 440, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Kick
[StateDef 450]
anim = 450
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 25

[State 450, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 450, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 450, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
hitflag = M
damage = 60
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,0
animtype = Back
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -3

[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Punch
[StateDef 600]
anim = 600
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 25

[State 600, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 600, grunt]
type = PlaySnd
trigger1 = Time = 1
value = 1,0

[State 600, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 25
guardflag = HA
pausetime = 4,8
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-70
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Punch
[StateDef 610]
anim = 610
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 65

[State 610, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 610, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 610, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 65
guardflag = HA
pausetime = 4,8
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-70
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Punch
[StateDef 620]
anim = 620
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 96

[State 620, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 620, grunt]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2

[State 620, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 96
guardflag = HA
pausetime = 0,8
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 630]
anim = 630
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 22

[State 630, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 630, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 630, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 22
guardflag = HA
pausetime = 4,8
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-10
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 630, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Kick
[StateDef 640]
anim = 640
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 65

[State 640, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 640, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 640, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 65
guardflag = HA
pausetime = 4,8
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-10
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 640, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Kick
[StateDef 650]
anim = 650
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 92

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 650, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 650, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 92
guardflag = HA
pausetime = 0,8
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-10
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


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


;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
;hyper coisas
;----- begin of Hyper Effects Helpers-----
;;;;;###################################################################################

;----------------------------[2002 UM MAX2 BG]----------------------------------
;acid
[Statedef 7051]
physics=N
velset=0,0
anim=7051
sprpriority=3
[State 7051, grav]
type=gravity
trigger1=1
[State 7051, vel]
type=velset
trigger1=!time
x=-3+(random/250.0)
y=-3-(random/250.0)

[State 226, dust]
type=helper
trigger1=time = 3
helpertype=normal
stateno=70511
ID=70511
name="acid2"
postype=p1
ownpal=1

[State 7051, trans]
type=trans
trigger1=1
trans=addalpha
alpha=256,128

[State 7051, end]
type=destroyself
trigger1=frontedgedist<-40
value=889
[State 7051, end]
type=changestate
trigger1=vel y>0&&pos y>=-5
value=889

[Statedef 70511]
physics=N
velset=0,0
anim=7051
sprpriority=3
[State 7051, grav]
type=gravity
trigger1=1
[State 7051, vel]
type=velset
trigger1=!time
x=-3.5+(random/250.0)
y=-2.5-(random/250.0)


[State 7051, trans]
type=trans
trigger1=1
trans=addalpha
alpha=256,128

[State 7051, end]
type=destroyself
trigger1=frontedgedist<-40
value=889
[State 7051, end]
type=changestate
trigger1=vel y>0&&pos y>=-5
value=889


[Statedef 889]
physics=N
velset=0,0
anim=889
sprpriority=-2
[State 7052, vel]
type=velset
trigger1=1
x=0
y=0
[State 7052, pos]
type=posset
trigger1=1
y=0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 8,20



[State 7052, trans]
type=trans
trigger1=1
trans=addalpha
alpha=256,256
[State 7052, trans]
type=trans
trigger1=animelemtime(4)<0
trans=addalpha
alpha=256,128
[State 7052, fadeout]
type=trans
trigger1=animelemtime(4)=[0,20]
trans=addalpha
alpha=ceil(256-12.8*animelemtime(4)),ceil(128+6.4*animelemtime(4))
[State 7052, end]
type=destroyself
trigger1=!animtime
value=7052


;-----------------------acid
[Statedef 1005]
type=A
physics=N
movetype=A
anim=888
ctrl=0
velset=0,0
sprpriority=4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 8,10




[State 1005, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,AA,AP,AT
stateno=1006
ignorehitpause=1
[State 1005, hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 0, VelSet]
type = VelSet
trigger1 = time= 1
x = 2
;y =
;ignorehitpause = 0
;persistent = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time = 10
;x =
y = 1
;ignorehitpause = 0
;persistent = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time = 20
;x =
y = 2


[State 1005, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
value=2,2
persistent=0
ignorehitpause=1

[State 1005, hit]
type=hitdef
trigger1=1
priority=7,Hit
attr=S,SP
damage=ceil(90*(root,fvar(12))),5
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=4,4
hitsound = s8,20
sparkno=-1
guard.sparkno=s8001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-10,0
ground.cornerpush.veloff=0
air.velocity=-4,-4
air.fall=1
getpower=180*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4
yaccel=.5

[State 1005, hit]
type=hitdef
trigger1=(sysvar(3)%2)
priority=7,Hit
attr=S,SP
damage=90,5
affectteam=F
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=4,4
sparkno=-1
guard.sparkno=s8001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-10,0
ground.cornerpush.veloff=0
air.velocity=-4,-4
air.fall=1
getpower=180*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4
yaccel=.5



[State 1005, end]
type=changestate
trigger1=movecontact
value=7051
ignorehitpause=1

[State 0, ChangeState]
type = ChangeState
trigger1 =  pos y >0
value = 1007
;ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1


;-----------------------acid
[Statedef 1006]
type=A
physics=N
movetype=A
anim=888
ctrl=0
velset=0,0
sprpriority=4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 8,10

[State 1005, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,AA,AP,AT
stateno=1006
ignorehitpause=1

[State 1005, hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 0, VelSet]
type = VelSet
trigger1 = time= 1
x = 4
;y =
;ignorehitpause = 0
;persistent = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time = 10
;x =
y = 1
;ignorehitpause = 0
;persistent = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time = 20
;x =
y = 2


[State 1005, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
value=2,2
persistent=0
ignorehitpause=1

[State 1005, hit]
type=hitdef
trigger1=1
priority=7,Hit
attr=S,SP
damage=ceil(90*(root,fvar(12))),5
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=4,4
hitsound = s8,20
sparkno=-1
guard.sparkno=s8001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-10,0
ground.cornerpush.veloff=0
air.velocity=-4,-4
air.fall=1
getpower=180*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4
yaccel=.5

[State 1005, hit]
type=hitdef
trigger1=(sysvar(3)%2)
priority=7,Hit
attr=S,SP
damage=90,5
affectteam=F
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=4,4
sparkno=-1
guard.sparkno=s8001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-10,0
ground.cornerpush.veloff=0
air.velocity=-4,-4
air.fall=1
getpower=180*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4
yaccel=.5



[State 1005, end]
type=changestate
trigger1=movecontact
value=7051
ignorehitpause=1

[State 0, ChangeState]
type = ChangeState
trigger1 =  pos y >0
value = 1007
;ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1

;-----------------------

[Statedef 1007]
type=A
physics=N
movetype=I
anim=900
velset=0,0
ctrl=0
sprpriority=4

[State 0, Explod]
type = Explod
trigger1 = time = 1
anim = 889
;ID =
;pos = 0,0
;postype = p1
;facing = 1
;vfacing = 1
;bindtime = 1
;vel = 0,0
;accel = 0,0
;random = 0,0
removetime = 23
;supermove = 0
scale = 1.25, 1.25



[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 2, 3
;volume = 0
;channel = -1
;lowpriority =
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 8, 20
;volume = 0
;channel = -1
;lowpriority =
ignorehitpause = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 23
ignorehitpause = 1
;persistent = 1

;-----------------------acid
[Statedef 1008]
type=A
physics=N
movetype=A
anim=888
ctrl=0
velset=0,0
sprpriority=4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 8,10

[State 1005, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,AA,AP,AT
stateno=1006
ignorehitpause=1
[State 1005, hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 0, VelSet]
type = VelSet
trigger1 = time= 1
x = 6
;y =
;ignorehitpause = 0
;persistent = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time = 10
;x =
y = 1
;ignorehitpause = 0
;persistent = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time = 20
;x =
y = 2


[State 1005, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
value=2,2
persistent=0
ignorehitpause=1

[State 1005, hit]
type=hitdef
trigger1=1
priority=7,Hit
attr=S,SP
damage=ceil(90*(root,fvar(12))),5
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=4,4
hitsound = s8,20
sparkno=-1
guard.sparkno=s8001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-10,0
ground.cornerpush.veloff=0
air.velocity=-4,-4
air.fall=1
getpower=180*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4
yaccel=.5

[State 1005, hit]
type=hitdef
trigger1=(sysvar(3)%2)
priority=7,Hit
attr=S,SP
damage=90,5
affectteam=F
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=4,4
sparkno=-1
guard.sparkno=s8001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-10,0
ground.cornerpush.veloff=0
air.velocity=-4,-4
air.fall=1
getpower=180*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4
yaccel=.5



[State 1005, end]
type=changestate
trigger1=movecontact
value=7051
ignorehitpause=1

[State 0, ChangeState]
type = ChangeState
trigger1 =  pos y >0
value = 1007
;ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1

[Statedef 1055]
type=A
physics=N
movetype=A
anim=1005
ctrl=0
velset=0,0
sprpriority=4
juggle=5

[State 1055, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,AA,AP,AT
stateno=1006
ignorehitpause=1
[State 1055, hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 1055, strengthvar]
type=varset
trigger1=!time
var(10)=root,var(10)
[State 1055, movehitvar]
type=varset
trigger1=movecontact&&numtarget
trigger1=!(target,ishelper)
var(3)=1
ignorehitpause=1
[State 1055, parentvar]
type=varset
trigger1=!time&&!prevstateno
var(4)=(parent,ishelper)
[State 1055, timevar]
type=varadd
trigger1=time
var(1)=1

[State 1005, reflectionvar]
type=varset
trigger1=!time&&!prevstateno
sysvar(3)=123000
[State 1005, reflectedpos]
type=posadd
trigger1=!time&&sysvar(4)=1
x=20
[State 1005, wasreflected]
type=varset
trigger1=sysvar(4)
sysvar(4)=0

[State 1055, vel]
type=velset
trigger1=1
x=ifelse(var(10)=3,4.3,ifelse(var(10)=2,3.6,2.9))
y=ifelse(var(10)=3,3,ifelse(var(10)=2,2.5,2))

[State 1055, trans]
type=trans
trigger1=1
trans=addalpha
alpha=256,256
ignorehitpause=1
[State 1055, sprpriority]
type=sprpriority
trigger1=1
value=4

[State 1055, bat]
type=explod
trigger1=!numexplod(1008)
anim=1058
ID=1008
sprpriority=4
postype=p1
bindtime=-1
removetime=-1
removeongethit=1
ignorehitpause=1
scale=1,1
[State 1055, bat]
type=modifyexplod
trigger1=numexplod(1008)
ID=1008
postype=p1
facing=1

[State 1055, particles]
type=explod
trigger1=1
vel=-1+(random<500),-.5+(random<500)
accel=0,.05
anim=1009
sprpriority=3
postype=p1
random=20,20
removetime=-2
scale=.5,.5
ignorehitpause=1

[State 1055, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
value=2,10
persistent=0
ignorehitpause=1

[State 1055, hit]
type=hitdef
trigger1=1
priority=7,Hit
attr=A,SP
damage=ceil(90*(root,fvar(12))),5
animtype=Hard
hitflag=MAFD
guardflag=MA
pausetime=4,4
sparkno=-1
guard.sparkno=s8001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-10,0
ground.cornerpush.veloff=0
air.velocity=-4,-4
down.velocity=0,0
down.hittime=20
air.fall=1
getpower=180*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4
yaccel=.5

[State 1055, hit]
type=hitdef
trigger1=(sysvar(3)%2)
priority=7,Hit
attr=A,SP
damage=90,5
affectteam=F
animtype=Hard
hitflag=MAFD
guardflag=MA
pausetime=4,4
sparkno=-1
guard.sparkno=s8001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-10,0
ground.cornerpush.veloff=0
air.velocity=-4,-4
down.velocity=0,0
down.hittime=20
air.fall=1
getpower=180*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4
yaccel=.5

[State 1055, sparks]
type=explod
trigger1=movehit&&numtarget
trigger1=(target,movetype=H)&&!(target,time)
anim=7020+(random%8)
ID=7000
sprpriority=5
postype=left
pos=ceil((target,pos x)-((target,const(size.ground.front)-10)*facing)+160),ceil(screenpos y)
removetime=-2
ownpal=1
facing=-1
ignorehitpause=1
persistent=0
pausemovetime=100
supermovetime=100

[State 1055, end]
type=changestate
trigger1=var(1)>=ifelse(var(10)=3,60,ifelse(var(10)=2,50,40))
trigger2=(var(1)>var(4)*60)&&(frontedgedist<-90||backedgedist<-90)||pos y>=-20
value=1007
ignorehitpause=1
[State 1055, end]
type=changestate
trigger1=movecontact
value=1006
ignorehitpause=1


[Statedef 1015]
type=A
physics=N
movetype=A
anim=1005
ctrl=0
sprpriority=4
juggle=5

[State 1015, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,AA,AP,AT
stateno=1006
ignorehitpause=1
[State 1015, hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 1015, strengthvar]
type=varset
trigger1=!time
var(10)=root,var(10)
[State 1015, movehitvar]
type=varset
trigger1=movecontact&&numtarget
trigger1=!(target,ishelper)
var(3)=1
ignorehitpause=1
[State 1015, parentvar]
type=varset
trigger1=!time&&!prevstateno
var(4)=(parent,ishelper)
[State 1015, timevar]
type=varadd
trigger1=time
var(1)=1

[State 1015, reflectionvar]
type=varset
trigger1=!time&&!prevstateno
sysvar(3)=123000
[State 1015, reflectedpos]
type=posadd
trigger1=!time&&sysvar(4)=1
x=20
[State 1015, wasreflected]
type=varset
trigger1=sysvar(4)
sysvar(4)=0

[State 1015, turn]
type=turn
trigger1=p2dist x<0
persistent=0
[State 1015, bat]
type=modifyexplod
trigger1=numexplod(1008)
ID=1008
postype=p1
facing=1

[State 1015, vel]
type=velset
trigger1=!time&&!prevstateno
x=6
y=0
[State 1015, vel]
type=velset
trigger1=vel y>0&&pos y>=-20
y=0
[State 1015, vel]
type=posset
trigger1=vel y>0&&pos y>=-20
y=-20

[State 1015, vel]
type=veladd
trigger1=vel x<6&&p2dist x>=0
x=.2
[State 1015, vel]
type=veladd
trigger1=vel x>-6&&p2dist x<0
x=-.2
[State 1015, vel]
type=veladd
trigger1=vel y<6&&(enemynear,statetype=S||enemynear,statetype=A)&&pos y<(enemynear,pos y+enemynear,const(size.mid.pos.y))
y=.2
[State 1015, vel]
type=veladd
trigger1=vel y>-6&&(enemynear,statetype=S||enemynear,statetype=A)&&pos y>(enemynear,pos y+enemynear,const(size.mid.pos.y))
y=-.2
[State 1015, vel]
type=veladd
trigger1=vel y<6&&(enemynear,statetype=C)&&pos y<(enemynear,pos y+(enemynear,const(size.mid.pos.y)/2.0))
y=.2
[State 1015, vel]
type=veladd
trigger1=vel y>-6&&(enemynear,statetype=C)&&pos y>(enemynear,pos y+(enemynear,const(size.mid.pos.y)/2))
y=-.2
[State 1015, vel]
type=veladd
trigger1=vel y<6&&(enemynear,statetype=L)&&pos y<-10
y=.2
[State 1015, vel]
type=veladd
trigger1=vel y>-6&&(enemynear,statetype=L)&&pos y>-10
y=-.2

[State 1015, trans]
type=trans
trigger1=1
trans=addalpha
alpha=256,256
ignorehitpause=1
[State 1015, sprpriority]
type=sprpriority
trigger1=1
value=4

[State 1015, bat]
type=explod
trigger1=!numexplod(1008)
anim=1008
ID=1008
sprpriority=4
postype=p1
bindtime=-1
removetime=-1
removeongethit=1
ignorehitpause=1
scale=1,1

[State 1015, particles]
type=explod
trigger1=1
vel=-1+(random<500),0
accel=0,.05
anim=1009
sprpriority=3
postype=p1
random=20,20
removetime=-2
scale=.5,.5
ignorehitpause=1

[State 1015, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
value=2,10
persistent=0
ignorehitpause=1

[State 1015, hit]
type=hitdef
trigger1=1
priority=7,Hit
attr=S,SP
damage=ceil(80*(root,fvar(12))),5
animtype=Hard
hitflag=MAFD
guardflag=MA
pausetime=4,4
sparkno=-1
guard.sparkno=s8001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-10,0
ground.cornerpush.veloff=0
air.velocity=-4,-4
down.velocity=0,0
down.hittime=20
air.fall=1
getpower=0
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4
yaccel=.5

[State 1015, sparks]
type=explod
trigger1=movehit&&numtarget
trigger1=(target,movetype=H)&&!(target,time)
anim=7020+(random%8)
ID=7000
sprpriority=5
postype=left
pos=ceil((target,pos x)-((target,const(size.ground.front)-10)*facing)+160),ceil(screenpos y)
removetime=-2
ownpal=1
facing=-1
ignorehitpause=1
persistent=0
pausemovetime=100
supermovetime=100

[State 1015, end]
type=changestate
trigger1=var(1)>=90
trigger2=(var(1)>var(4)*60)&&(frontedgedist<-120||backedgedist<-120)
value=1007
ignorehitpause=1
[State 1015, end]
type=changestate
trigger1=movecontact
value=1006
ignorehitpause=1


[Statedef 40001]
anim = 9999

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 3000, BGPalfx]
Type = BGPalfx
Trigger1 = 1 ;time = [0, 170]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1


[State 40001, Tile #1-7]
type = Explod
trigger1 = time = 0
trigger1 = numexplod(15601) = 0
anim = 15600
ID = 15601
pos = 0,0
postype = left  ;p2,front,back,left,right
removetime = 60
pausemovetime = -1
supermovetime = -1
scale = 1.2,0.7
sprpriority = -9999
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 40001, Glass Break]
type = ChangeState
;trigger1 = root, stateno != 3300 && root, stateno != 3350
;trigger2 = root, stateno = 3300 && root,animelemtime(61) = 1  || root, stateno = 3350 && root,animelemtime(50) = 1
trigger1 = root,movetype!=A;root, stateno !=[3000,4999]
;trigger2 = root, NumHelper(8400) !=0|| root, NumHelper(8420) !=0
value = stateno+1

;3005

;[State 40001, Comic]
;type = ChangeState
;trigger1 = root, stateno =3005
;value = stateno+1

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
type = null;Explod
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
pos = 0,abs((240*var(0))-80)
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
triggerall = parent,anim != 3120
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
triggerall = parent,anim != 3120
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

;--------
[State 40001, P1 PORTRAIT]
type = Explod
triggerall = parent,anim = 3120
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 156079
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
triggerall = parent,anim = 3120
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 156079
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
;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
; Medium Foward Recovery Roll


