
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


;===================< DEFAULT VALUES >===================

[Defaults]
command.time = 15
command.buffer.time = 1



;===================< HOLD DIR >===================

[Command]
name = "holdfwd"
command = /$F
time = 1
[Command]
name = "holdback"
command = /$B
time = 1
[Command]
name = "holdup"
command = /$U
time = 1
[Command]
name = "holddown"
command = /$D
time = 1


;===================< HOLD BUTTON >===================

[Command]
name = "holda"
command = /a
time = 1
[Command]
name = "holdb"
command = /b
time = 1
[Command]
name = "holdc"
command = /c
time = 1
[Command]
name = "holdx"
command = /x
time = 1
[Command]
name = "holdy"
command = /y
time = 1
[Command]
name = "holdz"
command = /z
time = 1
[Command]
name = "holdstart"
command = /s
time = 1


;===================< DIR >===================

[Command]
name = "fwd"
command = F
time = 1
[Command]
name = "back"
command = B
time = 1
[Command]
name = "up"
command = U
time = 1
[Command]
name = "down"
command = D
time = 1


;===================< SUPER MOTIONS >===================
[Command]
name = "teamsuper"
command = ~D, DF, F, D, DF, F, x+a
time = 32

[Command]
name = "teamsuper"
command = ~D, DF, F, D, DF, F, x+b
time = 32

[Command]
name = "teamsuper"
command = ~D, DF, F, D, DF, F, x+c
time = 32

[Command]
name = "teamsuper"
command = ~D, DF, F, D, DF, F, y+a
time = 32

[Command]
name = "teamsuper"
command = ~D, DF, F, D, DF, F, y+b
time = 32

[Command]
name = "teamsuper"
command = ~D, DF, F, D, DF, F, y+c
time = 32

[Command]
name = "teamsuper"
command = ~D, DF, F, D, DF, F, z+a
time = 32

[Command]
name = "teamsuper"
command = ~D, DF, F, D, DF, F, z+b
time = 32

[Command]
name = "teamsuper"
command = ~D, DF, F, D, DF, F, z+c
time = 32


[Command]
name = "sgs"
command = x, x, F, a, z
time = 48
[Command]
name = "sgs"
command = x, x, F, a+z
time = 40
[Command]
name = "sgs"
command = x, x, F+a+z
time = 32

[Command]
name = "qcbhcfk"
command = ~D, B, D, F, a
time = 40
[Command]
name = "qcbhcfk"
command = ~D, B, D, F, b
time = 40
[Command]
name = "qcbhcfk"
command = ~D, B, D, F, c
time = 40
[Command]
name = "qcbhcfk"
command = ~D, B, D, F, ~a
time = 40
[Command]
name = "qcbhcfk"
command = ~D, B, D, F, ~b
time = 40
[Command]
name = "qcbhcfk"
command = ~D, B, D, F, ~c
time = 40

[Command]
name = "2df2k"
command = ~D, DF, F, D, DF, a+b
time = 30
[Command]
name = "2df2k"
command = ~D, DF, F, D, DF, a+c
time = 30
[Command]
name = "2df2k"
command = ~D, DF, F, D, DF, b+c
time = 30

[Command]
name = "hcf2k"
command = ~B, DB, D, DF, F, a+b
time = 30
[Command]
name = "hcf2k"
command = ~B, DB, D, DF, F, a+c
time = 30
[Command]
name = "hcf2k"
command = ~B, DB, D, DF, F, b+c
time = 30

[Command]
name = "hcb2p"
command = ~F, DF, D, DB, B, x+y
time = 30
[Command]
name = "hcb2p"
command = ~F, DF, D, DB, B, x+z
time = 30
[Command]
name = "hcb2p"
command = ~F, DF, D, DB, B, y+z
time = 30

[Command]
name = "2qcfp"
command = ~D, DF, F, D, DF, F, x
time = 30
[Command]
name = "2qcfp"
command = ~D, DF, F, D, DF, F, y
time = 30
[Command]
name = "2qcfp"
command = ~D, DF, F, D, DF, F, z
time = 30
[Command]
name = "2qcfp"
command = ~D, DF, F, D, DF, F, ~x
time = 30
[Command]
name = "2qcfp"
command = ~D, DF, F, D, DF, F, ~y
time = 30
[Command]
name = "2qcfp"
command = ~D, DF, F, D, DF, F, ~z
time = 30

[Command]
name = "2qcbp"
command = ~D, DB, B, D, DB, B, x
time = 30
[Command]
name = "2qcbp"
command = ~D, DB, B, D, DB, B, y
time = 30
[Command]
name = "2qcbp"
command = ~D, DB, B, D, DB, B, z
time = 30
[Command]
name = "2qcbp"
command = ~D, DB, B, D, DB, B, ~x
time = 30
[Command]
name = "2qcbp"
command = ~D, DB, B, D, DB, B, ~y
time = 30
[Command]
name = "2qcbp"
command = ~D, DB, B, D, DB, B, ~z
time = 30

[Command]
name = "2dfk"
command = ~D, DF, F, D, DF, a
time = 30
[Command]
name = "2dfk"
command = ~D, DF, F, D, DF, b
time = 30
[Command]
name = "2dfk"
command = ~D, DF, F, D, DF, c
time = 30
[Command]
name = "2dfk"
command = ~D, DF, F, D, DF, ~a
time = 30
[Command]
name = "2dfk"
command = ~D, DF, F, D, DF, ~b
time = 30
[Command]
name = "2dfk"
command = ~D, DF, F, D, DF, ~c
time = 30

[Command]
name = "2qcbk"
command = ~D, DB, B, D, DB, B, a
time = 30
[Command]
name = "2qcbk"
command = ~D, DB, B, D, DB, B, b
time = 30
[Command]
name = "2qcbk"
command = ~D, DB, B, D, DB, B, c
time = 30
[Command]
name = "2qcbk"
command = ~D, DB, B, D, DB, B, ~a
time = 30
[Command]
name = "2qcbk"
command = ~D, DB, B, D, DB, B, ~b
time = 30
[Command]
name = "2qcbk"
command = ~D, DB, B, D, DB, B, ~c
time = 30

[Command]
name = "2qcbs"
command = ~D, DB, B, D, DB, B, s
time = 30
[Command]
name = "2qcbs"
command = ~D, DB, B, D, DB, B, ~s
time = 30

[Command]
name = "teamsuper"
command = ~D, DF, F, D, DF, F, c+z
time = 20


;===================< SPECIAL MOTIONS >===================

[Command]
name = "hcfy"
command = ~D, DF, F, ~y
time = 25
[Command]
name = "hcfz"
command = ~D, DF, F, ~z
time = 25

[Command]
name = "hcba"
command = ~F, DF, D, DB, B, a
time = 30
[Command]
name = "hcbb"
command = ~F, DF, D, DB, B, b
time = 30
[Command]
name = "hcbc"
command = ~F, DF, D, DB, B, c
time = 30
[Command]
name = "hcba"
command = ~F, DF, D, DB, B, ~a
time = 30
[Command]
name = "hcbb"
command = ~F, DF, D, DB, B, ~b
time = 30
[Command]
name = "hcbc"
command = ~F, DF, D, DB, B, ~c
time = 30

[Command]
name = "qcfx"
command = ~D, DF, F, x
time = 15
[Command]
name = "qcfy"
command = ~D, DF, F, y
time = 15
[Command]
name = "qcfz"
command = ~D, DF, F, z
time = 15
[Command]
name = "qcfs"
command = ~D, DF, F, s
time = 15
[Command]
name = "qcfx"
command = ~D, DF, F, ~x
time = 15
[Command]
name = "qcfy"
command = ~D, DF, F, ~y
time = 15
[Command]
name = "qcfz"
command = ~D, DF, F, ~z
time = 15
[Command]
name = "qcfs"
command = F,b+y
time = 15
[Command]
name = "qcbs"
command = F,b+y
time = 16

[Command]
name = "qcf2p"
command = ~D, DF, F, x+y
time = 15
[Command]
name = "qcf2p"
command = ~D, DF, F, x+z
time = 15
[Command]
name = "qcf2p"
command = ~D, DF, F, y+z
time = 15

[Command]
name = "dfx"
command = ~F, D, DF, x
time = 20
[Command]
name = "dfy"
command = ~F, D, DF, y
time = 20
[Command]
name = "dfz"
command = ~F, D, DF, z
time = 20
[Command]
name = "dfx"
command = ~F, D, DF, ~x
time = 20
[Command]
name = "dfy"
command = ~F, D, DF, ~y
time = 20
[Command]
name = "dfz"
command = ~F, D, DF, ~z
time = 20

[Command]
name = "df2p"
command = F, D, DF, x+z
time = 20
[Command]
name = "df2p"
command = F, D, DF, y+z
time = 20
[Command]
name = "df2p"
command = F, D, DF, x+y
time = 20

[Command]
name = "db2p"
command = B,b+y
time = 20
[Command]
name = "db2p"
command = B,b+y
time = 20
[Command]
name = "db2p"
command = ~B,b+y
time = 20

[Command]
name = "qcf2k"
command = ~D, F, a+b
time = 15
[Command]
name = "qcf2k"
command = ~D, F, a+c
time = 15
[Command]
name = "qcf2k"
command = ~D, F, b+c
time = 15

[Command]
name = "qcfa"
command = ~D, F, a
time = 15
[Command]
name = "qcfb"
command = ~D, F, b
time = 15
[Command]
name = "qcfc"
command = ~D, F, c
time = 15
[Command]
name = "qcfa"
command = ~B, D, F, a
time = 15
[Command]
name = "qcfb"
command = ~B, D, F, b
time = 15
[Command]
name = "qcfc"
command = ~B, D, F, c
time = 15


[Command]
name = "qcba"
command = ~D, DB, B, a
time = 15
[Command]
name = "qcbb"
command = ~D, DB, B, b
time = 15
[Command]
name = "qcbc"
command = ~D, DB, B, c
time = 15
[Command]
name = "qcba"
command = ~D, DB, B, ~a
time = 15
[Command]
name = "qcbb"
command = ~D, DB, B, ~b
time = 15
[Command]
name = "qcbc"
command = ~D, DB, B, ~c
time = 15

[Command]
name = "qcb2k"
command = ~D, DB, B, a+b
time = 15
[Command]
name = "qcb2k"
command = ~D, DB, B, a+c
time = 15
[Command]
name = "qcb2k"
command = ~D, DB, B, b+c
time = 15

[Command]
name = "qcb2p"
command = ~D, DB, B, x+y
time = 15
[Command]
name = "qcb2p"
command = ~D, DB, B, x+z
time = 15
[Command]
name = "qcb2p"
command = ~D, DB, B, y+z
time = 15


[Command]
name = "df2k"
command = B,b+y
time = 20
[Command]
name = "df2k"
command = B,b+y
time = 20
[Command]
name = "df2k"
command = ~B,b+y
time = 20

