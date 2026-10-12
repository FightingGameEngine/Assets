;---------------------------------------------------------------------------
; Flight Mode / Statedef's : 2000 - 2999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Flight Start
;---------------------------------------------------------------------------
[StateDef 2000]
type = A
movetype= I
physics = N
juggle  = 1
velset = 0,-1
ctrl = 0
anim = 2000
sprpriority = 2

[State 2000, 1]
type = VelSet
trigger1 = time <10
x = 0
y = -1

[State 2000, End]
type = ChangeState
trigger1 = time = 20
value = 2001
ctrl = 0
;-------------------------------------------------------------------------------
;Flight Mode
;-------------------------------------------------------------------------------
[StateDef 2001]
type = A
movetype= I
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
poweradd = 0
sprpriority = 2
anim = 22

[State 2001, 1]
type = ChangeAnim
trigger1 = vel x = 0
trigger1 = vel Y <= 0
trigger1 = Anim != 22
value = 22

[State 2001, 2]
type = ChangeAnim
trigger1 = vel x = 0
trigger1 = vel Y > 0
trigger1 = Anim != 2001
value = 2001

[State 2001, 3]
type = ChangeAnim
trigger1 = vel x < 0
trigger1 = vel Y <= 0
trigger1 = Anim != 2002
value = 2002

[State 2001, 4]
type = ChangeAnim
trigger1 = vel x < 0
trigger1 = vel Y > 0
trigger1 = Anim != 2003
value = 2003

[State 2001, 5]
type = ChangeAnim
trigger1 = vel x > 0
trigger1 = vel Y <= 0
trigger1 = Anim != 2004
value = 2004

[State 2001, 6]
type = ChangeAnim
trigger1 = vel x > 0
trigger1 = vel Y > 0
trigger1 = Anim != 2005
value = 2005

[State 2001, 7]
type = Turn
trigger1 = p2dist X < 0
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"

[State 2001, 8]
type = VelSet
trigger1 =  command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 2001, 9]
type = VelSet
trigger1 =  command != "holdfwd"
trigger1 =  command != "holdback"
x = 0

[State 2001, 10]
type = VelSet
trigger1 =  command = "holdback"
x = -const(velocity.walk.fwd.x)

[State 2001, 11]
type = VelSet
trigger1 =  command = "holddown"
trigger1 = pos y < 0
y = const(velocity.walk.fwd.x)

[State 2001, 12]
type = VelSet
trigger1 = command != "holddown"
trigger1 = command != "holdup"
trigger2 = pos y >=0
y = 0

[State 2001, 13]
type = VelSet
trigger1 = !(screenpos y < 80)
trigger1 =  command = "holdup"
y = -const(velocity.walk.fwd.x)

[State 2001, 14]
type = VelSet
trigger1 = !(screenpos y >= 80)
trigger1 =  command = "holdup"
y = 0

[State 200,15]
type = Changestate
trigger1 = time = 800
trigger2 = command = "Flight"
value = 50
ctrl = 1

[State 2001, End]
type = ChangeState
trigger1 = !alive
trigger1 = P2Life = 0
value =  50
ctrl = 0

[State 2001, End]
type = ChangeState
trigger1 = command = "x"
value =  2010
ctrl = 1
[State 2001, End]
type = ChangeState
trigger1 = command = "y"
value =  2011
ctrl = 1
[State 2001, End]
type = ChangeState
trigger1 = command = "z"
value = 2012
ctrl = 1
[State 2001, End]
type = ChangeState
trigger1 = command = "a"
value =  2013
ctrl = 1
[State 2001, End]
type = ChangeState
trigger1 = command = "b"
value =  2014
ctrl = 1
[State 2001, End]
type = ChangeState
trigger1 = command = "c"
value =  2015
ctrl = 1

;---------------------------------------------------------------------------
; Run Forward
;---------------------------------------------------------------------------
[Statedef 2005]
type    = A
physics = N
anim = 100
sprpriority = 1
velset = const(velocity.run.fwd.x), 0

