[Statedef 3081 - Target Practice P2]
type=L
physics=S
movetype=H
ctrl=0
velset=0,0

[State 3420, anim]
type=changeanim2
trigger1= !time
value=3081

[State 3420, stop]
type=posset
trigger1= 1
y=0
ignorehitpause=1
[State 3420, dust]
type=gamemakeanim
trigger1=!time&&prevstateno!=3081
value=60
pos=0,0
under=sysvar(1)<=14
[State 3420, snd]
type=playsnd
trigger1=!time&&prevstateno!=3081
value=f7,0

[State 3081, end]
type= SelfState
trigger1= time>=30
value=ifelse(alive,5120,5150)


[Statedef 700716]
type    = a
movetype= h
physics = n
ctrl = 0

[state 711, 1]
type = veladd
trigger1 = 1
y = 0.5

[state 711, 2]
type = hitvelset
trigger1 = time = 0
x = 1
y = 1

[state 711, 3]
type = changestate
trigger1 = animtime = 0 || time >= 10
value = 700717

[state 711, 4]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,1

[state 711, 2]
type = changeanim
trigger1 = selfanimexist(5060) && anim != 5060
value = 5060

[state 711, 6]
type = changestate
trigger1 = pos y >= 10 && vel y > 0
value = 30028


[Statedef 700717]
type    = a
movetype= h
physics = n
ctrl = 0

[state 712, 1]
type = veladd
trigger1 = 1
y = 0.5

[state 712, 2]
type = changeanim
trigger1 = selfanimexist(5060) && anim != 5060
value = 5060

[state 712, 3]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,1

[state 712, 3]
type = changestate
trigger1 = pos y >= 10 && vel y > 0
value = 30028


[Statedef 30028]
type    = l
movetype= h
physics = n

[state 328, envshake]
type = Fallenvshake
trigger1 = time = 0

[state 328, 1]
type = changeanim
persistent = 0
trigger1 = selfanimexist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[state 328, 2]
type = changeanim
triggerall = time = 0
triggerall = anim != [5110,5119]
trigger1 = anim != [5161,5169]
trigger2 = !selfanimexist(5170 + (anim % 10))
value = 5170

[state 328, 3]
type = changeanim
triggerall = time = 0
triggerall = anim != [5110,5119]
trigger1 = anim = [5161,5169]
trigger1 = selfanimexist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[state 328, 4]
type = hitfalldamage
trigger1 = time = 0

[state 328, 5]
type = posset
trigger1 = time = 0
y = 0

[state 328, var]
type = varset
trigger1 = time = 0
trigger1 = gethitvar(fall.yvel) != 0
sysvar(1) = Floor(vel y)

[state 328, 6]
type = playsnd
triggerall = prevstateno != [715,720]
trigger1 = time = 0 && !sysvar(0)
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[state 328, 6]
type = playsnd
triggerall = prevstateno = 720
trigger1 = time = 0 && !sysvar(0)
value = s20, 7

[state 328, 8]
type = velset
trigger1 = 1
x = 0
y = 0

[state 328, 9]
type = changeanim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = selfanimexist(5110 + (anim % 10))
trigger1 = animtime = 0
trigger2 = sysvar(0)
value = 5110 + (anim % 10)

[state 328, 10]
type = changeanim
persistent = 0
triggerall = anim != [5111,5119]
trigger1 = animtime = 0
trigger2 = sysvar(0)
value = 5110

[state 328, 11]
type = selfstate
triggerall = !alive
trigger1 = animtime = 0
trigger2 = sysvar(0)
trigger3 = anim = [5110,5119]
value = 5150

[state 328, 12]
type = varset
trigger1 = sysvar(0)
trigger1 = time = 0
sysvar(0) = 0

[state 328, 13]
type = velmul
trigger1 = 1
x = 0.85

[state 328, 14]
type = ForcefeeDBack
trigger1 = alive
trigger1 = time = 0
time = 8
ampl = 240
waveform = sine

[state 328, 15]
type = ForcefeeDBack
trigger1 = !alive
trigger1 = time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

[state 328,16]
type = playerpush
trigger1 = 1
value = 0

[state 328,17]
type = nothitby
trigger1 = time = 0
value = sca, aa, ap, at, na, np, nt, sa, sp, st, ha, hp, ht
time = 0
ignorehitpause = 1

[state 250,13]
type = envshake
trigger1 = time = 0 && prevstateno = 720
persistent = 0
time = 15
freq = 70
ampl = -4

[state 328,18]
type = selfstate
trigger1 = alive && time = 600
value = 5120


[Statedef 5205]
type= A
physics= N
movetype= H

[State 5205, End]
type= selfstate
trigger1= 1
value= ifelse(pos y<-20, 5210, 5200)

[Statedef 10250 - Stunned]
type    = S
movetype = H
physics = S
sprpriority = 0
velset = 0,0

[State 1250, PS]
type = posset
trigger1 = time = 0
y = 0

[state 1250, CA2]
type = changeanim2
trigger1 = time = 0
value = 5000

[State 1250, SS]
type = SelfState
trigger1 = time >= 200
value = ifelse(alive = 1, 5110, 5150)


[Statedef 7715]
movetype= h
physics = n
velset = 0,0
ctrl = 0

[state 710,1]
type = selfstate
trigger1 = time = 0 && pos y >= 0 && command != "holddown"
value = 5000

[state 710,2]
type = selfstate
trigger1 = time = 0 && pos y >= 0 && command = "holddown"
value = 5010

[state 710,3]
type = statetypeset
trigger1 = time = 1
statetype = a

[state 710,4]
type = changeanim
trigger1 = 1
value = 5012

[state 710,5]
type = changestate
trigger1 = hitshakeover
value = 7716


[Statedef 7716]
type    = a
movetype= h
physics = n
ctrl = 0

[state 711, 1]
type = veladd
trigger1 = 1
y = 0.5

[state 711, 2]
type = hitvelset
trigger1 = time = 0
x = 1
y = 1

[state 711, 3]
type = changestate
trigger1 = animtime = 0 || time >= 10
value = 7717

[state 711, 4]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,1

[state 711, 2]
type = changeanim
trigger1 = selfanimexist(5060) && anim != 5060
value = 5060

[state 711, 6]
type = changestate
trigger1 = pos y >= 10 && vel y > 0
value = 328


[Statedef 7717]
type    = a
movetype= h
physics = n
ctrl = 0

[state 712, 1]
type = veladd
trigger1 = 1
y = 0.5

[state 712, 2]
type = changeanim
trigger1 = selfanimexist(5060) && anim != 5060
value = 5060

[state 712, 3]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,1

[state 712, 3]
type = changestate
trigger1 = pos y >= 10 && vel y > 0
value = 328


[Statedef 328]
type    = l
movetype= h
physics = n

[state 328, envshake]
type = Fallenvshake
trigger1 = time = 0

[state 328, 1]
type = changeanim
persistent = 0
trigger1 = selfanimexist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[state 328, 2]
type = changeanim
triggerall = time = 0
triggerall = anim != [5110,5119]
trigger1 = anim != [5161,5169]
trigger2 = !selfanimexist(5170 + (anim % 10))
value = 5170

[state 328, 3]
type = changeanim
triggerall = time = 0
triggerall = anim != [5110,5119]
trigger1 = anim = [5161,5169]
trigger1 = selfanimexist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[state 328, 4]
type = hitfalldamage
trigger1 = time = 0

[state 328, 5]
type = posset
trigger1 = time = 0
y = 0

[state 328, var]
type = varset
trigger1 = time = 0
trigger1 = gethitvar(fall.yvel) != 0
sysvar(1) = Floor(vel y)

[state 328, 6]
type = playsnd
triggerall = prevstateno != [715,720]
trigger1 = time = 0 && !sysvar(0)
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[state 328, 6]
type = playsnd
triggerall = prevstateno = 720
trigger1 = time = 0 && !sysvar(0)
value = s20, 7

[state 328, 8]
type = velset
trigger1 = 1
x = 0
y = 0

[state 328, 9]
type = changeanim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = selfanimexist(5110 + (anim % 10))
trigger1 = animtime = 0
trigger2 = sysvar(0)
value = 5110 + (anim % 10)

[state 328, 10]
type = changeanim
persistent = 0
triggerall = anim != [5111,5119]
trigger1 = animtime = 0
trigger2 = sysvar(0)
value = 5110

[state 328, 11]
type = selfstate
triggerall = !alive
trigger1 = animtime = 0
trigger2 = sysvar(0)
trigger3 = anim = [5110,5119]
value = 5150