[Command]
name = "db2k"
command = ~B, D, DB, a+b
time = 20
[Command]
name = "db2k"
command = ~B, D, DB, a+c
time = 20
[Command]
name = "db2k"
command = ~B, D, DB, b+c
time = 20

[Command]
name = "Counter_P"
command = ~DB, D, x
time = 16
[Command]
name = "Counter_P"
command = ~DB, D, y
time = 16
[Command]
name = "Counter_P"
command = ~DB, D, z
time = 16

[Command]
name = "Counter_K"
command = ~DB, D, a
time = 16
[Command]
name = "Counter_K"
command = ~DB, D, b
time = 16
[Command]
name = "Counter_K"
command = ~DB, D, c
time = 16


;===================< OTHER >===================

[Command]
name = "highjump"
command = $D, $U
time = 15


;===================< DOUBLE TAP >===================

[Command]
name = "FF"
command = F, F
time = 10
[Command]
name = "BB"
command = B, B
time = 10


;===================< 2/3 BUTTON COMBINATION >===================

[Command]
name = "recovery"
command = x+y
time = 1
[Command]
name = "recovery"
command = x+z
time = 1
[Command]
name = "recovery"
command = y+z
time = 1
[Command]
name = "recovery"
command = a+x
time = 1

[Command]
name = "recoverR"
command = ~D,DF,F
time = 14
[Command]
name = "recoverR"
command = ~D,DB,B
time = 14



[Command]
name = "2p"
command = x+y
time = 1
[Command]
name = "2p"
command = x+z
time = 1
[Command]
name = "2p"
command = y+z
time = 1

[Command]
name = "2k"
command = a+b
time = 1

[Command]
name = "2k"
command = a+c
time = 1

[Command]
name = "2k"
command = b+c
time = 1

[Command]
name = "TAUNT"
command = c+z
time = 1

;===================< SINGLE BUTTON >===================

[Command]
name = "a"
command = a
time = 4
[Command]
name = "b"
command = b
time = 4
[Command]
name = "c"
command = c
time = 4
[Command]
name = "x"
command = x
time = 4
[Command]
name = "y"
command = y
time = 4
[Command]
name = "z"
command = z
time = 4
[Command]
name = "start"
command = s
time = 4



;===========================================================================
;===============================< -1 STATES >=================================
;===========================================================================

[Statedef -1]

[State -1, Tick Fix]
type = ctrlset
triggerALL = !AILevel
triggerall = !ctrl
trigger1 = (stateno = 52 || stateno = 105 || stateno = 5120) && !animtime
trigger2 = (stateno = [200, 259]) && !animtime
trigger3 = (stateno = 5001 || stateno = 5011 || stateno = 151 || stateno = 153) && hitover
value = 1


[State -1, Double Shinkuu Hadouken]
type = changestate
value = 3600
triggerall = !AIlevel && roundstate=2 && var(1)!=2 && statetype!=A && power>=3000 && !var(20)
triggerall = TeamMode = Simul && NumPartner
triggerAll = Partner, Alive
triggerAll = Partner, Facing = Facing
triggerall= command = "teamsuper"
triggerAll = !(Partner, StateType = A) && !(Partner, var(20)) && !(Partner, MoveType = H)
triggerAll = (Partner, ctrl || Partner, StateNo = 21 || Partner, StateNo = 40 || Partner, StateNo = 52 || (Partner, StateNo = [100,102])) || Partner, var(7)
trigger1 = ctrl || (stateno = 200 || stateno = 400 || stateno = 430)
trigger2 = (stateno = [200, 255]) && stateno != 207 && movecontact
trigger3 = ((stateno = [1100, 1110]) || (stateno = [1300, 1310]) || stateno = 3100) && (movecontact = [1, 24]) && !var(33)
trigger4 = (stateno = [1000, 1999]) && numhelper(stateno + 5) && var(10) <= 5
trigger4 = helper(stateno + 5), var(3) || helper(stateno + 5), time<10



[State -1, roll combo]
type = changestate
value = 720
triggerall = !AIlevel
triggerall = command = "TAUNT"
triggerall = roundstate = 2 && statetype != A && var(20)
trigger1 = var(20) && (stateno = [200, 289]) && movecontact
trigger2 = var(20) && (stateno = [1000, 2999]) && statetype != A && movecontact
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger3 = helper(stateno + 5), var(3)

[State -1, dodge]
type = changestate
value = 194
triggerall = !AIlevel && roundstate = 2 && statetype != A
triggerall = Ctrl
trigger1 =  command = "TAUNT"

[State -1, roll]
type = changestate
value = 720
triggerall = !AIlevel && roundstate = 2 && statetype != A
triggerall = Ctrl
trigger1 =  command = "qcbs"

[State -1, roll]
type = changestate
value = 721
triggerall = !AIlevel && roundstate = 2 && statetype != A
triggerall = Ctrl
trigger1 =  command = "df2k"

[State -1, ashurasenkuu]
type = changestate
value = 721
triggerall = !AIlevel
triggerall = (command = "df2k" || command = "db2p" || command = "df2k" || command = "db2k")
triggerall = var(1) != 1 && roundstate = 2 && statetype != A
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 400 || stateno = 430)
trigger2 = (stateno = [200, 255]) && stateno != 207 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, shungokusatsu]
type = changestate
value = 4000
triggerall = !AIlevel
triggerall = command = "sgs"
triggerall = var(1) != 1 && roundstate = 2 && statetype != A && power >= 3000 && !var(20)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 400 || stateno = 430)
trigger2 = (stateno = [200, 255])
trigger3 = ((stateno = [1100, 1110]) || (stateno = [1300, 1310])) && (movecontact = [1, 24])
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && (stateno != [3020, 3049]) && var(10) < 5
trigger4 = helper(stateno + 5), var(3) || helper(stateno + 5), time<10
trigger5 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, shinshoryuuken]
type = changestate
value = 3120
triggerall = !AIlevel
triggerall = (var(1) = 1 && command = "2df2k") || (var(1) = 3 && command = "qcbhcfk")
triggerall = var(1) != 2 && roundstate = 2 && statetype != A && power >= 3000 && !var(20)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 400 || stateno = 430)
trigger2 = (stateno = [200, 255]) && stateno != 207 && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1110]) || (stateno = [1300, 1310])) && (movecontact = [1, 24])
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && (stateno != [3020, 3049]) && var(10) < 5
trigger4 = helper(stateno + 5), var(3) || helper(stateno + 5), time<10
trigger5 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, metsuhadouken]
type = changestate
value = 3020
triggerall = !AIlevel
triggerall = (var(1) = 2 && command = "2qcbp") || (var(1) != 2 && command = "hcb2p")
triggerall = var(1) != 1 && roundstate = 2 && statetype != A && power >= 3000 && !var(20)
triggerall = !numhelper(3005) && !numhelper(3025) && !numhelper(3045)
triggerall = !numhelper(3033)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 400 || stateno = 430)
trigger2 = (stateno = [200, 255]) && stateno != 207 && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1110]) || (stateno = [1300, 1310])) && (movecontact = [1, 24])
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && (stateno != [3020, 3049]) && var(10) < 5
trigger4 = helper(stateno + 5), var(3) || helper(stateno + 5), time<10
trigger5 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, denjinhadouken]
type = changestate
value = 3020
triggerall = !AIlevel
triggerall = command = "2qcbp" || command="qcb2p"
triggerall = var(1) != 2 && roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
triggerall = !numhelper(3005) && !numhelper(3025) && !numhelper(3045)
triggerall = !numhelper(3033)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 400 || stateno = 430)
trigger2 = (stateno = [200, 255]) && stateno != 207 && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1110]) || (stateno = [1300, 1310]) || stateno = 3100 || stateno = 3100) && (movecontact = [1, 24]) && !var(33)
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && (stateno != [3020, 3049]) && var(10) <= 5
trigger4 = helper(stateno + 5), var(3) || helper(StateNo + 5), time<10
trigger5 = var(20) && (stateno = [200, 289])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, nidanshoryuutsuki]
type = changestate
value = 3100
triggerall = !AIlevel
triggerall = (var(1) = 1 && command = "2dfk") || (var(1) = 3 && command = "hcf2k")
triggerall = var(1) != 2 && roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 400 || stateno = 430)
trigger2 = (stateno = [200, 255]) && stateno != 207 && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1110]) || (stateno = [1300, 1310]) || stateno = 3100) && (movecontact = [1, 24]) && !var(33)
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && (stateno != [3020, 3049]) && var(10) <= 5
trigger4 = helper(stateno + 5), var(3) || helper(stateno + 5), time<10
trigger5 = var(20) && (stateno = [200, 289])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, shinkuutatsumakisenpuukyakku]
type = changestate
value = 3200
triggerall = !AIlevel
triggerall = command = "2qcbk" || (var(1) = 3 && command = "2qcbs")
triggerall = roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 400 || stateno = 430)
trigger2 = (stateno = [200, 255]) && stateno != 207 && (movecontact = [1, 8])
trigger3 = ((stateno = [1100, 1110]) || (stateno = [1300, 1310]) || stateno = 3100 || stateno = 3100) && (movecontact = [1, 24]) && !var(33)
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && (stateno != [3020, 3049]) && var(10) <= 5
trigger4 = helper(stateno + 5), var(3) || helper(stateno + 5), time<10
trigger5 = var(20) && (stateno = [200, 289])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])



[State -1, shinkuuhadouken]
type = changestate
value = 3000
triggerall = !AIlevel
triggerall = command = "2qcfp"
triggerall = roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
triggerall = !numhelper(3005) && !numhelper(3025) && !numhelper(3045)
trigger1 = ctrl || (stateno = 200 || stateno = 400 || stateno = 430)
trigger2 = (stateno = [200, 255]) && stateno != 207 && movecontact
trigger3 = ((stateno = [1100, 1110]) || (stateno = [1300, 1310]) || stateno = 3100 || stateno = 3100) && (movecontact = [1, 24]) && !var(33)
trigger4 = (stateno = [1000, 3999]) && numhelper(stateno + 5) && stateno != 3000 && (stateno != [3020, 3049]) && var(10) <= 5
trigger4 = helper(stateno + 5), var(3) || helper(stateno + 5), time<10
trigger5 = var(20) && (stateno = [200, 289])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 24])

[State -1, EXshoryuken]
type = changestate
value = 1110
triggerall = !AIlevel
triggerall = command = "df2p"
triggerall = var(1) = 1 && roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 400 || stateno = 430)
trigger2 = (stateno = [200, 255]) && stateno != 207 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)
trigger6= stateno = 410 && movecontact
trigger7= stateno = 440 && movecontact
trigger8= stateno = 420 && movecontact