[State 2005, 1] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 2005, 2]
type = PlaySnd
trigger1 = time = 3
value = 1100,1
channel = 0

[State 2005, End]
type = ChangeState
trigger1 = animtime = 0
value = 2001

;---------------------------------------------------------------------------
; Dash Back
;---------------------------------------------------------------------------
[Statedef 2006]
type    = A
physics = N
ctrl = 0
anim = 105
sprpriority = 1

[State 2006, 1]
type = VelSet
trigger1 = Time = 2
x = const(velocity.run.back.x)


[State 2006, End]
type = ChangeState
trigger1 = Time > 15
value = 2001

;---------------------------------------------------------------------------
; Flying Light Punch
;---------------------------------------------------------------------------
[Statedef 2010]
type    = A
movetype= A
physics = N
juggle  = 1
ctrl = 0
anim = 600
poweradd = 20
sprpriority = 2

[State 600, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 600, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 28,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 9,10
sparkno = s8002
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity= ((vel x)*.08), ((vel y)-.08)
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 49)
anim = 8001
scale = 0.5,0.5

[State 600, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 2001
ctrl = 1

;---------------------------------------------------------------------------
; Flying Medium Punch
;---------------------------------------------------------------------------
[Statedef 2011]
type    = A
movetype= A
physics = N
juggle  = 1
ctrl = 0
anim = 610
poweradd = 40
sprpriority = 2

[State 610, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 610, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 52,1
animtype = medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,10
sparkno = s8022
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
air.velocity= ((vel x)*.08), ((vel y)-.08)
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 610]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 49)
anim = 8001
scale = 0.5,0.5

[State 610, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 2001
ctrl = 1

;---------------------------------------------------------------------------
; Flying Strong Punch
;---------------------------------------------------------------------------
[Statedef 2012]
type    = A
movetype= A
physics = N
juggle  = 1
ctrl = 0
anim = 220
poweradd=60
sprpriority = 2

[State 620, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 620, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 72,1
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 14,15
sparkno = s8222
sparkxy = 0,-59
guard.sparkno = -1
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -9,-3
air.velocity = -10,12
fall = (enemynear,statetype = A)
air.fall = 1
fall.recover =0
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall = 1

[State 620]
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

[State 620, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 2001
ctrl = 1

;---------------------------------------------------------------------------
; Flying Light Kick
;---------------------------------------------------------------------------
[Statedef 2013]
type    = A
movetype= A
physics = N
juggle  = 1
ctrl = 0
anim = 630
poweradd = 20
sprpriority = 2

[State 630, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 630, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 28,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 9,10
sparkno = s8002
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity= ((vel x)*.08), ((vel y)-.08)
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 630]
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

[State 630, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 2001
ctrl = 1

;---------------------------------------------------------------------------
; Flying Medium Kick
;---------------------------------------------------------------------------
[Statedef 2014]
type    = A
movetype= A
physics = N
juggle  = 1
ctrl = 0
anim = 640
poweradd = 40
sprpriority = 2

[State 640, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 640, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 52,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,10
sparkno = s8022
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
air.velocity= ((vel x)*.08), ((vel y)-.08)
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 640]
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

[State 640, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 2001
ctrl = 1

;---------------------------------------------------------------------------
; Flying Strong Kick
;---------------------------------------------------------------------------
[Statedef 2015]
type    = A
movetype= A
physics = N
juggle  = 1
ctrl = 0
anim = 650
poweradd=60
sprpriority = 2

[State 650, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 650, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 72,1
animtype = High
guardflag = MA
hitflag = MAFDLP
priority = 4, Hit
pausetime = 14,15
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -15,-4
air.velocity = -17,17
air.fall = 1
fall.recover =0
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 650]
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

[State 650, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 2001
ctrl = 1

; END