[state 328, 12]
type = varset
trigger1 = sysvar(0)
trigger1 = time = 0
sysvar(0) = 0

[state 328, 13]
type = velmul
trigger1 = 1
x = 0.85

[state 328, 14]
type = ForcefeeDBack
trigger1 = alive
trigger1 = time = 0
time = 8
ampl = 240
waveform = sine

[state 328, 15]
type = ForcefeeDBack
trigger1 = !alive
trigger1 = time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

[state 328,16]
type = playerpush
trigger1 = 1
value = 0

[state 328,17]
type = nothitby
trigger1 = time = 0
value = sca, aa, ap, at, na, np, nt, sa, sp, st, ha, hp, ht
time = 0
ignorehitpause = 1

[state 250,13]
type = envshake
trigger1 = time = 0 && prevstateno = 720
persistent = 0
time = 15
freq = 70
ampl = -4

[state 328,18]
type = selfstate
trigger1 = alive && time = 60
value = 5120


[Statedef 1050]
type    = A
movetype= H
physics = N
velset = 0,-6

[State 1050, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 557

[State 1050, 3]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 1050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, Const(movement.air.gethit.groundlevel))
value = 1051


[Statedef 1051]
type    = L
movetype= H
physics = N
velset = 0,0

[State 1051, ChangeAnim]
type = ChangeAnim2
trigger1 = time = 0
value = 556

[State 1051, Posset]
type = posset
trigger1 = time = 0
y = 0

[State 1051, Changestate]
type = selfstate
trigger1 = time = 11
value = 5120

[State 1051, Changestate]
type = selfstate
trigger1 = !alive
value = 5150