[State -1, EXkuchuutatsumaki]
type = changestate
value = 1260
triggerall = !AIlevel
triggerall = command = "qcb2k"
triggerall = var(1) = 1 && roundstate = 2 && statetype = A && var(9) != 2 && power >= 500 && var(20) <= 60
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 400 || stateno = 430)
trigger2 = (stateno = [600, 650]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, EXtatsumaki]
type = changestate
value = 1210
triggerall = !AIlevel
triggerall = command = "qcb2k"
triggerall = var(1) = 1 && roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 400 || stateno = 430)
trigger2 = (stateno = [200, 255]) && stateno != 207 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)
trigger6= stateno = 410 && movecontact
trigger7= stateno = 440 && movecontact
trigger8= stateno = 420 && movecontact

[State -1, EXjoudan]
type = changestate
value = 1310
triggerall = !AIlevel
triggerall = command = "qcf2k"
triggerall = var(1) = 1 && roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 400 || stateno = 430)
trigger2 = (stateno = [200, 255]) && stateno != 207 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)
trigger6= stateno = 410 && movecontact
trigger7= stateno = 440 && movecontact
trigger8= stateno = 420 && movecontact

[State -1, EXhadouken]
type = changestate
value = 1010
triggerall = !AIlevel
triggerall = command = "qcf2p"
triggerall = var(1) = 1 && roundstate = 2 && statetype != A && power >= 500 && var(20) <= 60
triggerall = !numhelper(3005) && !numhelper(3025) && !numhelper(3045)
trigger1 = Ctrl && Ifelse(var(20),1,!(NumHelper(1005) || NumHelper(1010)))
trigger2 = Ctrl && (NumHelper(1005) || NumHelper(1010))
trigger2 = Helper,var(3)
trigger3 = ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 400 || stateno = 430)
trigger4 = (stateno = [200, 255]) && stateno != 207 && (movecontact = [1, 8])
trigger5 = var(20) && (stateno = [200, 289])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8= stateno = 410 && movecontact
trigger9= stateno = 440 && movecontact
trigger10= stateno = 420 && movecontact

[State -1, shoryuken]
type = changestate
value = 1100
triggerall = !AIlevel
triggerall = command = "dfx" || command = "dfy" || command = "dfz"
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 400 || stateno = 430)
trigger2 = (stateno = [200, 255]) && stateno != 207 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)
trigger6= stateno = 410 && movecontact
trigger7= stateno = 440 && movecontact
trigger8= stateno = 420 && movecontact


[State -1, kuchuutatsumaki]
type = changestate
value = 1250
triggerall = !AIlevel
triggerall = command = "qcba" || command = "qcbb" || command = "qcbc"
triggerall = roundstate = 2 && statetype = A && var(9) != 2
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 400 || stateno = 430)
trigger2 = (stateno = [600, 650]) && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, tatsumaki]
type = changestate
value = 1200
triggerall = !AIlevel
triggerall = command = "qcba" || command = "qcbb" || command = "qcbc"
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 400 || stateno = 430)
trigger2 = (stateno = [200, 255]) && stateno != 207 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)
trigger6= stateno = 410 && movecontact
trigger7= stateno = 440 && movecontact
trigger8= stateno = 420 && movecontact

[State -1, joudansokutougeri]
type = changestate
value = 1300
triggerall = !AIlevel
triggerall = command = "qcfa" || command = "qcfb" || command = "qcfc"
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 400 || stateno = 430)
trigger2 = (stateno = [200, 255]) && stateno != 207 && (movecontact = [1, 8])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)
trigger6= stateno = 410 && movecontact
trigger7= stateno = 440 && movecontact
trigger8= stateno = 420 && movecontact

[State -1, hadouken]
type = changestate
value = 1000
triggerall = !AIlevel
triggerall = command = "qcfx" || command = "qcfy" || command = "qcfz"
triggerall = roundstate = 2 && statetype != A
triggerall = !numhelper(1010) && !numhelper(3005) && !numhelper(3025) && !numhelper(3045)
trigger1 = Ctrl && IfElse(var(20),1,!(NumHelper(1005) || NumHelper(1010)))
trigger2 = Ctrl && (NumHelper(1005) || NumHelper(1010))
trigger2 = Helper,var(3)
trigger3 = ((stateno = [200, 299]) && time <= 2) || (stateno = 200 || stateno = 400 || stateno = 430)
trigger4 = (stateno = [200, 255]) && stateno != 207 && (movecontact = [1, 8])
trigger5 = var(20) && (stateno = [200, 289])
trigger6 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger7 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger7 = helper(stateno + 5), var(3)
trigger8= stateno = 410 && movecontact
trigger9= stateno = 440 && movecontact
trigger10= stateno = 420 && movecontact

[State -1, Zero Counter]
type = changestate
value = 750
trigger1 = !AIlevel
trigger1 = stateno = 150 || stateno = 152
trigger1 = command = "Counter_P" || command = "Counter_K"
trigger1 = roundstate = 2 && !var(20) && power >= 1000 && statetype != A

[State -1, run / dash]
type = changestate
value = ifelse(command = "FF", 102, 105)
trigger1 = !AIlevel
trigger1 = command = "FF" || command = "BB"
trigger1 = roundstate = 2 && (stateno != [100, 106]) && statetype = S && ctrl

[State -1, Fall Recovery]
type = changestate
value = 5210
trigger1 = !AIlevel && numenemy
trigger1 = roundstate = 2 && alive
trigger1 = !var(39)
trigger1 = Command = "recovery" || Command = "recoverR"
trigger1 = stateno = 5050 && canrecover
trigger1 = vel y > 0 && pos y < -20

[State -1, Fall Recovery]
type = changestate
value = 5200
trigger1 = !AIlevel && numenemy
trigger1 = roundstate = 2 && alive
trigger1 = !var(39)
trigger1 = Command = "recovery" || Command = "recoverR"
trigger1 = stateno = 5050 && gethitvar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20

[State -1, throw]
type = changestate
value = 800
trigger1 = !AIlevel
trigger1 = (command = "recovery" || command = "2k") && (command = "holdfwd" || command = "holdback")
trigger1 = roundstate = 2 && ctrl && statetype = S && stateno != 100

[State -1, powercharge]
type = changestate
value = 194;;;;;;;;;;;;;;;;;;;;;;;;;;;740
trigger1 = !AIlevel
trigger1 = command = "holdc" && command = "holdz"
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = power < const(data.power) && power < powermax && !var(20)

[State -1, seichuunidantsuki]
type = changestate
value = 212
triggerall = !AIlevel
triggerall = command = "recovery" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = (movecontact = [1, 24]) && (stateno = [200, 255]) && var(20)

[State -1, SLP]
type = changestate
value = 200
triggerall = !AIlevel; && !(PrevStateNo = 52 && time<30)
triggerall = command = "x" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger5 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, SMP2]
type = changestate
value = 207
triggerall = !AIlevel
triggerall = command = "y" && command = "holdfwd" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, SMP]
type = changestate
value = 210
triggerall = !AIlevel
triggerall = command = "y" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)
trigger5= stateno = 200 && movecontact
trigger6= stateno = 230 && movecontact

[State -1, SHP3]
type = changestate
value = 213
trigger1 = !AIlevel
trigger1 = var(1) != 1 && command = "z" && statetype != A
trigger1 = (movecontact = [1, 24]) && stateno = 210 && !var(20)

[State -1, SHP2]
type = changestate
value = 212
triggerall = !AIlevel
triggerall = var(1) != 2 && command = "z" && command = "holdfwd" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, SHP]
type = changestate
value = 220
triggerall = !AIlevel
triggerall = command = "z" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)
trigger5= stateno = 210 && movecontact
trigger6= stateno = 240 && movecontact
trigger7= stateno = 230 && movecontact

[State -1, SLK]
type = changestate
value = 230
triggerall = !AIlevel; && !(PrevStateNo = 52 && time<30)
triggerall = command = "a" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger5 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)
trigger6= stateno = 200 && movecontact

[State -1, SMK2]
type = changestate
value = 222
triggerall = !AIlevel
triggerall = command = "b" && command = "holdfwd" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, SMK]
type = changestate
value = 240
triggerall = !AIlevel
triggerall = command = "b" && command != "holdfwd" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)
trigger5= stateno = 200 && movecontact
trigger6= stateno = 230 && movecontact
trigger7= stateno = 210 && movecontact

[State -1, SHK]
type = changestate
value = 250
triggerall = !AIlevel
triggerall = command = "c" && command != "holddown" && statetype != A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)
trigger5= stateno = 210 && movecontact
trigger6= stateno = 240 && movecontact
trigger7= stateno = 230 && movecontact

[State -1, CLP]
type = changestate
value = 400
triggerall = !AIlevel && !(PrevStateNo = 52 && time<30)
triggerall = command = "x" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger5 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, CMP]
type = changestate
value = 410
triggerall = !AIlevel
triggerall = command = "y" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)
trigger5= stateno = 400 && movecontact
trigger6= stateno = 430 && movecontact

[State -1, CHP]
type = changestate
value = 420
triggerall = !AIlevel
triggerall = command = "z" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)
trigger5= stateno = 410 && movecontact
trigger6= stateno = 440 && movecontact

[State -1, CLK]
type = changestate
value = 430
triggerall = !AIlevel && !(PrevStateNo = 52 && time<30)
triggerall = command = "a" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger5 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)
trigger6= stateno = 400 && movecontact

[State -1, CMK]
type = changestate
value = 440
triggerall = !AIlevel
triggerall = command = "b" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)
trigger5= stateno = 410 && movecontact
trigger6= stateno = 430 && movecontact

[State -1, CHK]
type = changestate
value = 255
triggerall = !AIlevel
triggerall = command = "c" && command = "holddown" && statetype != A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)
trigger5= stateno = 410 && movecontact
trigger6= stateno = 440 && movecontact

[State -1, ALP]
type = changestate
value = 600
triggerall = !AIlevel
triggerall = command = "x" && statetype = A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, AMP]
type = changestate
value = 610
triggerall = !AIlevel
triggerall = command = "y" && statetype = A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, AHP]
type = changestate
value = 620
triggerall = !AIlevel
triggerall = command = "z" && statetype = A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, ALK]
type = changestate
value = 630
triggerall = !AIlevel
triggerall = command = "a" && statetype = A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, TKK]
type = changestate
value = 630
triggerall = !AIlevel
triggerall = var(1) != 1 && command = "holddown" && command = "b" && statetype = A
triggerall = vel x > 0 && (vel y = [ -2, 2])
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, AMK]
type = changestate
value = 640
triggerall = !AIlevel
triggerall = command = "b" && statetype = A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, AHK]
type = changestate
value = 650
triggerall = !AIlevel
triggerall = command = "c" && statetype = A
trigger1 = ctrl
trigger2 = var(20) && (stateno = [200, 289]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [1000, 2999]) && statetype != A && (movecontact = [1, 24])
trigger4 = var(20) && (stateno = [1000, 2999]) && statetype != A && numhelper(stateno + 5)
trigger4 = helper(stateno + 5), var(3)

