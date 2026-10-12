; State files for throws

;---------------------------------------------------------------------------
; Standing over-the-head throw: strong punch + forward when near P2
[StateDef 810]
anim = 810
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 100

[State 192, playsnd1]
type = PlaySnd
trigger1 = animelem=2
value = 605,0
channel = 1

[State 810, hitdef]
type = HitDef
trigger1 = Time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M; M-          ;Affect only ground people who are not being hit (or not?)
guardflag = M
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark (except for guard)
sparkxy = -50,-80
sprpriority = 1       ;Draw in front of p2
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down
;mindist = 
;maxdist = 
;snap = 0,0
sprpriority = 1
p2facing = 1
p1stateno = 812
p2stateno = 813

[State 810, missed]
type = ChangeState
trigger1 = AnimTime = 0
value = 811
ctrl = 1


;-------------------------------------------
; Standing throw (missed)
[StateDef 811]
anim = 811
ctrl = 0
type = S
movetype = I
physics = S
velset = 0,0

[State 192, playsnd1]
type = PlaySnd
trigger1 = animelem=3
value = 605,0
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  animelem=5
value = 800,0

[State 811, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-------------------------------------------
; Standing throw (hit)
[StateDef 812]
anim = 812
ctrl = 0
type = S
movetype = A
physics = S
poweradd = 50
velset = 0,0

[State 812, 0]
type = PlaySnd
trigger1 = animelem = 3
value = 605,1

[State 192, playsnd1]
type = PlaySnd
trigger1 = animelem=24
value = 605,0
channel = 1

[State 192, playsnd1]
type = PlaySnd
trigger1 = time =48
value = 555,0
channel = 1


[State 812, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = const(size.ground.front), 0


[State 812, back to stance]
type = ChangeState
trigger1 = Time = 153
value = 0
ctrl = 1


;-------------------------------------------
; Being grabbed (p2 custom hit state)
[StateDef 813]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 813, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 1
value = 813

[State 813, 2] ; tossed
type = ChangeState
trigger1 = Time = 60
value = 814





[State 813, screenbound]  ; don't move the camera to follow P2
type = ScreenBound
trigger1 = Alive
movecamera = 0,0

;-------------------------------------------
; Being thrown (p2 custom hit state)
[StateDef 814]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 0, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 106
add = 7,-200,-200
mul = 256,256,256
sinadd = 30,30,0,10
invertall = 0
color = 0


[State 814, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 60
value = 5300

[State 814, lifeadd]
type = LifeAdd
trigger1 = Time = 0
value = -120
kill = 1

[State 814, 2] ;dropped
type = SelfState
trigger1 = Time = 60
value = 5050

;---------------------------------------------------------------------------
; Air over-the-head chain throw: strong punch + forward when near P2 in the air
