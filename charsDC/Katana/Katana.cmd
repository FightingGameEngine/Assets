;---------------------------------------------------------------------------
; 1. Command definition
;---------------------------------------------------------------------------
;-| Button Remapping |-----------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 30
command.buffer.time = 1

;-| Super Moves |--------------------------------------------------------

[Command]
name = "Air Hyper"
command = ~D,DF,F,x+y
time = 30

[Command]
name = "Air Hyper"
command = ~D,DF,F,x
time = 30

[Command]
name = "Air Hyper"
command = ~D,DF,F,y
time = 30

[Command]
name = "Shinko_Enzan_Hyper"
command = ~D,DB,B,a+b

[Command]
name = "Dragon Spirit"
command = ~D,DF,F,x
time = 25

[Command]
name = "Dragon Spirit"
command = ~D,DF,F,y
time = 25

[Command]
name = "Suicide Squad"
command = ~D,DF,F,a+b

[Command]
name = "Soultaker"
command = ~D,DB,B,x
time = 25

[Command]
name = "QCF2+p"
command = ~D,DF,F,D,DF,F,y+z
time = 25

[Command]
name = "QCF2+k"
command = ~D,DF,F,D,DF,F,c
time = 25

;-| Special Moves |------------------------------------------------------

[Command]
name = "StrikerA"
command = ~D, DB, B, b

[Command]
name = "StrikerB"
command = ~D, DB, B, c

[command]
name="kunai"
command=~D,DF,F,a
time=30

[command]
name="throwing_star"
command=~D,DF,F,c
time=30

[command]
name="katana_wave"
command=~D,DF,F,b
time=30

[Command]
name = "QCFx+y"
command = ~D,DF,F,x+y
time = 15

[Command]
name = "QCFx"
command = ~D,DF,F,x
time = 15

[Command]
name = "QCFy"
command = ~D,DF,F,y
time = 15

[Command]
name = "QCBx+y"
command = ~D,DB,B,x+y
time = 15

[Command]
name = "QCBx"
command = ~D,DB,B,x
time = 15

[Command]
name = "QCBy"
command = ~D,DB,B,y
time = 15

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F,F
time = 10

[Command]
name = "BB"
command = B,B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "ax"
command = a+x
time = 1

[Command]
name = "by"
command = b+y
time = 1

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "3K"
command = a+b+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 17

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd"
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down"
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back"
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up"
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

;-| Misc |------------------------------------------------------------------
[Command]
name = "HighJump"
command = $D,$U
time = 10

[Command]
name = "DU"
command = $D,$U ;D, U
time = 10

;---------------------------------------------------------------------------
;====================<CPU>===========================

[Command]
name = "CPU1"
command = U,U,D,D,B,F,B,F,a,a,a,s
time = 0

[Command]
name = "CPU2"
command = U,U,D,D,B,F,B,F,a,a,a,a,s
time = 0

[Command]
name = "CPU3"
command = U,D,B,F,b,b,s
time = 0

[Command]
name = "CPU4"
command = D,B,F,B,F,b,b,s
time = 0

[Command]
name = "CPU5"
command = U,D,D,B,F,b,b,s
time = 0

[Command]
name = "CPU6"
command = U,U,D,F,B,F,b,s
time = 0

[Command]
name = "CPU7"
command = U,U,D,D,B,F,x,x,s
time = 0

[Command]
name = "CPU8"
command = U,U,D,D,B,F,x,s
time = 0

[Command]
name = "CPU9"
command = D,D,B,F,B,F,x,s
time = 0

[Command]
name = "CPU10"
command = D,D,B,F,B,F,x,x,s
time = 0

[Command]
name = "CPU11"
command = U,U,D,D,B,F,B,F,x,x,s
time = 0

[Command]
name = "CPU12"
command = U,U,D,B,F,B,F,x,s
time = 0

[Command]
name = "CPU13"
command = U,U,B,F,B,F,y,y,s
time = 0