[State -1, Standing Parry]
type = hitoverride
trigger1 = !AIlevel
trigger1 = roundstate = 2 && (statetype = S || stateno = 5120)
trigger1 = command = "fwd" && command != "back" && command != "up" && command != "down"
trigger1 = ctrl || (stateno = [700, 701]) || stateno = 5120
trigger1 = var(21) := 1
attr = SA, AA, AP
stateno = 700
slot = 0
time = 8

[State -1, Crouching Parry]
type = hitoverride
trigger1 = !AIlevel
trigger1 = roundstate = 2 && statetype != A
trigger1 = command = "down" && command != "fwd" && command != "back" && command != "up"
trigger1 = ctrl || (stateno = [700, 701]) || stateno = 5120
trigger1 = var(21) := 2
attr = C, AA, AP
stateno = 701
slot = 1
time = 8

[State -1, Air Parry]
type = hitoverride
trigger1 = !AIlevel
trigger1 = roundstate = 2 && statetype = A
trigger1 = command = "fwd" && command != "back" && command != "up" && command != "down"
trigger1 = ctrl || stateno = 702
trigger1 = var(21) := 3
attr = SA, AA, AP
stateno = 702
forceair = 1
slot = 0
time = 7

[State -1, hado no kamae]
type = changestate
value = 198
triggerall = !AIlevel
triggerall = var(1) != 2 && command = "qcfs" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 255]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)

[State -1, taunt]
type = changestate
value = 194
triggerall = !AIlevel
triggerall = command = "TAUNT" && command != "qcbs" && statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 255]) && (movecontact = [1, 24])
trigger3 = var(20) && (stateno = [200, 289])
trigger4 = var(20) && ((stateno = [1000, 2999]) || stateno = 52 && (prevstateno = [1000, 2999])) && movecontact
trigger5 = var(20) && (stateno = [1000, 2999]) && numhelper(stateno + 5)
trigger5 = helper(stateno + 5), var(3)


;===========================================================================
;=================================< A.I. >====================================
;===========================================================================

[State -1, No Guard var remove]
type = varset
triggerall = AILevel
trigger1 = var(28)
var(28) = 0

[State -1, No Guard var]
type = varset
triggerall = AILevel && NumEnemy
trigger1 = Statetype!=A && Ctrl
trigger1 = Enemynear,P2dist x < -20
trigger2 = (Ctrl || StateNo=21) && Life < 90 && StateType != A && inguarddist && (Enemynear,NumProj || Enemynear,NumHelper)
trigger3 = (StateNo=[700,702]) || (PrevStateNo = [700,702])
trigger4 = Life < 100 && (Enemynear,hitdefattr = SCA, SP,HP,SA,HA || Enemynear,NumHelper || Enemynear,NumProj)
trigger5 = StateType = A
var(28) = 1

[State -1, No Guard]
type = AssertSpecial
triggerall = AILevel && NumEnemy
trigger1 = var(28)
flag = noStandGuard
flag1= noCrouchGuard
flag2 = noAirGuard

[State -1, Standing Parry]
type = hitoverride
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
trigger1 = (Ctrl || StateNo=21)
trigger1 = Random < (IfElse(P2bodydist x > 90,280+(Lifemax-Life)/2, 90+(Lifemax-Life)/2) * (AIlevel ** 2 / 64.0))
trigger1 = var(21) := 1
trigger2 = StateNo = [700, 701]
trigger2 = Random < (80+(Lifemax-Life)/3) * (AIlevel ** 2 / 64.0)
trigger2 = var(21) := 1
trigger3 = (Ctrl || StateNo=21) && (Enemynear,NumProj || Enemynear,NumHelper)
trigger3 = random < (380+(Lifemax-Life)/2) * (AIlevel ** 2 / 64.0)
trigger3 = var(21) := 1
attr = SA, AA, AP
stateno = 700
slot = 0
time = 8

[State -1, Crouching Parry]
type = hitoverride
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
trigger1 = (Ctrl || StateNo=21)
trigger1 = Random < (IfElse(P2Statetype=C,260+(Lifemax-Life)/2, 100+(Lifemax-Life)/2) * (AIlevel ** 2 / 64.0))
trigger1 = var(21) := 2
trigger2 = StateNo = [700, 701]
trigger2 = Random < (150+(Lifemax-Life)/3) * (AIlevel ** 2 / 64.0)
trigger2 = var(21) := 2
trigger3 = time < 5 || StateNo=21
trigger3 = var(21) := 2
attr = C, AA, AP
stateno = 701
slot = 1
time = 8

[State -1, Air Parry]
type = hitoverride
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A
trigger1 = ctrl && random < (10+(Lifemax-Life)/10 * (AIlevel ** 2 / 64.0))
trigger1 = var(21) := 3
trigger2 = stateno = 702
trigger2 = random < ((50+(Lifemax-Life)/3) * (AIlevel ** 2 / 64.0))
trigger2 = var(21) := 3
trigger3 = Ctrl && (Enemynear,NumProj || Enemynear,NumHelper)
trigger3 = random < ((10+(Lifemax-Life)/2) * (AIlevel ** 2 / 64.0))
trigger3 = var(21) := 3
attr = SA, AA, AP
stateno = 702
forceair = 1
slot = 0
time = 6

[State -1, Reset Parry slot 0]
type = hitoverride
triggerall = StateNo != [700,702]
triggerall = Ifelse(AILevel=0,1,StateNo!=21)
trigger1 = (!ctrl && (stateno != [700, 702]) && stateno != 5120) || var(20)
trigger2 = movetype != I || (stateno = [100, 106]) || (stateno = [120, 132])
trigger3 = !AIlevel && (command = "holdback" || command = "holdup")
trigger4 = (statetype = S || statetype = C) && var(21) != 1 && var(21) != 2
trigger5 = statetype = A && var(21) != 3
trigger6 = (StateNo = [200,3999])
slot = 0
time = 0

[State -1, Reset Parry slot 1]
type = hitoverride
triggerall = StateNo != [700,702]
triggerall = Ifelse(AILevel=0,1,StateNo!=21)
trigger1 = (!ctrl && (stateno != [700, 702]) && stateno != 5120) || var(20)
trigger2 = movetype != I || (stateno = [100, 106]) || (stateno = [120, 132])
trigger3 = (statetype = S || statetype = C) && var(21) != 1 && var(21) != 2
trigger4 = statetype = A && var(21) != 3
trigger5 = (StateNo = [200,3999])
slot = 1
time = 0

[State -1, run]
type = changestate
value = 102
triggerall = AIlevel && numenemy
triggerall = statetype = S && roundstate = 2
trigger1 = (Ctrl || StateNo=21) && (stateno != [100, 105]) && enemynear, movetype != A && p2bodydist x > 240
trigger1 = Random < ((10 + 80 * NumHelper(1005)) * (AIlevel ** 2 / 64.0))
trigger2 = (Ctrl || StateNo =21) && NumTarget(1310)
trigger2 = P2BodyDist X > 110
trigger3 = Ctrl && Enemynear,Anim=5300 && P2Bodydist x > 10
trigger3 = Random < 400 * (AIlevel ** 2 / 64.0)
trigger4 = !NumTarget(1310) && P2Bodydist x > 5
trigger4 = (Ctrl || StateNo=21) && (PrevStateNo=3020 || P2StateNo=7696 || P2StateNo>1110000) && P2Movetype=H
trigger5= (Ctrl || StateNo=21 || StateNo=194);;;;;;;;;;;;;;;;;;;;;;;;;;;;;;740)
trigger5= ((P2StateNo = [3000,4999]) && P2MoveType != A) || P2StateNo=5300
trigger5= P2Bodydist x > 17 && Abs(Enemynear,animtime) > 19
trigger5= random < AILevel/8.0 * 320

[State -1, run Enemy Back Open]
type = changestate
value = 102
triggerall = AIlevel && numenemy
triggerall = statetype = S && roundstate = 2
triggerall = !NumTarget && P2MoveType != H && !(P2StateNo = [5100,5120])
triggerall = (Ctrl || StateNo=21) && Enemynear, P2Dist x < -50 && P2Bodydist x > 40
triggerall = !(Enemynear,Ctrl||StateNo=21)
trigger1 = P2StateType !=A
trigger1 = Const(velocity.run.fwd.x) * Abs(Enemynear,Animtime) >= P2bodydist X
trigger1 = Random < AILevel/8.0 * 400
trigger2 = P2StateType = A && Enemynear, vel y > -4
trigger2 = (Abs(Enemynear,pos y) / Enemynear,vel y) >= (P2Bodydist X/(Const(velocity.run.fwd.x) - Enemynear,vel x))


[State -1, back dash]
type = changestate
value = 105
triggerall = AIlevel && numenemy
triggerall = statetype = S && roundstate = 2 && ctrl
triggerall = (p2bodydist x = [-11, 80]) && backedgebodydist > 80 && (stateno != [100, 105])
trigger1 = enemynear, movetype = A && random < (30 * (AIlevel ** 2 / 64.0))
trigger2 = (P2StateNo = [5100,5120]) && random < ((120 - 40*(Enemynear,BackEdgedist > 20)) * (AIlevel ** 2 / 64.0))

[State -1, Jump]
type = changestate
value = 39
triggerall = AIlevel && numenemy                            
triggerall= roundstate=2 && statetype!=A && (ctrl || StateNO=21)
trigger1 = P2MoveType = A && (Enemynear,vel x >1) && P2bodydist x < 140 && enemynear, hitdefattr = SC, ST,HT
trigger2 = P2movetype=A && p2Statetype!=A  && (p2bodydist x>200 || (p2bodydist x=[110,150]))  && !(Enemynear,Ctrl||StateNo=21)
trigger2 = Random< AILevel/8.0*(50 + 100*((P2StateNo=[1000,1999]) && (((enemynear,NumHelper) && !numhelper(9741)) || (enemynear,NumProj))))
trigger3 = !(Enemynear,Ctrl||StateNo=21) && P2Statetype!=A && (P2Bodydist x=[120,130]) && Random<AILevel/8.0 * (20 + 60*((P2StateNo=[1000,1999])&&Enemynear,time<4) + 60*(P2Movetype=A && Enemynear,time<4))
trigger4 = (P2bodydist x = [60,80])
trigger4 = Random< AILevel/8.0*(5 + 10*P2statetype!=A + 10*!(Enemynear,Ctrl||StateNo=21) -75*(P2StateNo>1000 && P2StateType=A))


[State -1, ashurasenkuu]
type = changestate
value = 720
triggerall = AIlevel && numenemy
triggerall = var(1) != 1 && statetype != A && roundstate = 2 && ctrl
trigger1 = enemynear, movetype = A && p2bodydist x < 90 && (facing != enemynear, facing) && random < (220 * (AIlevel ** 2 / 64.0))
trigger1 = var(10) := 2
trigger2 = enemy, numproj > 0 && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = var(10) := 3
trigger3 = p2bodydist x < 60 && enemy, hitdefattr = SC, AT && random < (750 * (AIlevel ** 2 / 64.0))
trigger3 = var(10) := 2
trigger3 = random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = var(10) := ifelse((random < (500 * (AIlevel ** 2 / 64.0)) || backedgedist < 100), 3, -3)
trigger4 = inguarddist && Random < 500 * (AIlevel ** 2/64.0)

