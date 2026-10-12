;----------------
[Statedef 9101] ;Subindo
type    = A
physics = N
anim = 9900
ctrl = 1
sprpriority = 1

[State 9101, VarSet]
type = VarSet
trigger1 = time = 1
v = 21    ;fv = 10
value = 1

[State 9101, VelSet]
type = VelSet
trigger1 = 1
y = -3

[State 9101, ChangeState]
type = ChangeState
trigger1 = Pos Y < -40
value = 9100

[Statedef 9100]
type    = A
physics = N
anim = 9900
ctrl = 1
sprpriority = 1

[State 9100, Stance]
type = ChangeAnim
triggerall = anim != 9900
trigger1 = command != "holdfwd"
trigger2 = command != "holdback"
trigger3 = command != "holdup"
trigger4 = command != "holddown"
value = 9900

[State 9100, Avançando/Subindo]
type = ChangeAnim
trigger1 = command = "holdfwd" || command = "holdup"
value = 9901
[State 9100, Descendo/Recuando]
type = ChangeAnim
trigger1 = command = "holddown" || command = "holdback"
value = 9902

[State 9100]
type = VelSet
trigger1 = command != "holdfwd"
trigger2 = command != "holdback"
trigger3 = command != "holdup"
trigger4 = command != "holddown"
x = 0
y = 0

[State 9100, frente]
type = VelSet
trigger1 = command = "holdfwd"
x = 3

[State 9100, trás]
type = VelSet
trigger1 = command = "holdback"
x = -3

[State 9100, cima]
type = VelSet
triggerall = command = "holdup"
trigger1 = Pos Y > -500 && P2BodyDist Y < 150
y = -3

[State 9100, baixo]
type = VelSet
triggerall = command = "holddown"
trigger1 = Pos Y <= 0
y = 3

[State 9100, virar]
type = Turn
trigger1 = p2dist x < 0

[State 9100]
type = HitOverride
trigger1 = 1
time = 1
attr = SCA, NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 9110

[State 9100]
type = changestate
trigger1 = Pos Y> 0
value = 50
ctrl = 1

[State 9100, Morto]
type = ChangeState
trigger1 = !alive
value = 5050

[State 9100, Descer]
type = changestate
trigger1 = command = "DD"
value = 948

[State 9100 cai]
type = changestate
trigger1= Drawgame=1 || Win=1 || Lose=1
value = 50
;-----------------
[Statedef 9110]
type = U
movetype = H
physics = U
anim = 9910
ctrl = 1

[State 9100]
type = HitOverride
trigger1 = 1
time = 1
attr = SCA, NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 9110

[State 9110]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 9110]
type = VelSet
trigger1 = 1
trigger1 = time >= 1
x = -2
y = -GetHitVar(yaccel)

[State 9110]
type = VelAdd
trigger1 = GetHitVar(animtype) = [4,5]
trigger1 = time >= 1
y = GetHitVar(yaccel)

[State 9110]
type = changestate
trigger1 = time = 20
value = 9101
ctrl = 1

[State 9100 cai]
type = changestate
trigger1= Drawgame=1 || Win=1 || Lose=1
value = 50