[Statedef 10612 - Get Gambit'd P2]
type    = A
movetype= H
physics = N
juggle  =0
poweradd=0
ctrl = 0
sprpriority = -2
facep2=0

[state 0]
type = screenBound
trigger1 = 1
value = 1

[State 5030, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 0, Turn]
type = Turn
trigger1=time=0




[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1= time=0
value = 556

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = cond(gethitvar(yaccel)=0,.48,gethitvar(yaccel))

[State 814, ChangeState]
type = ChangeState
trigger1 = time > 10
trigger1 = Pos Y >= 0
value = 5574

[Statedef 5842 - Bounce P2]
type    = A
movetype = H
physics = N

[State 812,1]
type = Velset
trigger1 = time < 30
x = 0
y = 0

[State 812,]
type = PlayerPush
trigger1 = 1
value = 1

[State 812, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 5030

[State 812, 3]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 5843

[Statedef 5843]
type    = A
movetype = H
physics = N

[State 813,1]
type = Velset
trigger1 = time = 1
x = 0
y = 25

[State 813,2]
type = VelAdd
trigger1 = time > 1
y = 0.3

[State 813,]
type = PlayerPush
trigger1 = 1
value = 1

[State 813,]
type = envshake
trigger1 = time >= 1
trigger1 = Pos Y >= 0
time = 6
freq = 20

[State 814,1]
type = null
trigger1 = time >= 1
trigger1 = Pos Y >= 0
y = 0

[State 813, 2]
type = ChangeState
triggerall = time > 1
trigger1 = Pos Y >= 0
value = 5844

[Statedef 5844]
type    = A
movetype = H
physics = N
sprpriority = 0


[State 814,1]
type = Velset
trigger1 = time = 0
x = -0.3
y = -13

[State 814,2]
type = VelAdd
trigger1 = time >= 0
y = 0.3

[State 814,]
type = PlayerPush
trigger1 = 1
value = 1

[State 814, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 5160

[State 814, 3]
type = ChangeAnim
trigger1 = animtime = 0
trigger1 = anim = 5030
trigger1 = SelfAnimExist(5035)
value = 5035

[State 814, 4]
type = ChangeAnim
trigger1 = animtime = 0
trigger1 = anim = 5035
trigger1 = SelfAnimExist(5035)
value = 5050

[State 814, ChangeState]
type = selfstate
trigger1 = time > 10
trigger1 = Pos Y >= 0
value = 5110


[Statedef 260 - Wallbounce]
type    = A
movetype = H
physics = N
sprpriority = 0
velset = 0,0

[State 250, T]
Type = Turn
Trigger1 = p2dist x < 0

[state 250, CA]
type = changeanim
trigger1 = time = 0
value = 5030

[state 250, CA]
type = ChangeAnim
trigger1 = !hitshakeover
trigger1 = time
value = anim
elem = animelemno(0)

[State 250, CA]
Type = ChangeAnim
Trigger1 = AnimTime = 0
Trigger1 = Anim = 5030
Value = 5050

[state 4250, VelS]
type = velset
trigger1 = hitshakeover
x = gethitvar(xvel)*facing
y = gethitvar(yvel)
persistent = 0

[State 250, VA]
type = veladd
trigger1 = hitshakeover
y = gethitvar(yaccel)

[State 4250, SB]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1,0
ignorehitpause = 0

[State 250, CS]
type = changestate
trigger1 = frontedgebodydist <= 0
trigger2 = backedgebodydist <= 0
value = 261

[State 250, CS]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 5100



[Statedef 261]
type    = A
movetype = H
physics = N
sprpriority = 1

[State 251, PA]
type = null
trigger1 = time = 0
Y = -Const(Size.Mid.Pos.Y)

[State 251, Shake]
type = envshake
trigger1 = time = 0
time = 15
freq = 100
phase = 100
ampl = 8

[State 251, CA]
Type = ChangeAnim
Trigger1 = Time < 3
Trigger1 = SelfAnimExist(5035)
Value = 5035

[State 251, PF]
Type = PosFreeze
Trigger1 = Time < 4

[State 1451, LA]
type = null
trigger1 = time = 0
value = -5

[state 4250, CA2]
type = changeanim
trigger1 = time = 3
trigger1 = selfanimexist(5061)
value = 5061

[state 4250, CA2]
type = changeanim2
trigger1 = time = 3
trigger1 = !selfanimexist(5061)
value = 5061



[State 251]
Type = Turn
trigger1 = p2dist x < 0
Trigger1 = Time = 4

[State 1112]
type = VelSet
trigger1 = Time = 4
x = 0.25
y = -8.0

[State 251, VA]
type = VelAdd
trigger1 = time > 4
y = .35

[State 251, AD]
Type = null
Trigger1 = Time > 3
trigger1 = Pos Y < 0
Value = Time*30

[State 251, OS]
Type = null
Trigger1 = anim = 250
trigger1 = pos y < 0
Y = Const(Size.Mid.Pos.Y)

[State 243, Recover]
type = SelfState
triggerall = time >= 10
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200

[State 243, Recover]
type = SelfState
triggerall = time >= 10
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210

[State -2, PS]
type = posset
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
y = 0

[State 4250, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 262



[Statedef 262]
type    = L
movetype = H
physics = N
velset = 0,0

[State -2, PS]
type = posset
trigger1 = 1
y = 0

[State 4250, CS]
type = selfstate
trigger1 = 1
value = 5110


[Statedef 5085]
type= A
physics= N
movetype= H
velset= 0, 0
facep2= 1

[State 5085, P]
type = null
trigger1 = time = 0
time = 120

[State 5025, HFS]
type= hitfallset
trigger1= 1
value= 0

[State 5085, CS]
type = changestate
trigger1 = pos y
value = 5086

[State 5025, End]
type= selfstate
trigger1= pos y = 0
value= 5000



[Statedef 5086]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5020, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5020, 2]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5020, 3]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype)

[State 5020, 4]
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5020, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 5087

[State 5020, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5020, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5020, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
trigger4 = anim = [5051,5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140



[Statedef 5087]
type    = A
movetype= H
physics = N
ctrl = 0

[State 5030, 1]
type = ChangeAnim
trigger1 = Anim != [5000, 5199]
trigger1 = SelfAnimExist(5030)
value = 5030

[State 5030, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 3]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 4]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0
trigger2 = Pos Y >= Const(movement.air.gethit.groundlevel)
value = 5089

[State 5030, 5]
type = selfState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0
trigger2 = Pos Y >= Const(movement.air.gethit.groundlevel)
value = 5050

[State 5030, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 5088



[Statedef 5088]
type    = A
movetype= H
physics = N

[State 5035, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059]
trigger1 = Anim != 5090
value = 5035

[State 5035, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5035, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = AnimTime = 0
trigger3 = Vel Y > 0
trigger3 = Pos Y >= Const(movement.air.gethit.groundlevel)
trigger4 = Time = 0
trigger4 = Anim != 5035
value = 5089

[State 5035, 4]
type = SelfState
triggerall = HitFall
trigger1 = HitOver
trigger2 = AnimTime = 0
trigger3 = Vel Y > 0
trigger3 = Pos Y >= Const(movement.air.gethit.groundlevel)
trigger4 = Time = 0
trigger4 = Anim != 5035
value = 5050



[Statedef 5089]
type    = A
movetype= H
physics = N

[State 5040, 1]
type = selfState
trigger1 = !Alive
value = 5050
ctrl = 0

[State 5070, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 2

[State 5040, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim != 5040
trigger2 = Time = 0
trigger2 = Anim != 5035
value = 5040

[State 5040, 4]
type = StateTypeSet
trigger1 = HitOver
movetype = I

[State 5040, 5]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5040, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52
ctrl = 1


[Statedef 5450]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5500, changeanim]
type = changeanim2
trigger1 = time = 0
value = 560

[State 5500, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 5451




[Statedef 5451]
type    = A
movetype= H
physics = N

[State 5501, 1]
type = Velset
trigger1 = Time = 0
x = gethitvar(xvel)*facing
y = gethitvar(yvel)

[State 5501, 2]
type = VelAdd
trigger1 = 1
y = 0.4

[State 5501, 5]
type = SelfState
triggerall = Vel Y > Const(movement.air.gethit.airrecover.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210

[State 5501, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5574


[Statedef 5574]
type    = L
movetype= H
physics = N
velset = 0,0
anim = 5100

[State 5574, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5574, Damage]
type = HitFallDamage
trigger1 = Time = 0

[State 5574, ChangeAnim]
type = ChangeAnim
trigger1 = animtime = 0
value = 5110

[State 5574, FX]
type = Explod
trigger1 = Time = 0
trigger1 = !SysVar(0)
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0,0
sprpriority = cond (sysvar(1) <= Const720p(56), -10, 10)
postype = p1

[State 5574, Posset]
type = posset
trigger1 = time = 0
y = 0

[State 5574, Changestate]
type = selfstate
triggerall = anim = 5110
trigger1 = time >= 30
trigger2 = command = "recovery" && (time > 7)
trigger3 = (gethitvar(fall.envshake.ampl) = 1)
value = 5120
ctrl = 0

[State 5574, Changestate]
type = selfstate
trigger1 = !alive
value = 5100


[Statedef 1061]
type = U
movetype = I
ctrl = 0
sprpriority = 2

[State 1061, Invuln]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 1061, AssertSpecial]
type = AssertSpecial
trigger1 = ishelper
flag = noshadow
ignorehitpause = 1

[State 1061, Changeanim]
type = ChangeAnim
trigger1 = ishelper
trigger1 = !time
value = anim

[State 1061, SelfState]
type = SelfState
triggerall = !ishelper
trigger1 = animtime = 0
trigger2 = time >= 180
value = cond((statetype !=A),0,51)
ctrl = 1
ignorehitpause = 1

[State 1061, Angledraw]
type = AngleDraw
trigger1 = ishelper
trigger1 = Pos Y < 0

[State 1061, Angledraw]
type = AngleAdd
trigger1 = ishelper
trigger1 = Pos Y < 0
value = 30

[State 1061, Gravity]
type = Gravity
trigger1 = ishelper
trigger1 = Pos Y < 0

[State 1061, Velset]
type = VelSet
trigger1 = ishelper
trigger1 = !time
x = cond(random<500,-5,cond(random<500,-2,5))
y = cond(random<500,-5,cond(random<500,-6,-6))

[State 1061, VelSet]
type = VelSet
trigger1 = ishelper
trigger1 = time > 0
trigger1 = pos y >=0 && vel y > 0
x = 0
y = 0
ignorehitpause = 1

[State 1061, SelfState]
type = SelfState
triggerall = !ishelper
trigger1 = animtime = 0
trigger2 = time >= 150
value = cond((pos y >= 0),0,51)
anim = cond((pos y >= 0),0,41)
ctrl = 1
ignorehitpause = 1

[State 1061, Fade]
type = trans
triggerall = ishelper
trigger1 = time >= 35
trans = addalpha
alpha = 256-(time)*2,256
ignorehitpause = 1
persistent = 1

[State 1061, Freeze Anim]
Type = ChangeAnim
triggerall = ishelper
Trigger1 = Pos Y >= 0
Value = Anim
Elem = AnimElemNo(0)
IgnoreHitPause = 1

[State 1061, DestroySelf]
type = DestroySelf
trigger1 = ishelper
trigger1 = time >= 150
ignorehitpause = 1


[Statedef 1350]
type    = U
movetype = H
physics = N

[state 1350]
type = posset
trigger1 = 1
y = 0

[State 1350, CA2]
type = changeanim2
trigger1 = time = 0
value = 1350

[State 3050, HD]
Type = HitDef
Trigger1 = Time = 0
Attr = C, HP
damage = 0,0
priority = 1, Hit
hitflag = F-
GuardFlag = L
guard.dist = 0
PauseTime = 0,0
SparkNo = -1
Guard.SparkNo = -1
Ground.SlideTime = 0
Ground.HitTime = 9
Ground.Velocity = 0
Guard.Velocity = 0
Air.Velocity = 0,0

[State 1350, SS]
type = selfstate
trigger1 = animtime = 0
value = 5000

[Statedef 1900 - Electrofied P2]
type = S
movetype = H
physics = N

ctrl = 0
velset = 0,0
poweradd = 0

[state -1]
type = posset
trigger1 = 1
y = 0


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim != 5012
value = 5012

[State 0, PalFX]
type = PalFX

trigger1 = time = 0
time = 100
add = 150,150,200
mul = 150,150,210
sinadd = 33,33,135,5
invertall = 0
color = 0

[State 1000, changestate]
type = SelfState
trigger1 = time = 100
value = 0
ctrl = 1


[Statedef 5573]
type    = A
movetype= H
physics = N

[State 5573, 1]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090
value = 5050

[State 5573, 2]
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= cond(anim = 5050, Const720p(4), Const720p(-8))
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5573, 3]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5573, 4]
type = SelfState
triggerall = Vel Y > 0
triggerall = Pos Y >= Const(movement.air.gethit.groundrecover.ground.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200

[State 5573, 5]
type = SelfState
triggerall = Vel Y > Const(movement.air.gethit.airrecover.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210

[State 5573, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= cond((anim = [5051,5059]) || (anim = [5061,5069]), 0, Const(movement.air.gethit.groundlevel))
value = 5110



[Statedef 105001]
type = C
movetype = H
physics = N
velset = 0,0
ctrl = 0
poweradd = 35
sprpriority = -1

[State 105001, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 105001




[State 105001, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 105001, PalFXWiz]
type = PalFX
trigger1 = 1
time = 1
add = 0,50,240
mul = 120,224,150
sinadd = 85,55,110,10
invertall = 1
color = 0

[State 105001, End]
type = SelfState
trigger1 = !AnimTime
value = IfElse(Alive,11,5050)
ctrl = 1


[Statedef 105002]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0
poweradd = 35
sprpriority = -1

[State 105002, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 105002




[State 105002, PalFXWiz]
type = PalFX
trigger1 = 1
time = 1
add = 0,50,240
mul = 120,224,150
sinadd = 85,55,110,10
invertall = 1
color = 0

[State 105002, End]
type = SelfState
trigger1 = !AnimTime
value = IfElse(Alive,5040,5050)
ctrl = 1

[Statedef 4500]
type     = A
movetype = H
physics  = N
velset = 0,0

[State 820, CA]
type = changeanim
trigger1 = time = 0
persistent = 0
value = 5030

[State 820, CA]
type = changeanim
trigger1 = hitshakeover
trigger1 = selfanimexist(5060)
persistent = 0
value = 5060

[State 820, CA]
type = changeanim2
trigger1 = hitshakeover
trigger1 = !selfanimexist(5060)
persistent = 0
value = 4500

[State 250, T]
Type = Turn
Trigger1 = p2dist x < 0

[state 4250, VelS]
type = velset
trigger1 = hitshakeover
x = gethitvar(xvel)*facing
y = gethitvar(yvel)
persistent = 0

[State 250, VA]
type = veladd
trigger1 = hitshakeover
y = gethitvar(yaccel)

[State 250, CS]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= -(vel y)
value = 4510



[Statedef 4510]
type    = A
movetype= H
physics = N
velset = 0,0

[State 251, PS]
type = posset
trigger1 = time = 0
y = 0

[State 251, Shake]
type = envshake
trigger1 = time = 0
time = 15
freq = 100
phase = 100
ampl = 8

[State 251, CA]
Type = ChangeAnim
Trigger1 = Time < 3
Trigger1 = SelfAnimExist(5035)
Value = 5035

[State 251, PF]
Type = PosFreeze
Trigger1 = Time < 4

[State 1451, LA]
type = null
trigger1 = time = 0
value = -5

[state 4250, CA2]
type = changeanim2
trigger1 = time = 3
value = 2500

[State 1112]
type = VelSet
trigger1 = Time = 0
x = -1.0
y = -9.0

[State 251, VA]
type = VelAdd
trigger1 = time > 4
y = .3

[State 251, AD]
Type = AngleDraw
Trigger1 = Time > 3
trigger1 = Pos Y < 0
Value = Time*30

[State 251, OS]
Type = OffSet
Trigger1 = anim = 250
trigger1 = pos y < 0
Y = Const(Size.Mid.Pos.Y)

[State 851, SS]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 5100

[Statedef 9020 - Wall Bounce]
type    = A
movetype= H
physics = N
velset = 0,0

[State 9020, Anim]
type = null
trigger1 = 1
value = 5012


[State 5020, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)


[State 5000, 2]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5000, 3]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype)



[State 5050, 2]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(groundtype) = 3
trigger1 = SelfAnimExist(5070)
value = 5070


[State 9020, State]
type = AfterImage
trigger1 = Time = 5
length = 5
timegap = 1
framegap = 1
PalBright   = 0,0,0
PalContrast = 100,100,100
PalMul      = 1,1,1
trans = Add1
time = 0

[State 9020, State]
type = AfterImageTime
trigger1 = 1
time = 2

[State 9020, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 9030

[Statedef 9030]
type    = A
movetype= H
physics = N



[State 9030]
type = AfterImage
trigger1 = Time = 5
length = 5
timegap = 1
framegap = 1
PalBright   = 0,0,0
PalContrast = 100,100,100
PalMul      = 1,1,1
trans = Add1
time = 0

[State 9030]
type = AfterImageTime
trigger1 = 1
time = 2

[State 9030, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 9030, Gravity]
type = VelAdd
trigger1 = 1
y = .39


[State 9030, Hit wall]
type = ChangeState

trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 9027


[State 5050, 1]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090
value = 5050
trigger2 = Anim != 5070

[State 5050, 2]
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0


[State 5050, 2]
type = ChangeAnim
trigger1 = anim = 5070
trigger1 = Vel Y >= 0
trigger1 = SelfAnimExist(anim-10) || SelfAnimExist(5071)
value = ifelse(SelfAnimExist(5071),5071,anim-10)
persistent = 0

[State 9030, Hit ground]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5071]), 0, 25)
value = 5100




[Statedef 9027]
type    = A
movetype= H
physics = N

[State 9027, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 9027]
type = EnvShake
trigger1 = time = 0
time = 30
freq = 100
ampl = -10
phase = 10

[State 9027, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 9027, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 9027, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 9027, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 9027, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 825



[State 9027, State]
type = ChangeState
trigger1 = Time = 5
value = 9028

[Statedef 9028]
type    = A
movetype= H
physics = N




[State 9028, 1]
type = null
trigger1 = 1
value = , NA, NP

[State 9028, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -5

[State 9028, Vel X]
type = VelSet
trigger1 = Time = 0
x = 2


[State 9028, Turn]
type = null
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 9028, Gravity]
type = VelAdd
trigger1 = 1
y = .39

[State 9028, Anim 5050]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 9028, Anim 5052]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 9028, Anim 5060]
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 9028, Anim 5062]
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 9028, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

[Statedef 7000]
type = S
physics = S
movetype = I
anim = 700
velset = 0, 0
ctrl = 0
sprpriority = 2
poweradd = 78
facep2 = 1

[State 700, HB]
type = hitby
trigger1 = 1
value = SCA, AT
time = 1
[State 700, Stop]
type = posfreeze
trigger1 = 1
value = 1

[State 700, Pause]
type = pause
trigger1 = !time
time = 15
movetime = 15
endcmdbuftime = 15
pausebg = 0

[State 700, Pause]
type = pause
trigger1 = !time && numenemy
trigger1 = (enemynear, movehit = 1)
time = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
movetime = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
endcmdbuftime = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
pausebg = 0

[State 700, Flash]
type = palfx
trigger1 = !time
add = 0, 50, 255
sinadd = 0, -50, -255, 60
time = 15

[State 700, Snd]
type = playsnd
trigger1 = !time
value = 172,0
channel = 0

[State 700, Snd]
type = playsnd
trigger1 = !time
value = 6080,0

[State 700, Spark]
type = explod
trigger1 = animelem = 2
anim = 7200
ID = 7200
sprpriority = 5
postype = p1
pos = 31, -69
pausemovetime = 60
ownpal = 1
scale = 0.5, 0.5

[State 700, No walking]
type = assertspecial
trigger1 = 1
flag = nowalk
[State 700, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1



[Statedef 7010]
type = C
physics = C
movetype = I
anim = 701
velset = 0, 0
ctrl = 0
sprpriority = 2
poweradd = 78
facep2 = 1

[State 700, Snd]
type = playsnd
trigger1 = !time
value = 6080,0

[State 701, HB]
type = hitby
trigger1 = 1
value = SCA, AT
time = 1
[State 701, Stop]
type = posfreeze
trigger1 = 1
value = 1

[State 701, Pause]
type = pause
trigger1 = !time
time = 15
movetime = 15
endcmdbuftime = 15
pausebg = 0
[State 701, Pause]
type = pause
trigger1 = !time && numenemy
trigger1 = (enemynear, movehit = 1)
time = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
movetime = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
endcmdbuftime = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
pausebg = 0

[State 701, Flash]
type = palfx
trigger1 = !time
add = 0, 50, 255
sinadd = 0, -50, -255, 60
time = 15

[State 701, Snd]
type = playsnd
trigger1 = !time
value = 172,0
channel = 0

[State 701, Spark]
type = explod
trigger1 = animelem = 2
anim = 7200
ID = 7200
sprpriority = 5
postype = p1
pos = 25, -22
pausemovetime = 60
ownpal = 1
scale = 0.5, 0.5

[State 701, No walking]
type = assertspecial
trigger1 = 1
flag = nowalk
[State 701, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1



[Statedef 7020]
type = A
physics = A
movetype = I
anim = 702
ctrl = 0
sprpriority = 2
poweradd = 78
facep2 = 1

[State 700, Snd]
type = playsnd
trigger1 = !time
value = 6080,0

[State 702, HB]
type = hitby
trigger1 = time < 15
value = SCA, AT
time = 1

[State 702, Pause]
type = pause
trigger1 = !time
time = 15
movetime = 15
endcmdbuftime = 15
pausebg = 0
[State 702, Pause]
type = pause
trigger1 = !time && numenemy
trigger1 = (enemynear, movehit = 1)
time = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
movetime = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
endcmdbuftime = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
pausebg = 0

[State 702, Type]
type = statetypeset
trigger1 = time < 15
physics = N
[State 702, Stop]
type = posfreeze
trigger1 = time < 15
value = 1

[State 702, Vel]
type = velset
trigger1 = time = 15
x = ifelse(vel x > 2, 2, ifelse(vel x < -2, -2, vel x))
y = ifelse(vel y < -2, vel y, -2)
[State 702, Type]
type = statetypeset
trigger1 = time >= 15
physics = A
[State 702, Ctrl]
type = ctrlset
trigger1 = time >= 15
value = 1

[State 702, Flash]
type = palfx
trigger1 = !time
add = 0, 64, 255
sinadd = 0, -64, -255, 60
time = 15

[State 702, Snd]
type = playsnd
trigger1 = !time
value = 172,0
channel = 0

[State 702, Spark]
type = explod
trigger1 = animelem = 2
anim = 7200
ID = 7200
sprpriority = 5
postype = p1
pos = 40, -66
pausemovetime = 60
ownpal = 1
scale = 0.5, 0.5

[State 702, asserts]
type = assertspecial
trigger1 = 1
flag = noairguard
[State 702, Ctrl]
type = ctrlset
trigger1 = time > 10
value = 1

[Statedef 470]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5070, 1]
type = ChangeAnim
trigger1 = 1
value = 5070

[State 5070, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 471

[Statedef 6110]
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
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 5110, 7]
type = Explod
trigger1 = Time = 0
trigger1 = !SysVar(0)
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0, 0
sprpriority = ifelse (sysvar(1) <= Const720p(56), -10, 10)
postype = p1

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
type = SelfState
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
type = VelSet
trigger1 = abs(Vel x) < Const(movement.down.friction.threshold)
persistent = 0
x = 0

[State 5110, 15]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 16]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

[State 6110, SS]
type = selfstate
trigger1 = alive
trigger1 = time >= 11
value = 5120



[Statedef 471]
type    = A
movetype= H
physics = N

[State 5071, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5071, 2]
type = VelAdd
trigger1 = 1
y = 0.7

[State 5071, 3]
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 15
type = changestate
value = 6110

[Statedef 6215]
type    = A
movetype= H
physics = N
ctrl = 0

[State 5030, 1]
type = ChangeAnim
trigger1 = Anim != 5030 && anim!=6215
trigger1 = SelfAnimExist(5030)
value = 5030

[State 5030, 1]
type = ChangeAnim2
trigger1 = Anim != 5030 && anim!=6215
trigger1 = !SelfAnimExist(5030)
value = 6215

[State 5030, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 3]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 6]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = time>=5
value = 6216

[State 5210, 3]
type = null
trigger1 = vel y > 0
trigger1 = alive
value2 = SCA
time = 21

[State 5035, 3]
type = SelfState

trigger1 = vel y > 0
value = cond(alive=0,5050,5210)



[Statedef 6216]
type    = A
movetype= H
physics = N

[State 5035, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059]
trigger1 = Anim != 5090
trigger1 = anim != 6215
value = 5035

[State 5035, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5210, 3]
type = null
trigger1 = vel y >= 0
trigger1 = alive
value2 = SCA
time = 21

[State 5035, 3]
type = SelfState

trigger1 = vel y >= 0
value = cond(alive=0,5050,5210)

[Statedef 7715]
movetype= h
physics = n
velset = 0,0
ctrl = 0

[state 710,1]
type = selfstate
trigger1 = time = 0 && pos y >= 0 && command != "holddown"
value = 5000

[state 710,2]
type = selfstate
trigger1 = time = 0 && pos y >= 0 && command = "holddown"
value = 5010

[state 710,3]
type = statetypeset
trigger1 = time = 1
statetype = a

[state 710,4]
type = changeanim
trigger1 = 1
value = 5012

[state 710,5]
type = changestate
trigger1 = hitshakeover
value = 7716


[Statedef 7716]
type    = a
movetype= h
physics = n
ctrl = 0

[state 711, 1]
type = veladd
trigger1 = 1
y = 0.5

[state 711, 2]
type = hitvelset
trigger1 = time = 0
x = -1
y = 1

[state 711, 3]
type = changestate
trigger1 = animtime = 0 || time >= 10
value = 7717

[state 711, 4]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,1

[state 711, 2]
type = changeanim
trigger1 = selfanimexist(5060) && anim != 5060
value = 5060

[state 711, 6]
type = changestate
trigger1 = pos y >= 10 && vel y > 0
value = 328


[Statedef 7717]
type    = a
movetype= h
physics = n
ctrl = 0

[state 712, 1]
type = veladd
trigger1 = 1
y = 0.5

[state 712, 2]
type = changeanim
trigger1 = selfanimexist(5060) && anim != 5060
value = 5060

[state 712, 3]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,1

[state 712, 3]
type = changestate
trigger1 = pos y >= 10 && vel y > 0
value = 328

[Statedef 328]
type    = l
movetype= h
physics = n

[state 328, envshake]
type = Fallenvshake
trigger1 = time = 0

[state 328, 1]
type = changeanim
persistent = 0
trigger1 = selfanimexist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[state 328, 2]
type = changeanim
triggerall = time = 0
triggerall = anim != [5110,5119]
trigger1 = anim != [5161,5169]
trigger2 = !selfanimexist(5170 + (anim % 10))
value = 5170

[state 328, 3]
type = changeanim
triggerall = time = 0
triggerall = anim != [5110,5119]
trigger1 = anim = [5161,5169]
trigger1 = selfanimexist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[state 328, 4]
type = hitfalldamage
trigger1 = time = 0

[state 328, 5]
type = posset
trigger1 = time = 0
y = 0

[state 328, var]
type = varset
trigger1 = time = 0
trigger1 = gethitvar(fall.yvel) != 0
sysvar(1) = Floor(vel y)

[state 328, 6]
type = playsnd
triggerall = prevstateno != [715,720]
trigger1 = time = 0 && !sysvar(0)
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[state 328, 6]
type = playsnd
triggerall = prevstateno = 720
trigger1 = time = 0 && !sysvar(0)
value = s20, 7

[state 328, 8]
type = velset
trigger1 = 1
x = 0
y = 0

[state 328, 9]
type = changeanim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = selfanimexist(5110 + (anim % 10))
trigger1 = animtime = 0
trigger2 = sysvar(0)
value = 5110 + (anim % 10)

[state 328, 10]
type = changeanim
persistent = 0
triggerall = anim != [5111,5119]
trigger1 = animtime = 0
trigger2 = sysvar(0)
value = 5110

[state 328, 11]
type = selfstate
triggerall = !alive
trigger1 = animtime = 0
trigger2 = sysvar(0)
trigger3 = anim = [5110,5119]
value = 5150

[state 328, 12]
type = varset
trigger1 = sysvar(0)
trigger1 = time = 0
sysvar(0) = 0

[state 328, 13]
type = velmul
trigger1 = 1
x = 0.85

[state 328, 14]
type = ForcefeeDBack
trigger1 = alive
trigger1 = time = 0
time = 8
ampl = 240
waveform = sine

[state 328, 15]
type = ForcefeeDBack
trigger1 = !alive
trigger1 = time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

[state 328,16]
type = playerpush
trigger1 = 1
value = 0

[state 328,17]
type = nothitby
trigger1 = time = 0
value = sca, aa, ap, at, na, np, nt, sa, sp, st, ha, hp, ht
time = 0
ignorehitpause = 1

[state 250,13]
type = envshake
trigger1 = time = 0 && prevstateno = 720
persistent = 0
time = 15
freq = 70
ampl = -4

[state 328,18]
type = selfstate
trigger1 = alive && time = 60
value = 5120


[Statedef 6100]
type    = a
movetype= h
physics = n
velset = 0,0

[state 326, 1]
type = changeanim
trigger1 = time < 9
value = ifelse(selfanimexist(5052),5052,(ifelse(selfanimexist(5051),5051,5050)))

[state 6100, 1]
type = changestate
trigger1 = hitshakeover
value = 6101



[Statedef 6101]
type    = a
movetype= h
physics = n
ctrl = 0

[state 6101, 1]
type = changeanim
trigger1 = time = 0
trigger1 = (gethitvar(animtype) = [4,5]) && (selfanimexist(5047 + gethitvar(animtype)))
value = 5047 + gethitvar(animtype)

[state 6101, 2]
type = hitvelset
trigger1 = time = 0
x = 1
y = 1

[state 6101, 3]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 6101, 4]
type = changeanim
trigger1 = time = 0
trigger1 = selfanimexist(5035)
trigger1 = anim != [5051,5059]
trigger1 = anim != 5090
value = 5035








[state 6101, 6]
type = changestate
trigger1 = hitover
trigger2 = animtime = 0
trigger3 = vel y > 0
trigger3 = pos y >= 10
trigger4 = time = 0
trigger4 = anim != 5035
value = 6102



[Statedef 6102]
type    = a
movetype= h
physics = n

[state 6102, 1]
type = changeanim
trigger1 = animtime = 0
trigger1 = anim = 5035
trigger2 = time = 0
trigger2 = anim != 5035
trigger2 = (anim != [5051, 5059]) && (anim != [5061, 5069])
trigger2 = anim != 5090
value = 5050

[state 6102, 3]
type = veladd
trigger1 = 1
y = .42

[state 6102, 4]
type = selfstate
triggerall = alive = 1
trigger1 = (time = 15) || (vel y >= 0)
value = 5040

[state 6102, 4]
type = selfstate
triggerall = alive = 0
trigger1 = (time = 15) || (vel y >= 0)
value = 5050

[state 6102, 5]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5100

















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

[state -2]
type = varadd
trigger1 = var(51)
var(51) = -1

[State -2, EXPLODsive Buffering Helper]
type = Helper
triggerall = stateno != [1251112,1251114]
trigger1 = !NumHelper(90000005)
helpertype = Normal
stateNo = 90000005
ID = 90000005
name = "EXPLODsive Buffering helper"
posType = P1
facing = ifElse(Facing = 1, 1, -1)
keyCtrl = 1
ignoreHitPause = 1

[State 1025, flames]
type = helper
triggerall = !numhelper(7183)
triggerall = numenemy = 1
trigger1 = enemy,stateno = 1900
trigger1 = enemy,movetype = H
helpertype = normal
stateno = 7183
ID = 7183
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1


[State 1025, flames]
type = helper
triggerall = !numhelper(7183)
triggerall = numenemy = 2
trigger1 = enemy(0),stateno = 1900
trigger1 = enemy(0),movetype = H
trigger2 = enemy(1),stateno = 1900
trigger2 = enemy(1),movetype = H
helpertype = normal
stateno = 7183
ID = 7183
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State -2, P2 Recovery]
type= targetstate
trigger1= numtarget(555)


trigger1= (target(555), stateno=5020) && (target(555), alive) && (target(555), hitfall)
ID= 555
value= 5085
ignorehitpause= 1


[State -2, Hit Detection]
type = varset
trigger1 = movecontact = 1 && var(31) < 0
var(31) = hitpausetime
ignorehitpause = 1

[State -2, Sparks]
type=helper
triggerall = movecontact = 1 && var(31) = hitpausetime
trigger1= movehit=1 && numenemy
trigger1=  var(32)=8008  || var(32)=8009  || var(32)=8010 || var(32)=8020 || var(32)=8021 || var(32)=8030 || var(32)=8070
trigger2= moveguarded=1 && numenemy
trigger2= var(34)=8100 || var(34)=8105
helpertype=normal
stateno=ifelse(moveguarded, var(34), var(32))
ID=8000
name="Spark"
postype=p1
pos= ifelse(p2dist x<-20, (ceil(p2dist x)), ifelse(p2dist x<var(35), ceil(p2dist x), var(35))), var(36)

facing= ifelse((p2bodydist x >=-5),-1,1)
ownpal=1
pausemovetime=65535
supermovetime=65535
ignorehitpause=1
size.xscale =1
size.yscale =1

[State -2, Hit Detection]
type = varset
trigger1 = 1
var(31) = -1

[State -2, Hit Detection]
type = varrangeset
trigger1 = movetype = I
trigger2 = movetype = H && time
first = 31
last = 32
value = -1
ignorehitpause = 1

[State -2, Hit Detection]
type = varrangeset
trigger1 = movetype = I
trigger2 = movetype = H && time
first = 34
last = 36
value = -1
ignorehitpause = 1

[state 183, 3]
type = helper
triggerall = numtarget(640)
trigger1 = target(640), stateno = 328
trigger1 = numhelper(329) = 0
stateno = 329
id = 329
name = "crashlanding"
pos = 0,0
postype = p2
ownpal = 1

[State -2]
type = varset
trigger1 = statetype != A
trigger2 = movetype = H
var(17) = 1


[State -2, Explod]
type = Helper
trigger1 = numhelper(12000) = 0
stateno = 12000
pos = ifelse(TeamSide = 1,18,302),53
facing =  ifelse(TeamSide = 1,1,-1)
postype = Left
id = 12000
ownpal = 1
sprpriority = -3
pausemovetime = 99999999
supermovetime = 99999999
scale = 1,1
ignorehitpause = 1

[state -2, var - Set ID to first enemy]
type = varset
trigger1 = numenemy
var(23) = enemy(0),id

[state -2, var - Set ID to second enemy]
type = varset
trigger1 = numenemy >= 2
var(24) = enemy(1),id



[State -2, Var]
type = varset
triggerall = var(1) != 1
trigger1 = stateno != [200,650]
var(1) = 1

[State -2, Var]
type = varset
triggerall = var(2) != 1
trigger1 = stateno != [200,650]
var(2) = 1

[State -2, Var]
type = varset
triggerall = var(3) != 1
trigger1 = stateno != [200,650]
var(3) = 1

[State -2, Var]
type = varset
triggerall = var(4) != 1
trigger1 = stateno != [200,650]
var(4) = 1

[State -2, Var]
type = varset
triggerall = var(5) != 1
trigger1 = stateno != [200,650]
var(5) = 1

[State -2, Var]
type = varset
triggerall = var(6) != 1
trigger1 = stateno != [200,650]
var(6) = 1

[State -2, Var]
type = varset
triggerall = var(7) != 1
trigger1 = stateno != [200,650]
var(7) = 1

[State -2, Var]
type = varset
triggerall = var(8) != 1
trigger1 = stateno != [200,650]
var(8) = 1

[State -2, P2 Facing]
type= targetfacing
trigger1= movecontact=1 && numtarget=1
trigger1= !(target,hitshakeover) && !(target,hitfall) && (target,time<=1)
value= ifelse(p2dist x>=0, -1, 1)
ignorehitpause= 1

[State -3, Prevent Undergound Juggles by POTS]
type= targetbind
trigger1= movehit=1
trigger1= numtarget=1 && numenemy
trigger1= (target,time<=1) && (target,ID=enemynear,ID)
trigger1= !(target,hitshakeover) && (target, hitfall) && (target, pos y>0)
pos= ceil(p2dist x), ceil(-pos y)
ignorehitpause= 1

[State -2, Custom Fall]
type = TargetState
triggerall = NumTarget
triggerall= !numtarget(555)
trigger1 = target,stateno = 5050
value = 5573

[State -3, Prevent Crossup]
type = width
trigger1 = movetype != H
edge = 8, 0
ignorehitpause = 1

[State -2, Reset var when the opponent recovers]
type = Varset
trigger1 = numenemy = 1
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
trigger3 = numenemy = 2
trigger3 = enemy(0),movetype != H
trigger3 = enemy(1),movetype != H
var(9) = 0

[State -2, Reset var when the opponent recovers]
type = Varset
trigger1 = numenemy = 1
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
trigger3 = numenemy = 2
trigger3 = enemy(0),movetype != H
trigger3 = enemy(1),movetype != H
var(12) = 0

[State -2, Reset var when the opponent recovers]
type = Varset
trigger1 = numenemy = 1
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
trigger3 = numenemy = 2
trigger3 = enemy(0),movetype != H
trigger3 = enemy(1),movetype != H
var(19) = 0

[State -2, Reset var when the opponent recovers]
type = Varset
trigger1 = numenemy = 1
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
trigger3 = numenemy = 2
trigger3 = enemy(0),movetype != H
trigger3 = enemy(1),movetype != H
var(18) = 0

[State -2, Reset var when the opponent recovers]
type = Varset
trigger1 = numenemy = 1
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
trigger3 = numenemy = 2
trigger3 = enemy(0),movetype != H
trigger3 = enemy(1),movetype != H
var(16) = 0

[State -2, Reset var when the opponent recovers]
type = Varset
trigger1 = numenemy = 1
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
trigger3 = numenemy = 2
trigger3 = enemy(0),movetype != H
trigger3 = enemy(1),movetype != H
var(15) = 0

[State -2, Reset var when the opponent recovers]
type = Varset
trigger1 = numenemy = 1
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
trigger3 = numenemy = 2
trigger3 = enemy(0),movetype != H
trigger3 = enemy(1),movetype != H
var(33) = 0

[State -2, Reset var when the opponent recovers]
type = Varset
trigger1 = numenemy = 1
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
trigger3 = numenemy = 2
trigger3 = enemy(0),movetype != H
trigger3 = enemy(1),movetype != H
var(13) = 0

[State -2, Reset var when the opponent recovers]
type = Varset
trigger1 = numenemy = 1
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
trigger3 = numenemy = 2
trigger3 = enemy(0),movetype != H
trigger3 = enemy(1),movetype != H
fvar(10) = 1

[State -2, Final Dampen]
type = null
trigger1 = (fvar(11) := cond(fvar(10)>0.1,fvar(10),0.1)) || 1
ignorehitpause = 1

[State -2, Dampener itself]
type = Attackmulset
trigger1 = stateno != [4000,4005]
value = fvar(11)
ignorehitpause = 1

[State -2, Dampener itself]
type = Attackmulset
trigger1 = stateno = [4000,4005]
value = 1
ignorehitpause = 1

[State -1, DTCB]
type = displaytoclipboard
trigger1 = 1
text = "Damage Dampener: %f"
params = fvar(11)
ignorehitpause = 1


[State -3, NoWalk after Parry]
type = assertspecial
trigger1 = prevstateno = 7000
trigger1 = stateno = 0 && time < 7
flag = nowalk


[State -3, Corner Push Reset]
type= varset
trigger1= fvar(5)
trigger1= numtarget
trigger1= (target, hitover) || (target, gethitvar(hitshaketime) > 0 && target, time <= 0)
fvar(5)= 0

[State -3, Corner Push Initial Vel]
type= varset
trigger1= movecontact=1 && numtarget
fvar(5) = (target, gethitvar(xvel))
ignorehitpause= 1

[State -3, Corner Push Apply]
type= posadd
triggerall = fvar(5)
triggerall = (statetype = S || statetype = C) && numtarget
triggerall = !hitpausetime && (target, gethitvar(hitshaketime) <= 0)
triggerall = (target, statetype = S || target, statetype = C) && !(target, gethitvar(yvel)) && !(target, hitfall)
trigger1 = target, frontedgebodydist <= abs(target, vel x)
trigger1 = (target, gethitvar(xvel) * target, facing) > 0
trigger2 = target, backedgebodydist <= abs(target, vel x)
trigger2 = (target, gethitvar(xvel) * target, facing) < 0
x = ifelse(target, frontedgebodydist <= 0, -1, 1) * (target, facing) * fvar(5)

[State -3, Corner Push Friction]
type= varset
trigger1= numtarget
trigger1= target, gethitvar(hitshaketime) <= 0
fvar(5) = fvar(5)*0.85



[State -2, deactivate tag]
type = VarSet
triggerall = sysvar(4) > 0
triggerall = sysvar(4) != 6
trigger1 = roundstate > 2
trigger1 = Win || Lose
trigger2 = NumPartner
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
triggerall = Partner, StateNo != [1251110,1251114]
trigger1 = sysvar(4) = 10
trigger2 = sysvar(4) != 2 && PrevStateNo = 1251131
sysvar(4) = 15

[State -2, Uno]
type = null
trigger1 = PrevStateNo = 1251106
sysvar(4) = 7

[State -2, Eksena]
type = ScreenBound
trigger1 = NumPartner
trigger1 = Partner, sysvar(4) = 4
trigger1 = StateNo = 1251131 || prevStateNo = 1251131
value = 1
movecamera = 1,1

[State -2, no_throw]
type = NotHitBy
trigger1 = NumPartner
trigger1 = sysvar(4) = [8,9]
trigger1 = StateNo != 1251112
value = , AT

[State -2, def]
type = VarSet
triggerall = NumPartner && sysvar(4) != 15
triggerall = Partner, Time = [0,1]
trigger1 = Partner, StateNo = 1251104
trigger2 = Partner, StateNo = 1251110
trigger2 = StateNo != [1251101,1251133]
sysvar(4) = 1

[State -2, GTG]
type = ChangeState
trigger1 = NumPartner
trigger1 = Life && Partner, Life
trigger1 = PrevStateNo = 1251126
trigger1 = StateNo != 1251111
value = 1251111
ignorehitpause = 1

[State -2, Oh No!]
type = SelfState
triggerall = sysvar(4) != [8,9]
triggerall = sysvar(4) != [12,15]
trigger1 = prevStateNo = 1251112
trigger1 = !(StateNo = [1251101,1251133])
value = 1251112
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
trigger1 = NumPartner
trigger1 = Partner, sysvar(4) = 2
trigger2 = (sysvar(4) = [8,9]) && StateNo != [1251110,1251111]
value = 5

[State -2, err]
type = ChangeState
trigger1 = NumPartner
trigger1 = ID > Partner, ID
trigger1 = roundstate = 2 && sysvar(4)
trigger1 = StateNo = 0 && pos Y < 0
value = 1251112


[State -2, ctrl]
type = SelfState
trigger1 = TeamMode = Simul
trigger1 = NumPartner
trigger1 = Partner, sysvar(4)
trigger1 = !sysvar(4)
trigger1 = sysvar(4) != 8 && Partner,sysvar(4) != 8 && Partner,sysvar(4) != 12
trigger1 = StateNo != 5900
trigger1 = Partner, sysvar(4) != [2,15]
trigger1 = RoundState = 2
trigger1 = Life && Partner, Life
trigger1 = StateNo != [1000,1251199]
value = 1251112
ctrl = 0

[State -2, 1]
type = SelfState
value = 1251106
trigger1 = NumPartner
trigger1 = StateNo != 1251106 && Partner, StateNo = [1251128,1251129]

[State -2, 1]
type = SelfState
value = 1251131
triggerall = NumPartner
triggerall = Partner, Time = [0,1]
triggerall = (StateNo = 1251112 || StateNo = 1251114) && MoveType != A
trigger1 = Partner, StateNo = 1251132 || Partner, prevStateNo = 1251132
trigger2 = Partner, StateNo = 1251127 && !NumHelper(1251101)

[State -2, cancelfx]
type = PalFx
triggerall = RoundState = 2
triggerall = Time = [0,1]
trigger1 = StateNo = 1251123
trigger2 = StateNo = 1251125 && NumTarget
Time = 6
add = (110 + Time*15), (110 + Time*15), (190 + Time*15)
sinadd =-245, -245, -250, (40 + Time*5)

[State -2, TargetVelAdd]
type = TargetVelAdd
trigger1 = NumTarget
trigger1 = numPartner
trigger1 = !(Target, StateNo = [1251117,1251119]) && !(Target, PrevStateNo = [1251117,1251119])
trigger1 = Roundstate = 2
trigger1 = prevStateNo = 1251126
trigger1 = Partner, StateNo = 1251102 && !(Partner, MoveContact)
trigger1 = Target, statetype != A && Target, GetHitVar(xvel) < 0
x = 0.12

[State -2, drop]
type = TargetDrop
triggerall = NumTarget
triggerall = Time = [0,1]
trigger1 = !Life
trigger2 = StateNo = [1251101,1251105]
trigger3 = StateNo = [1251115,1251116]
trigger4 = StateNo = 1251106 || StateNo = 1251123

[State -2, Buwelo]
type = PosFreeze
trigger1 = PrevStateNo = 1251102 && StateNo != 1251123
trigger1 = sysvar(4) = 15
trigger1 = Anim != [42,45]
trigger1 = Time <= 5
trigger1 = NumTarget
trigger1 = Target, Statetype != A
trigger1 = MoveType = A

[State -2, aircombo]
type = VelMul
trigger1 = NumTarget || p2BodyDist x < 0
trigger1 = PrevStateNo = 1251102
trigger1 = StateNo != [1251100, 1251190]
trigger1 = MoveType = A && StateNo < 1000
x = ifelse(p2BodyDist x < 0,0.7,0.9)
y = ifelse(vel y < 2,2,0.9)

[State -2, velfollow]
type = VelAdd
trigger1 = numtarget
trigger1 = PrevStateNo = 1251123 && (Target, vel y < -0.6)
trigger1 = MoveType = A && (Time = [0,3])
y = -1.2

[State -2, Target]
type = TargetState
trigger1 = NumTarget
trigger1 = StateNo = 1251102 || PrevStateNo = 1251102 || StateNo = 1251123 || PrevStateNo = 1251123 || StateNo = 1251126 || PrevStateNo = 1251126
trigger1 = (Target, Pos Y < 0) && !(Target, StateNo = [120,152]) && (Target, StateNo != [1251109,1251119]) && MoveContact  && (Target, Anim = [5100,5170])  && (Target, Anim != [5110,5120])  && Target, PrevStateNo != 1251119
trigger1 = (Target, Statetype != A)
trigger1 = !Target, HitOver
value = 1251119
ignorehitpause = 1

[State -2, Ov]
type = TargetState
triggerall = NumTarget
triggerall = numPartner
triggerall = !(Target, StateNo = [120,152]) && !(Target, Anim = [120,152]) && Partner, StateNo = [1251101,1251133]
triggerall = Time = [0,2]
trigger1 = StateNo = 1251125 && Target, StateType != A
trigger2 = (StateNo = 1251126 || PrevStateNo = 1251126) && Target, Pos Y >= -10 && (Target, StateNo != [1251109,1251119]) && (Target, StateNo != [5000,5500])
value = 1251117
ignorehitpause = 1

[State -2, Ov2]
type = TargetState
triggerall = NumTarget = 1
trigger1 = (Target, StateNo != [1251109,1251119]) && !(Target, StateNo = [120,152]) && !(Target, Anim = [120,152]) && ((Target, StateNo != [5000,5500]) || (Target, PrevStateNo != 1251119 && Target, StateNo = [5030,5100])) && !Target, HitOver
trigger1 = (StateNo = 1251125 && Time = [0,2]) || StateNo = 1251126 || PrevStateNo = 1251126
value = 1251119
ignorehitpause = 1

[State -2, T_T]
type = TargetVelSet
triggerall = NumTarget = 1
triggerall = Target, Movetype = H && Target, vel x != 0
trigger1 = StateNo = 1251126 || sysvar(4) = 3
x = ifelse((Target, vel x > 0),0.55,-0.55)

[State -2, UM]
type = SelfState
trigger1 = Numpartner
trigger1 = Partner, StateNo = 1251106
trigger1 = StateNo = [1000,4500]
value = 1251129







[State -2, jump landing sound]
triggerall = Time = 1
trigger1 = stateno = 52
trigger2 = stateno = 106
type = PlaySnd
persistent = 0
value = 8,1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(3154)>0
trigger1 = ctrl
id = 3154

[State -2, gethits]
type = PlaySnd
triggerall = (stateno = [5000,5210]) && (Time = 0) && (!IsHelper)
trigger1 = anim = 5002
trigger2 = anim = 5012
trigger3 = anim = 5022
trigger4 = anim = 5030
trigger5 = anim = 5070
persistent = 0
value = 174,0


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


[State -3, Meiling gets up]
type = PlaySnd
triggerall = Time = 1
triggerall = Life > 0
trigger1 = StateNo = 5120
value = 5000, 3
channel = 0





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
trigger6 = sysvar(4) = 15 && StateNo != [1251101,1251133]
trigger6 = NumTarget = 0 && Partner, NumTarget = 0
sysvar(4) = 1

[State -2, def_Partner]
type = VarSet
trigger1 = numpartner
trigger1 = teammode = simul
trigger1 = roundstate < 1
sysvar(4) = 1 + ((ID > Partner, ID)*4)

[State -3, enterTheScreen]
type = ChangeState
trigger1 = sysvar(4)
trigger1 = NumPartner
trigger1 = StateNo = [1251112,1251114]
trigger1 = Life
trigger1 = (Partner, StateNo = [1251109,1251111]) || (Partner, StateNo = 1251125 && Partner, Time > 0)
trigger1 = (Partner, StateNo != 1251110) || (Partner, StateNo = 1251110	&& Partner, Time > 24)
value = ifelse((Partner, StateNo = 1251125),1251131,1251101)


[State -3, enterTheScreen]
type = ChangeState
triggerall = sysvar(4)
triggerall = NumPartner
triggerall = StateNo = 1251112 && Life
trigger1 = ((Partner, StateNo = 1251126 && Partner, Time > 0) || Partner, PrevStateNo = 1251126)
trigger2 = Partner, NumHelper(1251105)
value = 1251102


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
trigger1 = Partner, sysvar(4) = [12,13]
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

[State -3, Quiet]
type = AssertSpecial
trigger1 = NumPartner
trigger1 = Partner, sysvar(4) = 7
trigger1 = !Alive && !NumHelper(1251130)
flag = nokosnd

[State -3, Dark]
type = AssertSpecial
triggerall = numpartner
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
trigger2 = StateNo = 1251127
trigger3 = (sysvar(4) = [8,9]) && StateNo = 1251110 && Time > 12
trigger4 = StateNo = 1251110 && Time > 14
Time = 2
add = 0,0,0
mul = 150,150,150

[State -3, InvBG]
type = BgPalFx
trigger1 = NumHelper(1251130)
trigger2 = StateNo = 1251106
Time = 2
color = 0
invertall = 1
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
mul = 150, 150, 150

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
triggerall = NumPartner
triggerall = Partner, Alive
trigger1 = Movetype = H
trigger2 = StateNo = [5000,5990]
trigger3 = StateNo = [150,151]
sysvar(4) = 9

[State -3, bangon]
type = SelfState
trigger1 = NumPartner
trigger1 = sysvar(4) = 9
trigger1 = Alive && Partner, Alive
trigger1 = StateNo != 5120
trigger1 = StateNo = 5110 || Anim = 5110
trigger1 = Time >= 12
value =5120

[State -3, leavePA]
type = SelfState
triggerall = NumPartner
triggerall = sysvar(4) = [8,9]
triggerall = StateType != A || prevStateNo = [5000,5500]
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
trigger1 = StateNo != [1251111,1251112]
trigger1 = sysvar(4) = [8,9]
value = ifelse((Partner, Alive),0, 1)

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



[State -3, fadeOut]
type = Trans
triggerall = NumPartner
trigger1 = !Life && Partner, Life

trigger1 = Partner, sysvar(4) = 7
trigger1 = StateNo = 5150
Trans = addalpha
alpha = (256-ifelse((Partner,sysvar(4) = 7),(Time *3),(Time*2))), (Time*Time)

[State -3, fadeOut]
type=assertspecial
triggerall = numpartner
triggerall = alive=0 && !ishelper && Partner, sysvar(4) && RoundState = 2
trigger1=stateno=5150 && (((time=[80,150])&&(time%10<5))||(time>150))
trigger1=(partner,stateno!=stateno)||((partner,stateno=stateno)&&(partner,time<time))
flag=invisible
flag2=noshadow

[state -3, fadeOut]
type=posset
triggerall = numpartner
trigger1 = sysvar(4)
trigger1=stateno=5150 && alive=0 && !ishelper && (time>150)
trigger1=(partner,stateno!=stateno)||((partner,stateno=stateno)&&(partner,time<time))
trigger1 = Partner, sysvar(4)
y=-3

[state -3, dead_Var]
type = VarSet
triggerall = numpartner
triggerall = !Alive
triggerall = RoundState = 2
triggerall = StateNo = [5131,5150]
triggerall = Partner, sysvar(4)
trigger1 = Time >= 125
trigger2 = Partner, sysvar(4) = 7
trigger2 = Time >= 85
sysvar(4) = 6

[state -3, awake_Var]
type = VarSet
triggerall = NumPartner
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
type = SelfState
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

[State -3, 1251129]
type = LifeAdd
trigger1 = PrevStateNo = 1251129 && Time > 1
value = -LifeMax

[State -3, 1251129]
type = SelfState
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
pausemoveTime=99999
supermoveTime=99999

[State -3, T_T]
type = ScreenBound
trigger1 = roundstate > 2
trigger1 = !Alive
trigger1 = PrevStateNo = 1251113

value = 0
movecamera = 0,0

[State -3, T_T]
type = PosFreeze
trigger1 = NumEnemy
trigger1 = EnemyNear, NumHelper(1251107) || Enemy, NumHelper(1251107)
trigger2 = PrevStateNo = 1251121
trigger3 = StateNo = 1251125

[State -3, T_T]
type = SelfState
triggerall = NumPartner
triggerall = sysvar(4) > 0
trigger1 = RoundState = 2  && Pos Y < 0
trigger1 = StateNo = 0 && (Partner, StateNo != [1251112,1251114])
trigger1 = PrevStateNo = [1251112,1251114]
value = 1251112

[State -3, wait out]
type = ChangeState
triggerall = NumPartner
triggerall = RoundState = 2
triggerall = Life && Partner, Life
triggerall = StateNo != [1251110,1251114]
trigger1 = sysvar(4) = 2
trigger1 = (PrevStateNo = [5000,5500]) || (StateNo != [200,1251199]) && (MoveType != H)
trigger2 = sysvar(4) = 4
trigger2 = MoveType = I || ((Partner, prevStateNo = 1251131 || Partner, StateNo != [1251101,1251135]) && Time > 1)
trigger3 = sysvar(4) = 3
trigger3 = (StateNo = 1251126 && Time > 1) && ((Partner, StateNo = 1251102 && Partner, BackEdgeBodyDist > 15) || Partner, PrevStateNo = [1251115,1251116])
trigger4 = (sysvar(4) = [2,4]) && MoveType = I && (StateNo != [1251101,1251133])
trigger5 = NumHelper(1251125)
trigger5 = StateNo = [0,199]
value = 1251111
ctrl = 0
ignorehitpause = 1




[State -3, Landing Dust]
type = Explod
triggerall =  NumExplod(60) < 1
triggerall = Time = 3
trigger1 = StateNo = 52
trigger2 = StateNo = 101
trigger3 = StateNo = 106
trigger4 = PrevStateNo = 52 && StateNo = 11
anim = 7088
ID = 7104
pos = 3,2
postype = p1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 0
ownpal = 1
removeongethit = 1

[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1 && Var(20) != 2
trigger1 = StateNo = 52
trigger2 = StateNo = 101
trigger3 = StateNo = 106
value = 8, 1






[State -3, PlaySnd]
type = PlaySnd
trigger1 = (Life <= 0) && (var(50) = 0)
value = 174,1

[State -3, VarSet]
type = VarSet
trigger1 = Life <= 0
v = 50
value = 1