[State -1, Guard]
type = changestate
value = 120
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && inguarddist
triggerall = !var(28)
triggerall = !(Life < 100 && (Enemynear,hitdefattr = SCA, SP,HP,SA,HA || Enemynear,NumHelper || Enemynear,NumProj))
triggerall = !((StateNo = [700,702]) || (PrevStateNo = [700,702]))
trigger1 = ctrl && (stateno != [120, 155]) && !var(20) && !(Statetype=A && Sysvar(1)=1)
trigger1 = ifelse(statetype = A, (var(9) != 2 || stateno = 5210), 1)
trigger1 = !(enemynear, hitdefattr = SCA, AT) && (enemynear, time < 120)
trigger1 = statetype != A || p2statetype = A
trigger1 = random < (ifelse((p2stateno = [200, 699]), 200, ifelse((p2stateno = [1000, 2999]), 444, 1000)) * (AIlevel ** 2 / 64.0))

[State -1, Zero Counter]
type = changestate
value = 750
trigger1 = AIlevel && numenemy
trigger1 = (p2dist x = [-90, 90]) && stateno = 150 || stateno = 152
trigger1 = roundstate = 2 && power >= 1000 && !var(20) && life < 600
trigger1 = random < (160 * (AIlevel ** 2 / 64.0))

[State -1, powercharge]
type = changestate
value = 194;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;740
trigger1 = AIlevel && numenemy
trigger1 = !numhelper(3033)
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = power < const(data.power) && power < powermax && !var(20)
trigger1 = random < (50 * (AIlevel ** 2 / 64.0)) && !inguarddist && p2movetype != A && p2dist x >= 160

[State -1, Fall Recovery]
type = changestate
value = 5210
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && alive
trigger1 = !var(39)
trigger1 = stateno = 5050 && canrecover
trigger1 = vel y > 0 && pos y < -20
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))

[State -1, Fall Recovery]
type = changestate
value = 5200
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && alive
trigger1 = !var(39)
trigger1 = stateno = 5050 && gethitvar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20
trigger1 = random < (100 * (AIlevel ** 2 / 64.0))

[State -1, taunt]
type = changestate
value = 194
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
trigger1 = p2dist x > 160 && (enemynear, vel y > 0) && ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger1 = !(enemynear, ctrl) && (enemynear, movetype = H)

[State -1, Double Shinkuu Hadouken]
type = changestate
value = 3600
triggerall = AIlevel && roundstate=2 && var(1)!=2 && statetype!=A && power>=3000 && !var(20)
triggerall = TeamMode = Simul && NumPartner
triggerAll = Partner, Alive
triggerAll = Partner, Facing = Facing
triggerAll = !(Partner, StateType = A) && !(Partner, var(20)) && !(Partner, MoveType = H)
triggerAll = (Partner, ctrl || Partner, StateNo = 21 || Partner, StateNo = 40 || Partner, StateNo = 52 || (Partner, StateNo = [100,102])) || Partner, var(7)
triggerAll = (p2dist y = [ -100, 0]) && (enemynear, vel y = [ -7, 2]) && (enemynear, vel x > -2)
triggerAll = (p2bodydist x = [10, 180]) && random < ((400 + 300*(P2Life<48)) * (AIlevel ** 2 / 64.0))
triggerALL = (P2MoveType = A || P2MoveType = H || !(Enemynear,Ctrl||StateNo=21)) && P2StateNo != 21
triggerAll = !(P2StateNo = [120,155]) && Enemynear,vel y >= -1
trigger1 = ctrl || StateNo = 21 || (stateno = [100,102])
trigger2 = (stateno = [200, 255]) && stateno != 207 && movecontact
trigger3 = ((stateno = [1100, 1110]) || (stateno = [1300, 1310]) || stateno = 3100 || stateno = 3100) && (movecontact = [1, 24]) && !var(33)
trigger4 = (stateno = [1000, 1999]) && numhelper(stateno + 5) && var(10) <= 5
trigger4 = helper(stateno + 5), var(3) || helper(stateno + 5), time<10

[State -1, shungokusatsu]
type = changestate
value = 4000
triggerall = AIlevel && numenemy
triggerall = var(1) != 1 && roundstate = 2 && statetype != A && power >= 3000 && var(20) <= 60
triggerall = (enemynear, statetype != L) && ((p2stateno != [5030, 5119]) || P2StateNo=5040)
triggerall = (p2bodydist x = [-11, 60]) && (P2Dist Y = [-60,0]) && EnemyNear,Vel Y >=0 && (p2stateno != 40)
trigger1 = (ctrl || StateNo=21 || StateNo=100) && !(enemynear, ctrl) && (p2bodydist x = [0, 60]) && (p2dist y = [ -40, 0]) && random < (150 * (AIlevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo=21 || StateNo=100)  && !(enemynear, ctrl) && (p2stateno = [120, 155]) && p2statetype != A && random < (250 * (AIlevel ** 2 / 64.0))
trigger3 = (ctrl || StateNo=21 || StateNo=100)  && (p2bodydist x = [-10, 40]) && Random< (80 + 300*(Enemynear,vel x >3) + 600*(P2Movetype=A && P2StateNo<1000)) * (AIlevel ** 2 / 64.0)
trigger4 = (ctrl || StateNo=21 || StateNo=100)  && (P2StateNo=5040 || P2StateNo=5200 || P2StateNo=5201 || P2StateNo=5210)
trigger4 = random < ((80 + 100*(P2Life<480) + 80*(Life<P2Life) ) * (AIlevel ** 2 / 64.0))

[State -1, shinshoryuken]
type = changestate
value = 3120
triggerall = AIlevel && numenemy
triggerall = var(1) != 2 && roundstate = 2 && statetype != A && power >= 3000 && var(20) <= 60
triggerall = !(enemynear, ctrl) && (p2stateno != [120, 155]) && p2statetype != L
triggerall = Ifelse(P2Movetype=A,(p2bodydist x = [-20, 46]),(p2bodydist x = [-20, 34])) && p2dist y > -50
triggerall = movetype = A || !(enemynear, hitfall)
trigger1 = (ctrl || StateNo=21 || (StateNo=[120,140])) && !(Enemynear,Ctrl||StateNo=21) && Random < (80 + 360*P2Movetype=A) * (AIlevel ** 2 / 64.0)
trigger1 = (enemynear, vel y > -2) && (enemynear, vel x > -1)
trigger2 = stateno = 1100 && (p2bodydist x = [-20, 30]) && (movehit = [1, 16]) && random < (400 * (AIlevel ** 2 / 64.0))

[State -1, metsuhadouken]
type = changestate
value = 3020
triggerall = AIlevel && numenemy
triggerall = var(1) != 1 && roundstate = 2 && statetype != A && power >= 3000 && var(20) <= 60 && !inguarddist
triggerall = !numhelper(3033)
triggerall = !(enemynear, ctrl) && (enemynear, movetype != A)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = p2dist x >= 160 && p2dist y > -120 && (enemynear, vel y > -2)
trigger1 = ctrl && random < (20 * (AIlevel ** 2 / 64.0))
trigger2 = P2StateType !=A && P2bodydist x > 110 && Enemynear, vel x <2
trigger2 = (StateNo=[1000,3999]) && NumHelper(StateNo+5)
trigger2 = Helper(StateNo+5),time<10
trigger2 = random < (200 * (AIlevel ** 2 / 64.0))


[State -1, messatsugoushoryuu]
type = changestate
value = 3100
triggerall = AIlevel && numenemy
triggerall = var(1) != 1 && roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
triggerall = !(enemynear, ctrl) && (p2stateno != [120, 155]) && p2statetype != L
triggerall = (p2bodydist x = [0, 60]) && (enemynear, vel y > -1) && (enemynear, vel x > -2)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = Ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200, 255])) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = ((stateno = [1100, 1110]) || (stateno = [1300, 1310])) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))
trigger4 = stateno = 3100 && (movehit = [1, 16]) && anim = 3101 && animelemtime(6) >= 0 && random < (85 * (AIlevel ** 2 / 64.0))
trigger5 = stateno = 3100 && (movehit = [1, 16]) && anim = 3100 && animelemtime(34) >= 0 && random < (75 * (AIlevel ** 2 / 64.0))
trigger6 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && stateno != 3020
trigger6 = helper(stateno + 5), var(3) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, nidanshoryuutsuki]
type = changestate
value = 3100
triggerall = AIlevel && numenemy
triggerall = var(1) != 2 && roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
triggerall = !(enemynear, ctrl) && (p2stateno != [120, 155]) && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || StateNo=21) && Enemynear,hitfall
trigger1 = ((P2Bodydist x - Enemynear,vel x * 10) = [20,110]) || P2Bodydist x < 90 && Enemynear,BackEdgeBodyDist < 20
trigger1 = ((P2dist y + Enemynear,vel y * 10) = [-70,-30])
trigger1 = Random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = P2Bodydist x < 80 && P2StateType !=A
trigger2 = (stateno = 220 || stateno = 250 || stateno = 440) && (movehit = [1, 4])
trigger2 = Random < (90 * (AIlevel ** 2 / 64.0))
trigger4 = stateno = 1300 && (movehit = [1, 16]) && random < (60 * (AIlevel ** 2 / 64.0))
trigger5 = stateno = 3100 && (movehit = [1, 16]) && anim = 3100 && animelemtime(34) >= 0 && random < (75 * (AIlevel ** 2 / 64.0))
trigger6 = (P2Bodydist x = [0,80]) && P2dist y > -40
trigger6 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && stateno != 3000 && stateno != 3020
trigger6 = helper(stateno + 5), var(3) && random < (60 * (AIlevel ** 2 / 64.0))