[Command]
name = "CPU14"
command = U,U,D,B,F,B,F,y,y,s
time = 0

[Command]
name = "CPU15"
command = U,U,U,U,B,F,B,F,y,s
time = 0

[Command]
name = "CPU16"
command = U,U,U,U,B,F,B,F,y,y,s
time = 0

[Command]
name = "CPU17"
command = U,U,D,D,U,U,B,F,y,s
time = 0

[Command]
name = "CPU18"
command = U,U,D,D,B,F,U,U,y,s
time = 0

[Command]
name = "CPU19"
command = U,U,U,U,U,U,B,F,y,s
time = 0

[Command]
name = "CPU20"
command = U,U,D,D,U,U,B,F,x,s
time = 0


;---------------------------------------------------------------------------
; 2. State entry
;---------------------------------------------------------------------------
[Statedef -1]
;===========================================================================
;---------------------------------------------------------------------------
;Air Hyper
[State -1, Air Hyper]
type = ChangeState
value = 9500
triggerall = command = "Air Hyper"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = [600,649]) && Movecontact

;---------------------------------------------------------------------------
[State -1];Shinko_Enzan_Hyper
type = ChangeState
value = 9996
triggerall = var(59) = 0
triggerall = command = "Shinko_Enzan_Hyper"
triggerall = command != "holddown"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 1000
trigger3 = movecontact
trigger4 = stateno = 1100
trigger4 = time >= 25
trigger5 = stateno = 1150
trigger5 = time >= 33
trigger6 = stateno = 1300
trigger6 = movecontact
trigger7 = stateno = 1350
trigger7 = time <= 29

;---------------------------------------------------------------------------
[State -1, Dragon Spirit]
type = ChangeState
value = 9998
triggerall = command = "Dragon Spirit"
triggerall = statetype = S
triggerall = power >= 1000
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
[State -1, Suicide Squad]
type = ChangeState
value = 9990
triggerall = command = "Suicide Squad"
triggerall = statetype = S
triggerall = power >= 1000
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
[State -1, Soultaker]
type = ChangeState
value = 9997
triggerall = command = "Soultaker"
triggerall = statetype = S
triggerall = power >= 1000
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
; Kantan Enzan
[State -1, Kantan Enzan]
type = ChangeState
value = 3000
triggerall = command = "QCF2+p"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 1010 && Movecontact
trigger3 = StateNo = 1020 && Movecontact
trigger4 = StateNo = 1030 && Movecontact
trigger5 = (StateNo = [200,249]) && Movecontact
trigger6 = (StateNo = [400,449]) && Movecontact

;---------------------------------------------------------------------------
; Issen Kousa
[State -1, Issen Kousa]
type = ChangeState
value = 3100
triggerall = command = "QCF2+k"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateNo = 1010 && Movecontact
trigger3 = StateNo = 1020 && Movecontact
trigger4 = StateNo = 1030 && Movecontact
trigger5 = (StateNo = [200,249]) && Movecontact
trigger6 = (StateNo = [400,449]) && Movecontact

;===========================================================================
;---------------------------------------------------------------------------
; Shingetsu EX
[State -1, Shingetsu EX]
type = ChangeState
value = 1001
triggerall = command = "QCFx+y"
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,249]) && Movecontact
trigger3 = (StateNo = [400,449]) && Movecontact

;---------------------------------------------------------------------------
; Shingetsu X
[State -1, Shingetsu X]
type = ChangeState
value = 1000
triggerall = command = "QCFx"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,249]) && Movecontact
trigger3 = (StateNo = [400,449]) && Movecontact

;---------------------------------------------------------------------------
; Shingetsu Y
[State -1, Shingetsu Y]
type = ChangeState
value = 1000
triggerall = command = "QCFy"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,249]) && Movecontact
trigger3 = (StateNo = [400,449]) && Movecontact

;---------------------------------------------------------------------------
; Shinko Enzan EX
[State -1, Shinko Enzan EX]
type = ChangeState
value = 1110
triggerall = command = "QCBx+y"
triggerall = power >= 500
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = [600,649]) && Movecontact

;---------------------------------------------------------------------------
; Shinko Enzan X
[State -1, Shinko Enzan X]
type = ChangeState
value = 1100
triggerall = command = "QCBx"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = [600,649]) && Movecontact

;---------------------------------------------------------------------------
; Shinko Enzan Y
[State -1, Shinko Enzan Y]
type = ChangeState
value = 1105
triggerall = command = "QCBy"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = [600,649]) && Movecontact
;===============================================================================
;Harley
;===============================================================================
[State -1, StrikerA]
type = ChangeState
triggerall = !var(15)
value = 1400
triggerall = !NumHelper(1410)
triggerall = command = "StrikerA"
triggerall = var(14) = 0
trigger1 = Statetype = S && ctrl
trigger2 = (StateType = S) && (HitdefAttr = S, NA) && (MoveContact)

;===============================================================================
;Deadshot
;===============================================================================
[State -1, StrikerB]
type = ChangeState
triggerall = !var(15)
value = 2400
triggerall = !NumHelper(1410)
triggerall = command = "StrikerB"
triggerall = var(15) = 0
trigger1 = Statetype = S && ctrl
trigger2 = (StateType = S) && (HitdefAttr = S, NA) && (MoveContact)

;===============================================================================
;katana_wave
;===============================================================================
[state katana_wave]
type=changestate
triggerall=var(59)<=0&&command="katana_wave"
triggerall = var(13) = 0
trigger1=statetype!=a&&ctrl
trigger2=stateno=[200,265]
value=2000
;===========================================================================
;kunai
;===============================================================================
[state kunai]
type=changestate
triggerall=var(59)<=0&&command="kunai"
triggerall = var(16) = 0
trigger1=statetype!=a&&ctrl
trigger2=stateno=[200,265]
value=2100
;===========================================================================
;throwing_star
;===============================================================================
[state throwing_star]
type=changestate
triggerall=var(59)<=0&&command="throwing_star"
triggerall = var(17) = 0
trigger1=statetype!=a&&ctrl
trigger2=stateno=[200,265]
value=2200

;---------------------------------------------------------------------------
; Forward Dash
[State -1, Forward Dash]
type = ChangeState
value = 101
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Back Dash
[State -1, Back Dash]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Airdash Fwd]
type = ChangeState
triggerall = statetype = A
trigger1 = stateno != 100 && stateno != 2999 && stateno != 107
trigger1 = PrevStateNo != 107
trigger1 = command = "FF"
trigger1 = ctrl
value = 107
persistent = 0
;---------------------------------------------------------------------------
[State -1, Airdash Back]
type = ChangeState
triggerall = statetype = A
trigger1 = stateno != 100 && stateno != 2999 && stateno != 108
trigger1 = PrevStateNo != 108
trigger1 = command = "BB"
trigger1 = ctrl
value = 108
;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "ax" || (command = "holdfwd" || command = "holdback") && command = "ax"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != 100

;---------------------------------------------------------------------------
; Leap Attack
[State -1, Leap Attack]
type = ChangeState
value = 900
triggerall = command = "xy"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Guard Break Attack
[State -1, Guard Break]
type = ChangeState
value = 950
triggerall = command = "by"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = statetype = S && !Var(59)
triggerall = var(18) = 0
triggerall = ctrl = 1
trigger1 = command = "s"

;---------------------------------------------------------------------------
; Stand Light Slash
[State -1, Stand Light Slash]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Slash
[State -1, Stand Medium Slash]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200 || StateNo = 210) && Time >= 4

;---------------------------------------------------------------------------
; Stand Strong Slash
[State -1, Stand Strong Slash]
type = ChangeState
value = 210
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = StateNo = 230 && Movecontact
trigger2 = (StateNo = 220 || StateNo = 200) && Time >= 4

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 230 || StateNo = 250) && Time >= 4

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 230 || StateNo = 240) && Time >= 4