[State -1, shinkuu tatsumakisenpuukyaku]
type = changestate
value = 3200
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
triggerall = (p2stateno != [120, 155]) && !(P2StateNo=[5100,5299]) && p2statetype != L ; && !(enemynear, ctrl) &&
triggerall = (p2bodydist x = [ -50, 70]) && p2dist y >= -130 && !((p2dist y = [-19,-1]) && Enemynear,vel y>0)
triggerall = (enemynear, vel y > -2); && abs(enemynear, vel x) < 2
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (p2bodydist x = [ -50, 40])
trigger1 = Ctrl || (StateNo = [120,139]) && !(P2dist y = [-18,-1])
trigger1 = Random < ((8 + 20*P2MoveType=A) * (AIlevel ** 2 / 64.0))
trigger2 = (p2bodydist x = [ -50, 40])
trigger2 = (stateno = 220 || stateno = 250 || stateno = 440) && (movehit = [1, 16])
trigger2 = Random < (25 * (AIlevel ** 2 / 64.0))
trigger3 = (p2bodydist x = [ -50, 40])
trigger3 = (stateno = 1100 || stateno = 1300) && (movehit = [1, 16])
trigger3 = Enemynear,BackEdgebodyDist < 10 && var(1) = 1
trigger3 = Random < (100 * (AIlevel ** 2 / 64.0))
trigger4 = stateno = 3100 && (movehit = [1, 16]) && anim = 3101 && animelemtime(6) >= 0 && P2StateType!=A
trigger4 = random < (100 * (AIlevel ** 2 / 64.0))
trigger5 = random < (100 * (AIlevel ** 2 / 64.0))
trigger6 = stateno = 3100 && (movehit = [1, 16]) && anim = 3100 && animelemtime(34) >= 0
trigger6 = random < (75 * (AIlevel ** 2 / 64.0))
trigger7 = (p2bodydist x = [ -50, 40])
trigger7 = stateno = 3000 && numhelper(3005)
trigger7 = helper(3005), var(3)
trigger7 = Random < (55 * (AIlevel ** 2 / 64.0))
trigger8 = (Ctrl || StateNo=21) && NumTarget(1310)
trigger8 = (p2bodydist x = [ -20, 70]) && P2dist y < 40
trigger8 = random < ((240 + 300*(Life<(Lifemax*0.3)) - 520*(Power>=3000)) * (AIlevel ** 2 / 64.0))
trigger9 = ((StateNo=1100 && HitCount>1) || (stateno = 1300 && Enemynear,BackEdgebodyDist < 10))
trigger9 = MoveHit && var(1) != 1
trigger9 = Random < (420 * (AIlevel ** 2 / 64.0))
trigger10 = var(1) != 1 && P2StateType = A ;&& Enemynear,hitfall
trigger10 = (Ctrl || StateNo = 21 || StateNo = 100)
trigger10 = (P2Bodydist x = [-60,48])
trigger10 = (P2Dist y + Enemynear,vel y*6) = [-70,-10]
trigger10 = Random < (320+Ceil((Lifemax-life)/10) * (AIlevel ** 2 / 64.0))

[State -1, denjinhadouken]
type = changestate
value = 3020
triggerall = AIlevel && numenemy
triggerall = var(1) != 2 && roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60 && !inguarddist
triggerall = !numhelper(3033)
triggerall = !numhelper(3005) && !numhelper(3025) && !numhelper(3045)
triggerall = !(enemynear, ctrl) && (enemynear, movetype != A)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = StateNo=255 && MoveHit && P2Movetype=H
trigger1 = random < (300 * (AIlevel ** 2 / 64.0))
trigger2 = StateNo=1100 && NumTarget(1100) && Movehit
trigger2 = Target(1100),Movetype=H && Target(1100),BackEdgebodydist >35 && Random<(340+ 260*(Life<P2Life) -210*(Power=Powermax)) * (AIlevel ** 2 / 64.0)
trigger3 = P2Bodydist x = [0,130]
trigger3 = (StateNo=[1000,1999]) && NumHelper(StateNo+5)
trigger3 = Helper(StateNo+5),var(3) || Helper(StateNo+5),time<10
trigger3 = random < ((10 + 10*!(Enemynear,Ctrl||StateNo=21)) * (AIlevel ** 2 / 64.0))

[State -1, shinkuuhadouken]
type = changestate
value = 3000
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && power >= 1000 && var(20) <= 60
triggerall = !numhelper(3005) && !numhelper(3025) && !numhelper(3045)
triggerall = P2statetype != L && Enemynear,vel y > -1
triggerall = p2bodydist x > -80
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = P2StateNo != [5100,5299]
trigger1 = (p2dist y = [ -100, 0]) && (enemynear, vel y = [ -7, 2]) && (enemynear, vel x > -2) && !(enemynear, ctrl)
trigger1 = ctrl && (p2bodydist x = [15, 125]) && random < ((10 + 300*(P2Life<48)) * (AIlevel ** 2 / 64.0))
trigger2 = (StateNo=[1000,1999]) && NumHelper(StateNo+5)
trigger2 = Helper(StateNo+5),var(3) || Helper(StateNo+5),time<10
trigger2 = random < ((10 + 100*(Enemynear,NumHelper || Enemynear,NumProj) + 60*P2Movetype=H + 500*(P2Life<48) - 200*(P2StateNo=[120,159]) ) * (AIlevel ** 2 / 64.0))
trigger3 = (stateno = 1110 || stateno = 1300) && (movehit = [1, 16]) && random < (50 * (AIlevel ** 2 / 64.0))
trigger4 = stateno = 3100 && (movehit = [1, 16]) && anim = 3101 && animelemtime(6) >= 0 && random < (100 * (AIlevel ** 2 / 64.0)) && !var(33)
trigger5 = stateno = 3100 && (movehit = [1, 16]) && anim = 3100 && animelemtime(34) >= 0 && random < (75 * (AIlevel ** 2 / 64.0))
trigger6 = stateno = 52 && !animtime && (prevstateno = [1000, 2999]) && numtarget && random < (250 * (AIlevel ** 2 / 64.0))
trigger7 = (Ctrl || (StateNo = [200,430])) && (NumTarget(249) || NumTarget(204) || NumTarget(234))
trigger8 = random < (300 * (AIlevel ** 2 / 64.0))
trigger9 = (StateNo=52 && time > 4) && PrevStateNo=1210 && NumTarget(1210)
trigger9 = Target(1210),StateType = A && (P2Dist x = [-10,80]) && P2Dist y > -48
trigger9 = random < (400 * (AIlevel ** 2 / 64.0))
trigger10 = Ctrl && NumTarget(1250)
trigger10 = P2Bodydist x >= -80 && P2dist y < -32
trigger10 = Enemynear, vel y = [-3,6]
trigger10 = random < (400 * (AIlevel ** 2 / 64.0))
trigger11 = (Ctrl || StateNo = 21) && P2StateType = A && P2Bodydist x >= 40
trigger11 = time = [5,7]
trigger11 = random < (400 * (AIlevel ** 2 / 64.0))
trigger12 = (Ctrl || StateNo=21 || (StateNo=[120,140])) && P2Bodydist x > 70 && P2StateType=S
trigger12 = IfElse(Enemynear,name = "Akuma" && Enemynear,var(1)>=7,0,1)
trigger12 = random < (80 + ((Life - P2Life)/5) * (AIlevel ** 2 / 64.0))




[State -1, Ex-shoryuken Combo]
type = changestate
value = 1110
triggerall = Numenemy && AILevel
triggerall = roundstate = 2 && statetype != A && Power >= 500
triggerall = (p2stateno != [120, 155]) && p2statetype != L
triggerall = (p2bodydist x > -26 * Const(size.xscale))
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = var(1) = 1
trigger1 = Ctrl && time < 3 && (NumTarget(1200) || NumTarget(1210))
trigger1 = P2Dist Y > -45* Const(size.yscale) && P2Bodydist x < 40*Const(size.xscale)
trigger1 = (Power = [500,2999])
trigger1 = Random < 300 * (AIlevel ** 2 / 64.0)

[State -1, shoryuken]
type = changestate
value = ifelse((var(1) = 1 && !NumTarget(3120) && NumTarget && power >= 500 && random < 40), 1110, 1100)
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (p2stateno != [120, 155]) && p2statetype != L
triggerall = (p2bodydist x > -26) && !(P2StateNo=[5100,5299]) && !NumTarget(1100)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !NumTarget(1250) || var(1) > 1
trigger1 = (Ctrl || StateNo=21 || StateNo=100 || (StateNo=[120,135])) && p2bodydist x < 42 && !(Enemynear,Anim=5300)
trigger1 = (enemynear, vel y > -1) && (enemynear, vel x > -2)
trigger1 = random < ((10 + 30*P2MoveType=A) * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [210, 220]) || StateNo=240 || StateNo=240 || StateNo=212
trigger2 = stateno != 207 && (movehit = [1, 16]) && p2bodydist x < 22
trigger2 = !(StateNo = 212 && Animelemtime(7)<0) && !(StateNo=212 && Animelemtime(3)<0)
trigger2 = Random < ((200 + (100*(StateNo=210)) - (120 * (Power>=1000 && P2StateType!=C))) * (AIlevel ** 2 / 64.0))
trigger2 = (enemynear, vel y > -1) && (enemynear, vel x > -2)
trigger3 = P2StateType = A
trigger3 = (Ctrl || StateNo=21 || (StateNo=[120,135])) && p2bodydist x < 50 && p2dist y > -120
trigger3 = Random < ((60+200*P2MoveType=A) * (AIlevel ** 2 / 64.0))
trigger3 = (enemynear, vel y > -1) && (enemynear, vel x > -2)
trigger4 = (Ctrl || StateNo=21 || (StateNo=[120,135])) && var(1) != 1 && NumTarget(1200)
trigger4 = P2Bodydist X  = [-30,56]
trigger4 = P2dist y = [-60,-8]
trigger4 = Random < (400 * (AIlevel ** 2 / 64.0))
trigger5 = NumTarget(1310)
trigger5 = (Ctrl || StateNo=21 || StateNo=100 || (StateNo=[120,135]))
trigger5 = (P2Bodydist x = [-40,36]) && (P2dist y = [-50,-20])
trigger5 = Random < (500 * (AIlevel ** 2 / 64.0))
trigger6 = (NumTarget(211) || NumTarget(240))  && (P2Bodydist x < ifelse((Enemynear,BackEdgedist < 1),12,4) || P2StateType=A)
trigger6 = (StateNo=220 && Animelemtime(4)<0) || (StateNo=240 &&  Animelemtime(5)<0) && MoveHit
trigger6 = Random < (500-440*(Power>=1000 && P2StateType!=C)) * (AIlevel ** 2 / 64.0)
trigger7 = NumTarget(3120)
trigger7 = (CTRL||StateNo=21) && P2Bodydist x < 60 && (P2Dist y = [-190,-120]) && Random < 800 * (AIlevel ** 2 / 64.0)
trigger8 = (CTRL||StateNo=21) && Enemynear,hitfall
trigger8 = (P2Dist y = [-60,-40]) && P2Bodydist x <40
trigger8 = Random < 400 * (AIlevel ** 2 / 64.0)
trigger9 = (CTRL||StateNo=21) && NumTarget(265)
trigger9 = P2Bodydist x < 35 && (P2Dist y = [-70,-50])
trigger9 = Random < 800 * (AIlevel ** 2 / 64.0)

[State -1, SMP2]
type = changestate
value = 207
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 53]) && (p2bodydist y = [ -50, 50]) && p2statetype = S && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && p2statetype = C && random < (150 * (AIlevel ** 2 / 64.0))