;---------------------------------------------------------------------------
; Sweep
[State -1, Sweep]
type = ChangeState
value = 450
triggerall = command = "holddown" && command = "holdfwd"
triggerall = command = "y"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Slash
[State -1, Crouching Light Slash]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Slash
[State -1, Crouching Strong Slash]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Slash 2
[State -1, Crouching Strong Slash 2]
type = ChangeState
value = 420
triggerall = !Var(59)
triggerall = Command = "z"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && Movecontact
trigger3 = (StateNo = 230) && Movecontact
trigger4 = (StateNo = 400) && Movecontact
trigger5 = (StateNo = 430) && Movecontact
trigger6 = (StateNo = 210) && Movecontact
trigger7 = (StateNo = 211) && Movecontact
trigger8 = (StateNo = 240) && Movecontact
trigger9 = (StateNo = 241) && Movecontact
trigger10 = (StateNo = 220) && Movecontact
trigger11 = (StateNo = 221) && Movecontact
trigger12 = (StateNo = 410) && Movecontact
trigger13 = (StateNo = 440) && Movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 430 && Movecontact

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Kick 2
[State -1, Crouching Strong Kick 2]
type = ChangeState
value = 445
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Slash
[State -1, Jump Light Slash]
type = ChangeState
value = 600
triggerall = !Var(59)
triggerall = command = "x"
trigger1 = Statetype = A && ctrl

;---------------------------------------------------------------------------
; Jump Strong Slash
[State -1, Jump Strong Slash]
type = ChangeState
value = 610
triggerall = !Var(59)
triggerall = command = "y"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && Movecontact
trigger3 = (StateNo = 630) && Movecontact

;---------------------------------------------------------------------------
; Jump Strong Slash 2
[State -1, Jump Strong Slash 2]
type = ChangeState
value = 620
triggerall = !Var(59)
triggerall = command = "z"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && Movecontact
trigger3 = (StateNo = 630) && Movecontact
trigger4 = (StateNo = 610) && Movecontact
trigger5 = (StateNo = 640) && Movecontact

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !Var(59)
triggerall = command = "a"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && Movecontact

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = !Var(59)
triggerall = command = "b"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && Movecontact
trigger3 = (StateNo = 610) && Movecontact
trigger4 = (StateNo = 620) && Movecontact
trigger5 = (StateNo = 630) && Movecontact

;---------------------------------------------------------------------------
; Jump Strong Kick 2
[State -1, Jump Strong Kick 2]
type = ChangeState
value = 650
triggerall = !Var(59)
triggerall = command = "c"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && Movecontact
trigger3 = (StateNo = 610) && Movecontact
trigger4 = (StateNo = 620) && Movecontact
trigger5 = (StateNo = 630) && Movecontact
trigger6 = (StateNo = 640) && Movecontact
;-----------------------------------------------------
[State -1, super jump ]
type = ChangeState
value = 7000
trigger1 = command = "DU"
trigger1 = ctrl ; these means that you can make the move when you control the char
trigger1 = statetype != A ; these is to make that you cant use the superjump while you are in the air
; If you want to make a launcher you can use these 
trigger2 = (stateno = 420) && (movehit) && (command = "holdup") ;yyy right here is the stateno for your lancher

;-----------------------------------------------------
;combo crouch Z/stand y/stand c----> air attack
;[State -1]
;type = ChangeState
;value = 40
;triggerall = command = "holdup"
;trigger1 = movecontact = 1
;trigger1 = stateno = 420

;---------------------------------------------------------------------------
;===========================================================================

[State -1, AI Run Fwd]
type = ChangeState
value = 101
triggerall = !win
triggerall = p2stateno != [1025,1028]
triggerall = statetype = S
trigger1 = stateno != 102
trigger1 = var(59)
trigger1 = ctrl
trigger1 = p2dist X>160

[State -1, AI Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59)
triggerall = statetype = S
triggerall = ctrl
trigger1 = prevstateno = 1056
trigger1 = enemy,backedgebodydist<=20
trigger1 = p2movetype = H
trigger1 = p2stateno != [120,170]
trigger1 = p2stateno = [5030,5100]
trigger2 = p2stateno != [5100,5150]
trigger2 = p2dist X<50
trigger2 = p2statetype = S
trigger2 = random>900
trigger3 = prevstateno = [810,811]
trigger3 = p2bodydist X = [0,15]
trigger3 = enemy,backedgebodydist<=20
trigger4 = p2stateno = 821
trigger4 = p2bodydist X = [0,20]

[State -1, AI Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59)
triggerall = statetype = S
trigger1 = stateno = 200
trigger1 = p2stateno = [5030,5100]
trigger1 = enemy,backedgebodydist<=20
trigger1 = time > 5
trigger1 = movehit
trigger2 = p2stateno != [5100,5150]
trigger2 = p2stateno != 1028
trigger2 = p2dist X<60
trigger2 = ctrl
trigger2 = random>980

[State -1, AI Standing Strong Kick]
type = ChangeState
value = 250
triggerall = var(59)
triggerall = statetype = S
trigger1 = (stateno = 230) && time > 6
trigger1 = movehit
trigger1 = p2dist X = [0,65]

[State -1, AI Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59)
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist X<=55
trigger1 = p2statetype = S
trigger1 = p2stateno = [200,250]
trigger1 = p2movetype = A

[State -1, AI Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59)
trigger1 = stateno = 600
trigger1 = statetime >= 7
trigger1 = movecontact
trigger1 = p2dist X-(vel X*7)<=40
trigger1 = prevstateno != 600
trigger2 = stateno != 600
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = p2bodydist X<=30
trigger2 = p2statetype = A
trigger2 = p2dist Y = [-60,10]

[State -1, AI Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59)
trigger1 = stateno = 600
trigger1 = statetime >= 7
trigger1 = movecontact
trigger1 = (prevstateno = 600) || (p2dist X-(vel X*7)>40)

[State -1, AI Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59)
triggerall = p2dist Y>20
triggerall = p2dist X = [0,40]
triggerall = statetype = A
trigger1 = p2statetype = S
trigger1 = vel Y>0
trigger1 = ctrl
trigger2 = vel Y>0
trigger2 = ctrl

[State -1, AI Jump Strong Kick]
type = ChangeState
value = 650
triggerall = var(59)
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2statetype = C
trigger1 = vel Y>0
trigger1 = pos Y>-60
trigger1 = p2dist X<80
trigger2 = stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

[State -1, Harley Quinn]
type = ChangeState
value = 1400
triggerall = var(59)
triggerall = var(14) = 0
triggerall = statetype = S
triggerall = power < 100
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Kunai]
type = ChangeState
value = 2100
triggerall = var(59)
triggerall = statetype = S
triggerall = power < 600
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Katana Wave]
type = ChangeState
value = 2000
triggerall = var(59)
triggerall = var(13) = 0
triggerall = statetype = S
triggerall = power < 990
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, AI Hyper 1]
type = ChangeState
value = 9996
triggerall = var(59)
triggerall = statetype = S
triggerall = power >= 1000
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, AI Air Hyper]
type = ChangeState
value = 9500
triggerall = var(59)
triggerall = statetype = A
triggerall = power >= 1000
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H


;CPU AI
[State -1, VarSet]
type = VarSet
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU10"
trigger11 = command = "CPU11"
trigger12 = command = "CPU12"
trigger13 = command = "CPU13"
trigger14 = command = "CPU14"
trigger15 = command = "CPU15"
trigger16 = command = "CPU16"
trigger17 = command = "CPU17"
trigger18 = command = "CPU18"
trigger19 = command = "CPU19"
trigger20 = command = "CPU20"
var(59) = 1