[State -1, SMP]
type = changestate
value = 210
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [-11, 50]) && (p2bodydist y = [ -50, 50]) && p2statetype = S && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (65 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (NumTarget(200) || NumTarget(201)) && Time<3
trigger2 = random < (600 * (AIlevel ** 2 / 64.0))

[State -1, SHP2]
type = changestate
value = 212
triggerall = AIlevel && numenemy
triggerall = var(1) != 2 && Statetype != A && RoundState = 2
trigger1 = (Ctrl || StateNo=21 || StateNo=100) && (P2bodydist x = [60,85])
trigger1 = P2MoveType != A && P2MoveType != H && P2StateType != A
trigger1 = Enemynear,vel x = [-4,4]
trigger1 = Random < ((30 + (180*StateNo=100)) * (AIlevel ** 2 / 64.0))

[State -1, SHP3]
type = changestate
value = 212
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist y = [ -50, 50]) && (p2statetype = S || p2statetype = C)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (Ctrl || StateNo=21 || StateNo=100) && (p2bodydist x = [0, 70]) && !(Enemynear,Anim = 5300)
trigger1 = Random < (40 * (AIlevel ** 2 / 64.0))
trigger2 = Ctrl && (StateNo = [700,701])
trigger2 = !(Enemynear,Ctrl||StateNo=21) && P2StateNo < 3000 && P2Bodydist x < 80
trigger2 = Random < 280 * (AILevel/8.0)



[State -1, SHP]
type = changestate
value = 220
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [-34, 46]) && (p2dist y = [ -86, 50]) && p2statetype != L && (!(enemynear, hitfall) || Numtarget(1310))
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || StateNo=21 || (StateNo=100 && P2Bodydist x < 26) && !(Enemynear,Anim=5300)) && !NumTarget(1310)
trigger1 = Ifelse(P2StateType=A && P2MoveType=A,0,1)
trigger1 = Random < ((20 + 100*(Var(1)>1 || P2bodydist x<26) + 240*!(Enemynear,Ctrl||StateNo=21) + 600*(Enemynear,Anim=5300)) * (AIlevel ** 2 / 64.0))
trigger2 = NumTarget(1310)
trigger2 = (Ctrl || StateNo=21 || StateNo=100)
trigger2 = (P2bodydist x =[-6,25]) && (P2dist y=[-74,-44]) && Enemynear, vel y > -2
trigger2 = Random < 800 * AILevel/8.0

[State -1, SLP]
type = changestate
value = 200
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [-8, 46]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = (P2MoveType != H) && (Enemynear,P2Dist x > 0)
triggerall = !(Enemynear,P2dist x < 5)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, SLK]
type = changestate
value = 230
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 59]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != A && !(enemynear, hitfall) && !(enemynear, hitfall)
triggerall = !(Enemynear,P2dist x < 5)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, SMK2]
type = changestate
value = 222
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 50]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != C && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (33 * (AIlevel ** 2 / 64.0))

[State -1, SMK]
type = changestate
value = 440
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 20]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != C && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (75 * (AIlevel ** 2 / 64.0))

[State -1, SHK]
type = changestate
value = 250
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2 && (StateNo != [700,701])
triggerall = (p2bodydist x = [0, 59]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != C && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && (P2Bodydist x =[40,59])
trigger1 = random < (60 * (AIlevel ** 2 / 64.0))

[State -1, CLP]
type = changestate
value = 400
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [-11, 40]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != A && !(enemynear, hitfall)
triggerall = P2MoveType != H && (Enemynear,P2Dist x > 0)
triggerall = !(Enemynear,P2dist x < 5)
trigger1 = ctrl && random < (50 + 100* !(Enemynear,Ctrl||StateNo=21) + 100 * (Enemynear,vel x >1)) * (AIlevel ** 2 / 64.0)
trigger2 = stateno = 200 && (movehit = [1, 16]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, CMP]
type = changestate
value = 410
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [-40, 48]) && P2statetype != L && P2statetype != A && !(enemynear, hitfall)
trigger1 = Ctrl && Random < ((65 + 165*(P2MoveType=H) + 40*(time<2)) * (AIlevel ** 2 / 64.0))
trigger2 = NumTarget(230)
trigger2 = Ctrl && Target(230),Statetype!=A && Time<2
trigger2 = Random < 400 * (AIlevel ** 2 / 64.0)

[State -1, CHP]
type = changestate
value = 420
triggerall = AIlevel && numenemy && Enemynear,anim != 5300
triggerall = statetype != A && roundstate = 2 && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = Ctrl || StateNo = 21 || StateNo = 100
triggerall = Enemynear,vel x <= 0 || P2StateType != A
trigger1 = (p2bodydist x = [0, 33]) && (p2dist y = [ -50, 50]) && P2StateType != A
trigger1 = Random < ((50+(80*P2MoveType=H)) * (AIlevel ** 2 / 64.0))
trigger2 = P2StateType = A && Enemynear,vel y >= 0 && var(20)=0
trigger2 = ((P2Bodydist x - Enemynear,vel x * 8) = [-38,25])
trigger2 = P2dist y + Enemynear,vel y * 8 = [-80,-10]
trigger2 = Random < (200 * (AIlevel ** 2 / 64.0))
trigger3 = NumTarget(212) && P2Bodydist x < 39
trigger3 = (Target(212), StateNo = [5000,5999]) && time < 3
trigger3 = Random < (500 * (AIlevel ** 2 / 64.0))



[State -1, CLK]
type = changestate
value = 430
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = PrevStateNo != 430 && (StateNo != [700,701]) && P2MoveType != H && !(StateNo=[700,701])
triggerall = (p2bodydist x = [-17, 54]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != A && !(enemynear, hitfall)
triggerall = !(Enemynear,P2dist x < 5)
trigger1 = (ctrl || StateNo=21 || StateNo=100 && !(Enemynear,Anim=5300))
trigger1 = !(Enemynear,Anim=5300) && !(!(Enemynear,ctrl) && P2MoveType = I && (P2StateNo = [1000,4999]) && Enemynear,time > 60)
trigger1 = random < (80 + 120* !(Enemynear,Ctrl||StateNo=21) + 180 * (Enemynear,vel x >1)) * (AIlevel ** 2 / 64.0)
trigger2 = StateNo=430 && NumTarget(430) && MoveHit
trigger2 = time>=5 && P2bodydist x <28
trigger2 = random < ((200 + 200*NumTarget(430))  * (AIlevel ** 2 / 64.0))

[State -1, CHK]
type = changestate
value = 255
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2 && (StateNo != [700,701])
triggerall = (p2bodydist x = [35, 56]) && (p2bodydist y = [ -50, 50]) && p2statetype != L
triggerall = Enemynear,Anim != 5300
trigger1 = (Ctrl || StateNo = 21 || StateNo = 100) && !(enemynear, hitfall) && p2statetype = S
trigger1 = Random < ((160 - 160*(vel x < 0) + 100*(StateType = C) + 300*(PrevStateNo=52 && !(Enemynear,Ctrl))) * (AIlevel ** 2 / 64.0))
trigger2 = (Ctrl || StateNo = 21 || StateNo = 100) && NumTarget(430)
trigger2 = random < 480 * (AIlevel ** 2 / 64.0)
trigger3 = (Ctrl || StateNo = 21 || StateNo = 100) && NumTarget(1250)
trigger3 = (P2Dist y + (Target,vel y * 9)) = [-14,-1]
trigger3 = Random < 400 * (AIlevel ** 2 / 64.0)

[State -1, CMK]
type = changestate
value = 440
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [-2, 70]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != A && !(enemynear, hitfall)
trigger1 = (Ctrl || StateNo=21 || StateNo=100)
trigger1 = !(Enemynear,Anim=5300) && !(!(Enemynear,ctrl) && P2MoveType = I && (P2StateNo = [1000,4999]) && Enemynear,time > 60)
trigger1 = Random < ((95 + 280*(P2StateNo<1000 && P2StateType=S && !(Enemynear,Ctrl||StateNo=21) && Enemynear,time < 2)) * (AIlevel ** 2 / 64.0))
trigger2 = (NumTarget(430) || PrevStateNo=430) && (P2Bodydist x = [25,70]) && Ctrl
trigger2 = time < 3 && random < ((300 + 300*NumTarget(430))  * (AIlevel ** 2 / 64.0))
trigger3 = Ctrl && StateNo=701
trigger3 = !Enemynear,Ctrl && P2MoveType!=A
trigger3 = Random < 400 * (AILevel/8.0)



;[State -1, ALP]
;type = changestate
;value = 260
;triggerall = AIlevel && numenemy
;triggerall = statetype = A && roundstate = 2
;triggerall = (p2bodydist x = [0, 84]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
;trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AMP]
type = changestate
value = 610
triggerall = AIlevel && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [0, 50]) && (p2bodydist y = [ -50, 10]) && p2statetype != L
triggerall = vel y < 2
trigger1 = ctrl & P2Statetype=A
trigger1 = random < (ifelse((vel x > 0 && p2statetype = A), 250, 75) * (AIlevel ** 2 / 64.0))

[State -1, AHP]
type = changestate
value = 620
triggerall = AIlevel && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [-30, 110]) && (p2dist y = [ -50, 80]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && P2Statetype=A && (p2bodydist x = [-5, 60])
trigger1 = random < (50 + 500*(StateNo=702 || PrevStateNo=702)) * (AIlevel ** 2 / 64.0)
trigger2 = (CTRL || StateNo = [120,140]) && Sysvar(1)>=0 && Vel Y>-2 && P2StateType != A
trigger2 = (p2bodydist x = [-18, 70]) && (P2Dist Y=[60,70])
trigger2 = Random < (100 + 350 * (P2MoveType != I && (Abs(Enemynear,animtime)=[5,12]))) * (AIlevel ** 2 / 64.0)

[State -1, ALK]
type = changestate
value = 630
triggerall = AIlevel && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [-20,ifelse(P2Movetype=A,70,40)]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && Sysvar(1)= -1
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, TKK]
type = changestate
value = 630
triggerall = AIlevel && numenemy
triggerall = var(1) != 1 && statetype = A && roundstate = 2
triggerall = vel x > 0 && (vel y = [ -2, 2])
triggerall = (p2bodydist x > 0) && (p2bodydist y > 0)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, AMK]
type = changestate
value = 640
triggerall = AIlevel && numenemy
triggerall = statetype = A && roundstate = 2
triggerall = (p2bodydist x = [ -50, 130]) && (p2bodydist y = [ -50, 100]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = (CTRL || StateNo = [120,140]) && P2Statetype!=A && vel y>2
trigger1 = (p2dist x = [ -70, 10]) && p2dist y < 70
trigger1 = random < (400 * (AIlevel ** 2 / 64.0))

[State -1, AHK Better]
type = changestate
value = 650
triggerall = AIlevel && numenemy 
triggerall = statetype = A && roundstate = 2 && (CTRL || StateNo = [120,140])
triggerall = p2statetype != L && !(enemynear, hitfall)
trigger1 = P2StateType !=A  && sysvar(1)=1 && vel y > -2
trigger1 = (P2bodydist x - facing*(vel x*facing - Enemynear,vel x * Enemynear,facing) * 4) = [20,60]
trigger1 = P2dist y - vel y * 4 = [10,40]
trigger1 = Random < (160 + 350 * (P2MoveType != I && (Abs(Enemynear,animtime)=[5,12]))) * (AIlevel ** 2 / 64.0)
trigger2 = sysvar(1)=0
trigger2 = (P2bodydist x - facing*(vel x*facing - Enemynear,vel x * Enemynear,facing) * 8) = [-31,50]
trigger2 = (P2dist y - (vel y - Enemynear,vel y) * Ifelse(P2Dist y>=0,1,-1) * 8 ) = [-70,40]
trigger2 = Random < (380 * (AILevel ** 2 / 64.0))
trigger3 = P2StateType =A  && sysvar(1)!=0
trigger3 = (P2bodydist x - facing*(vel x*facing - Enemynear,vel x * Enemynear,facing) * 4) = [20,60]
trigger3 = (P2dist y - (vel y - Enemynear,vel y) * Ifelse(P2Dist y>=0,1,-1) * 8 ) = [-70,60]
trigger3 = Random < (320 * (AILevel ** 2 / 64.0))


[State -1, throw]
type = changestate
value = 800
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = S && stateno != 100 && ctrl
triggerall = p2statetype != A && p2statetype != L && p2movetype != H
trigger1 = (p2bodydist x = [0, 20]) && (p2bodydist y = [ -25, 25]) && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = (p2stateno != [120, 155]) && (p2bodydist x = [0, 26]) && (p2bodydist y = [ -25, 25]) && random < (500 * (AIlevel ** 2 / 64.0))




[State -1, joudansokutougeri with ex]
type = changestate
value = ifelse((var(1) = 1 && power >= 500 && P2StateType!=A && Power < 3000 && Random<160+ 600*(Enemynear,GetHitvar(Animtype) > 0)), 1310, 1300)
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && P2StateType != C
triggerall = p2statetype != L && !(enemynear, hitfall)
triggerall = !NumTarget(1310)
triggerall = (p2bodydist x = [0, 90]) && (p2bodydist y = [ -180, 60])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && random < (4 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [210, 213]) || (stateno = [230, 250]) ||  (stateno = [250, 255])  || StateNo=420 || StateNo=212 && Animelemtime(3)>0
trigger2 = stateno != 207 && (movehit = [1, 16]) && (P2Dist Y=[-18,0])
trigger2 = var(1)=1 || P2Bodydist x < 58
trigger2= random < (120 + 180*(P2BodyDist x=[60,80]) * (AIlevel ** 2 / 64.0))

[State -1, joudansokutougeri without ex]
type = changestate
value = 1300
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype != L && P2StateType != C
triggerall = !NumTarget(1310)
triggerall = P2Bodydist x < 90
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = Anim = 221 || Anim = 211 || StateNo = 410 || StateNo = 430 || StateNo = 255
trigger1 = (MoveContact = [1,4]) && (P2Bodydist x >= 22 || Power >= 1000)
trigger1 = P2Bodydist y = [-40,40]
trigger1 = Random < ((380-340*(StateNo = 430 && P2Bodydist x < 38))*(AIlevel ** 2 / 64.0))
trigger2 = StateNo = 255 && NumTarget(255) && (MoveHit=[1,4])
trigger2 = Random < (140 *(AIlevel ** 2 / 64.0))


[State -1, kuchuutatsumakisenpuukyaku]
type = changestate
value = ifelse((var(1) = 1 && power >= 500 && random < 100), 1260, 1250)
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A && var(9) != 2 && vel y > -5
triggerall = (StateNo!=[100,105])
trigger1 = (stateno = [600, 650]) && (movehit = [1, 16]) && P2StateType = A
trigger1 = Random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = Ctrl && p2bodydist x < 160 && p2dist y >= -120
trigger2 = Random < (2 * (AIlevel ** 2 / 64.0))

[State -1, Air Kick tatsumaki]
type = changestate
value = 1250
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A && var(9) != 2
triggerall = (StateNo!=[100,105])
trigger1 = Ctrl && Enemynear,BackEdgeBodyDist >= 40 && P2StateType != A && vel y > 0
trigger1 = P2Bodydist x <= 30
trigger1 = P2dist y = [80,90]
trigger1 = Random < (400 * (AIlevel ** 2 / 64.0))
trigger2 = (StateNo = [620,650]) && (MoveContact = [1,5]) && (P2Bodydist x = [-50,68]) && P2StateType = A
trigger2 = Random < ((180+(80*(var(1)!=1))) * (AIlevel ** 2 / 64.0))

[State -1, tatsumakisenpuukyaku]
type = changestate
value = 1200
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && (StateNo != [100,105])
triggerall = (p2stateno != [120, 155]) && ((p2statetype != L && P2Statetype=S) || (P2StateNo = 5120 && (Abs(Enemynear,Animtime)= [12,13])))
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = var(1) != 1 || !(enemynear, hitfall) || numtarget(1310) || numtarget(3120) || numtarget(3100)
trigger1 = (stateno = [210,250])  || StateNo=420 || StateNo=250
trigger1 = !(StateNo = 212 && Animelemtime(7)<0) && !(StateNo=212 && Animelemtime(3)<0)
trigger1 = (p2bodydist x = [1, 38]) && (enemynear, vel y > -1) && (enemynear, vel x > -2)
trigger1 = (StateNo != 207 && StateNo != 230) && (movehit = [1, 16]) && P2StateType = S
trigger1 = Random < ( (200 + 100*(var(1)>1)) * (AIlevel ** 2 / 64.0))
trigger2 = (Ctrl || StateNo=21 || StateNo=100 || (StateNo=[120,140])) && P2MoveType = A && InGuardDist
trigger2 = (Enemynear,NumHelper || Enemynear,NumProj) && P2Bodydist x < 120
trigger2 = Random < 40 * (AIlevel ** 2 / 64.0)
trigger3 = (Ctrl || StateNo = 21) && (P2Bodydist x = [-10,20]) && Enemynear,BackEdgeDist > 20
trigger3 = P2StateNo = 5120 && (Abs(Enemynear,Animtime)= [12,13])
triiger3 = Random < 400 * (AIlevel ** 2 / 64.0)

[State -1, ex tatsumakisenpuukyaku]
type = changestate
value = 1210
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = var(1) = 1 && power >= 500
triggerall = (p2stateno != [120, 155]) && p2statetype != L
triggerall = (p2dist x = [ -56, 100]) && p2dist y >= -80 && (enemynear, vel y > -1) && (enemynear, vel x > -3)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl &&  (p2dist x = [ -56, 60]) && !(enemynear, hitfall)
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [210,250])  || StateNo=420 || StateNo=250 || StateNo=255
trigger2 = stateno != 207 && (movehit = [1, 16]) && (p2dist x = [ -56, 80]) && !(enemynear, hitfall)
;trigger2 = random < (200 + 200*(Enemynear,BackEdgebodydist < 10) * (AIlevel ** 2 / 64.0))
trigger3 = (Ctrl || StateNo=21) && NumTarget(1310)
trigger3 = (p2bodydist x = [ -50, 80]) && P2dist y <= -72
trigger3 = random < (200 * (AIlevel ** 2 / 64.0))

[State -1, hadouken]
type = changestate
value = ifelse((var(1) = 1 && power >= 500 && !NumTarget(3120) && random < 40), 1010, 1000)
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype != L
triggerall = (enemynear, vel y > -1) || NumTarget(3120)
triggerall = !numhelper(1010) && !numhelper(3005) && !numhelper(3025) && !numhelper(3045)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
triggerall = !((P2StateNo = [5300,5309]) || (Enemynear,Anim = [5300,5309]))
triggerall = !(Enemynear,PrevStateNo = [5300,5309])
trigger1 = Ctrl && IfElse(var(20),1,!(NumHelper(1005) || NumHelper(1010))) && P2dist x > 160
trigger1 = Random < (20 + 210*((!Enemynear,Ctrl)||(P2Bodydist x = [80,130]))) * (AIlevel ** 2 / 64.0)
trigger2 = Ctrl && (NumHelper(1005) || NumHelper(1010))
trigger2 = Helper,var(3)
trigger2 = (P2bodydist x = [70,160]) && P2Statetype != A && P2Movetype = H
trigger2 = Random < 240 * (AIlevel ** 2 / 64.0)
trigger3 = (stateno = [210, 213]) || StateNo=410 || (StateNo=212 && Animelemtime(3)>0) || (StateNo=[250,255])
trigger3 = stateno != 207 && MoveContact
trigger3 = !(StateNo = 212 && Animelemtime(7)<0) && !(StateNo=212 && Animelemtime(3)<0)
trigger3 = Random < ((300 + 100*(StateNo=212) + 100*movehit) * (AIlevel ** 2 / 64.0))
trigger4 = (Ctrl || StateNO=21) && Numtarget(3120)
trigger4 = (Time = 0 && P2Bodydist x > 110 && Enemynear,BackEdgeBodyDist >= 10) || (Time = 10 && (P2Bodydist x = [50,110]) && Enemynear,BackEdgeBodyDist < 10)
trigger4 = Random < 800 * (AIlevel ** 2 / 64.0)
trigger5 = NumTarget(430) && P2Bodydist x >70 && CTRL
trigger5 = time < 3 && random < ((100 + 300*NumTarget(430))  * (AIlevel ** 2 / 64.0))

[State -1, joudansokutougeri EX]
type = changestate
value = 1310
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A && Power>=500 && var(1)=1
triggerall = (p2stateno != [120, 155]) && p2statetype != L
triggerall = !NumTarget(1310)
triggerall = (p2bodydist x = [0, 90]) && (p2bodydist y = [ -180, 60])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = StateNo=210 || StateNo=240 || StateNo=250
trigger1 = (MoveHit=[1,2]) && P2StateNo >= 5000
trigger1 = Random < 400 * AILevel/8.0

[State -1, AI Walk]
type = ChangeState
value = 21
triggerall= AIlevel && numenemy && anim!=5
triggerall= roundstate=2 && !InGuardDist && statetype=S && P2bodydist x>-30
trigger1 = Ctrl && P2statetype=A && P2Bodydist x>-16 && P2dist y< -80
trigger1 = (NumTarget(1201) ||  NumTarget(3300))
trigger1 = Random<AILevel/8.0 * 800
trigger2 = Ctrl && P2Bodydist x > 70 && (stateno!=[10,12])
trigger2 = Random<AILevel/8.0 * 100
trigger3 = Ctrl && NumTarget(265)
trigger3 = Target(265), MoveType=H && Target(265),Statetype=A
trigger4 = Ctrl && NumTarget(1310)
trigger4 = (P2Bodydist x = [1,90]) && (Target,StateNo = [1111301,1111303])
trigger5 = Ctrl && NumTarget(1250)
trigger5 = P2Bodydist x > 70

;[State -1, Debug]
;type = ChangeState
;value = 5300
;trigger1 = StateType != A
;trigger1 = Command = "holdstart"
;trigger1 = var(39):=2
;trigger1 = fvar(39):=200
