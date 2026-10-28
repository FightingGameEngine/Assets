; Axel by Buckus
;
;===============================================================================
;Button Remaping
;===============================================================================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;===============================================================================
;Default Values
;===============================================================================

[Defaults]

command.time = 15
command.buffer.time = 1


;===============================================================================
;A.I.
;===============================================================================

[Command]
name = "cpu1"
command = U, D, F
time = 1

[Command]
name = "cpu2"
command = U, B, F
time = 1

[Command]
name = "cpu3"
command = U, D, D
time = 1

[Command]
name = "cpu4"
command = F, B, U
time = 1

[Command]
name = "cpu5"
command = U, F, U, B
time = 1

[Command]
name = "cpu6"
command = U, D, B
time = 1

[Command]
name = "cpu7"
command = F, F, B
time = 1

[Command]
name = "cpu8"
command = U, D, U
time = 1

[Command]
name = "cpu9"
command = F, B, B
time = 1

[Command]
name = "cpu10"
command = F, F, B, B
time = 1

[Command]
name = "cpu11"
command = U, U, F
time = 1

[Command]
name = "cpu12"
command = U, B, B
time = 1

[Command]
name = "cpu13"
command = U, B, F, F
time = 1

[Command]
name = "cpu14"
command = U, F, B, U
time = 1

[Command]
name = "cpu15"
command = U, B, F, U
time = 1

[Command]
name = "cpu16"
command = U, B, B, B
time = 1

[Command]
name = "cpu17"
command = U, D, B, F
time = 1

[Command]
name = "cpu18"
command = U, D, B, D
time = 1

[Command]
name = "cpu19"
command = U, D, F, U
time = 1

[Command]
name = "cpu20"
command = U, D, U, B
time = 1

[Command]
name = "cpu21"
command = U, D, F, F
time = 1

[Command]
name = "cpu22"
command = F, F, F, F
time = 1

[Command]
name = "cpu23"
command = U, U, U, D
time = 1

[Command]
name = "cpu24"
command = B, B, B
time = 1

[Command]
name = "cpu25"
command = D, D, D, D
time = 1

[Command]
name = "cpu26"
command = D, D, D
time = 1

[Command]
name = "cpu27"
command = F, F, F
time = 1

[Command]
name = "cpu28"
command = U, U, U
time = 1

[Command]
name = "cpu29"
command = U, U, B, B
time = 1

[Command]
name = "cpu30"
command = D, D, F, F
time = 1

;===============================================================================
;Super Motions
;===============================================================================

[Command]
name="QCFHCB+2p"
command=~D,F,D,B,x+y
time=40
[Command]
name="QCFHCB+2p"
command=~D,F,D,B,x+z
time=40
[Command]
name="QCFHCB+2p"
command=~D,F,D,B,y+z
time=40

[Command]
name="2QCB+2p"
command=~D,DB,B,D,DB,x+y
time=30
[Command]
name="2QCB+2p"
command=~D,DB,B,D,DB,x+z
time=30
[Command]
name="2QCB+2p"
command=~D,DB,B,D,DB,y+z
time=30

[Command]
name = "2QCF_p"
command = ~D,DF,F,D,DF,F,x
time = 30
[Command]
name = "2QCF_p"
command = ~D,DF,F,D,DF,F,y
time = 30
[Command]
name = "2QCF_p"
command = ~D,DF,F,D,DF,F,z
time = 30
[Command]
name = "2QCF_p"
command = ~D,DF,F,D,DF,F,~x
time = 30
[Command]
name = "2QCF_p"
command = ~D,DF,F,D,DF,F,~y
time = 30
[Command]
name = "2QCF_p"
command = ~D,DF,F,D,DF,F,~z
time = 30

[Command]
name = "2QCF_k"
command = ~D,DF,F,D,DF,F,a
time = 30
[Command]
name = "2QCF_k"
command = ~D,DF,F,D,DF,F,b
time = 30
[Command]
name = "2QCF_k"
command = ~D,DF,F,D,DF,F,c
time = 30
[Command]
name = "2QCF_k"
command = ~D,DF,F,D,DF,F,~a
time = 30
[Command]
name = "2QCF_k"
command = ~D,DF,F,D,DF,F,~b
time = 30
[Command]
name = "2QCF_k"
command = ~D,DF,F,D,DF,F,~c
time = 30

[Command]
name = "2QCB_p"
command = ~D,DB,B,D,DB,B,x
time = 30
[Command]
name = "2QCB_p"
command = ~D,DB,B,D,DB,B,y
time = 30
[Command]
name = "2QCB_p"
command = ~D,DB,B,D,DB,B,z
time = 30
[Command]
name = "2QCB_p"
command = ~D,DB,B,D,DB,B,~x
time = 30
[Command]
name = "2QCB_p"
command = ~D,DB,B,D,DB,B,~y
time = 30
[Command]
name = "2QCB_p"
command = ~D,DB,B,D,DB,B,~z
time = 30

;===============================================================================
;EX-Special Motions
;===============================================================================

[Command]
name = "EXSpecial2"
command = ~D,DB,B,a+b
time = 25
[Command]
name = "EXSpecial2"
command = ~D,DB,B,a+c
time = 25
[Command]
name = "EXSpecial2"
command = ~D,DB,B,b+c
time = 25

[Command]
name = "EXSpecial3"
command = ~D,DF,F,x+y
time = 25
[Command]
name = "EXSpecial3"
command = ~D,DF,F,x+z
time = 25
[Command]
name = "EXSpecial3"
command = ~D,DF,F,y+z

;===============================================================================
;Special Motions
;===============================================================================

[Command]
name = "HCF_a"
command = ~B,DB,D,DF,F,a
time = 25
[Command]
name = "HCF_b"
command = ~B,DB,D,DF,F,b
time = 25
[Command]
name = "HCF_c"
command = ~B,DB,D,DF,F,c
time = 25
[Command]
name = "HCF_a"
command = ~B,DB,D,DF,F,~a
time = 25
[Command]
name = "HCF_b"
command = ~B,DB,D,DF,F,~b
time = 25
[Command]
name = "HCF_c"
command = ~B,DB,D,DF,F,~c
time = 25

[Command]
name = "upper_x"
command = ~F,D,DF,x
time = 20
[Command]
name = "upper_y"
command = ~F,D,DF,y
time = 20
[Command]
name = "upper_z"
command = ~F,D,DF,z
time = 20
[Command]
name = "upper_x"
command = ~F,D,DF,x
time = 20
[Command]
name = "upper_y"
command = ~F,D,DF,y
time = 20
[Command]
name = "upper_z"
command = ~F,D,DF,z
time = 20

[Command]
name = "QCF_a"
command = D,DF,F,a
time = 20
[Command]
name = "QCF_b"
command = D,DF,F,b
time = 20
[Command]
name = "QCF_c"
command = D,DF,F,c
time = 20
[Command]
name = "QCF_a"
command = D,DF,F,~a
time = 20
[Command]
name = "QCF_b"
command = D,DF,F,~b
time = 20
[Command]
name = "QCF_c"
command = D,DF,F,~c
time = 20

[Command]
name = "QCF_x"
command = D,DF,F,x
time = 20
[Command]
name = "QCF_y"
command = D,DF,F,y
time = 20
[Command]
name = "QCF_z"
command = D,DF,F,z
time = 20
[Command]
name = "QCF_x"
command = D,DF,F,~x
time = 20
[Command]
name = "QCF_y"
command = D,DF,F,~y
time = 20
[Command]
name = "QCF_z"
command = D,DF,F,~z
time = 20

[Command]
name = "QCB_a"
command = ~D,DB,B,a
time = 20
[Command]
name = "QCB_b"
command = ~D,DB,B,b
time = 20
[Command]
name = "QCB_c"
command = ~D,DB,B,c
time = 20
[Command]
name = "QCB_a"
command = ~D,DB,B,~a
time = 20
[Command]
name = "QCB_b"
command = ~D,DB,B,~b
time = 20
[Command]
name = "QCB_c"
command = ~D,DB,B,~c
time = 20

[Command]
name = "QCB_x"
command = ~D,DB,B,x
time = 20
[Command]
name = "QCB_y"
command = ~D,DB,B,y
time = 20
[Command]
name = "QCB_z"
command = ~D,DB,B,z
time = 20
[Command]
name = "QCB_x"
command = ~D,DB,B,~x
time = 20
[Command]
name = "QCB_y"
command = ~D,DB,B,~y
time = 20
[Command]
name = "QCB_z"
command = ~D,DB,B,~z
time = 20

[Command]
name = "runspecial"
command = ~30$B, F, x
time = 10

[Command]
name = "runspecial"
command = ~30$B, F, y
time = 10

[Command]
name = "runspecial"
command = ~30$B, F, z
time = 10

;===============================================================================
;Double Tap
;===============================================================================

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "super jump"
command = $D, $U

;===============================================================================
;2/3 Button Combinations
;===============================================================================

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "counter"
command = a+b
time = 1

[Command]
name = "throw1"
command = x+y
time = 1
[Command]
name = "throw1"
command = y+z
time = 1
[Command]
name = "throw1"
command = x+z
time = 1

[Command]
name = "throw2"
command = a+b
time = 1
[Command]
name = "throw2"
command = b+c
time = 1
[Command]
name = "throw2"
command = a+c
time = 1

;===============================================================================
;Dir + Buttons
;===============================================================================

[Command]
name = "forward_a"
command = /$F,a
time = 1
[Command]
name = "forward_b"
command = /$F,b
time = 1
[Command]
name = "forward_c"
command = /$F,c
time = 1

[Command]
name = "forward_x"
command = /$F,x
time = 1
[Command]
name = "forward_y"
command = /$F,y
time = 1
[Command]
name = "forward_z"
command = /$F,z
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

;===============================================================================
;Single Buttons
;===============================================================================

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
name = "start"
command = s
time = 1

;===============================================================================
;Single Dir
;===============================================================================
[Command]
name="fwd"
command=F
time=1
[Command]
name="back"
command=B
time=1
[Command]
name="up"
command=U
time=1
[Command]
name="down"
command=D
time=1

;===============================================================================
;Hold Dir
;===============================================================================

[Command]
name="holdfwd"
command=/$F
time=1
[Command]
name="holdback"
command=/$B
time=1
[Command]
name="holdup"
command=/$U
time=1
[Command]
name="holddown"
command=/$D
time=1

[Command]
name = "Launcher"
command = $U
time = 20

;===============================================================================
;Hold Buttons
;===============================================================================

[Command]
name="holda"
command=/a
time=1
[Command]
name="holdb"
command=/b
time=1
[Command]
name="holdc"
command=/c
time=1
[Command]
name="holdx"
command=/x
time=1
[Command]
name="holdy"
command=/y
time=1
[Command]
name="holdz"
command=/z
time=1
[Command]
name="holdstart"
command=/s
time=1

[Command]
name = "2piece"
command = ~30c
;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

[State -1, AI TRIGGER]
type = Varset
triggerall = RoundState = 2
trigger1 = command = "cpu1"
trigger2 = command = "cpu2"
trigger3 = command = "cpu3"
trigger4 = command = "cpu4"
trigger5 = command = "cpu5"
trigger6 = command = "cpu6"
trigger7 = command = "cpu7"
trigger8 = command = "cpu8"
trigger9 = command = "cpu9"
trigger10 = command = "cpu10"
trigger11 = command = "cpu11"
trigger12 = command = "cpu12"
trigger13 = command = "cpu13"
trigger14 = command = "cpu14"
trigger15 = command = "cpu15"
trigger16 = command = "cpu16"
trigger17 = command = "cpu17"
trigger18 = command = "cpu18"
trigger19 = command = "cpu19"
trigger20 = command = "cpu20"
trigger21 = command = "cpu21"
trigger22 = command = "cpu22"
trigger23 = command = "cpu23"
trigger24 = command = "cpu24"
trigger25 = command = "cpu25"
trigger26 = command = "cpu26"
trigger27 = command = "cpu27"
trigger28 = command = "cpu28"
trigger29 = command = "cpu29"
trigger30 = command = "cpu30"
v = 7
value = 1


;===========================================================================
;===========================================================================

;---------------------------------------------------------------------------
[State -1, UltraDragonSmash]
type = ChangeState
value = 4000
triggerall = var(7)!= 1
triggerall = command = "QCFHCB+2p"
triggerall = stateno!=4000 && power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1)
trigger3 = var(2)
;trigger4 = var(3)
;---------------------------------------------------------------------------
[State -1, HyperSword]
type = ChangeState
value = 3060
triggerall = var(7)!= 1
triggerall = command = "2QCF_k"
triggerall = stateno!= 3060 && power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1)
trigger3 = var(2)
trigger4 = var(3)
;---------------------------------------------------------------------------
[State -1, DragonCombo]
type = Changestate
value = 3050
triggerall = var(7)!= 1
triggerall = command = "2QCB_p"
triggerall = stateno!= 3050 && power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1)
trigger3 = var(2)
trigger4 = var(3)

;---------------------------------------------------------------------------
[State -1, GrandUpper]
type = ChangeState
value = 3000
triggerall = var(7)!= 1
triggerall = command = "2QCF_p"
triggerall = stateno!= 3000 && power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(1)
trigger3 = var(2)
trigger4 = var(3)
;---------------------------------------------------------------------------
[State -1, DragonWing]
type = ChangeState
value = 1050
triggerall = var(7)!= 1
triggerall = command = "HCF_a"||command = "HCF_b"||command = "HCF_c"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
[State -1, LightDragonSmash]
type = ChangeState
value = 1100
triggerall = var(7)!= 1
triggerall = command = "upper_x"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
[State -1, StrongDragonSmash]
type = ChangeState
value = 1110
triggerall = var(7)!= 1
triggerall = command = "upper_y"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
[State -1, FierceDragonSmash]
type = ChangeState
value = 1120
triggerall = var(7)!= 1
triggerall = command = "upper_z"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
[State -1, FierceBareKnuckle]
type = ChangeState
value = 1020
triggerall = var(7)!= 1
triggerall = command = "QCF_z"
;triggerall = !numhelper(1005)&&!numhelper(1015)&&!numhelper(1025)
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
[State -1, LightBareKnuckle]
type = ChangeState
value = 1000
triggerall = var(7)!= 1
triggerall = command = "QCF_x"
trigger1 = var(1)
;
;---------------------------------------------------------------------------
[State -1, StrongBareKnuckle]
type = ChangeState
value = 1010
triggerall = var(7)!= 1
triggerall = command = "QCF_y"
trigger1 = var(1)
;---------------------------------------------------------------------------
[State -1, SwordSwing]
type = ChangeState
value = 1200
triggerall = var(7)!= 1
triggerall = command = "QCB_y"
trigger1 = var(1)
;---------------------------------------------------------------------------
[State -1, BatSwing]
type = ChangeState
value = 1210
triggerall = var(7)!= 1
triggerall = command = "QCB_z"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
[State -1, KnifeStab]
type = ChangeState
value = 1220
triggerall = var(7)!= 1
triggerall = command = "QCB_x"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
[State -1, RunningBlitz]
type = ChangeState
value = 1150
triggerall = var(7)!= 1
triggerall = command = "runspecial"
trigger1 = var(1) ;Use combo condition (above)
;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(7)!= 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(7)!= 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;----------------------------------------------------
[State -1, Standing Parry]
type=hitoverride
trigger1= var(7) != 1
trigger1= roundstate=2 && (statetype=S || stateno=5120)
trigger1= command="fwd" && command!="back" && command!="up" && command!="down"
trigger1= ctrl || (stateno=[700,701]) || stateno=5120
trigger1= var(21):=1
attr=SA,AA,AP
stateno=99
slot=0
time=8
;----------------------------------------------------
[State -1, Crouching Parry]
type=hitoverride
trigger1= var(7) != 1
trigger1= roundstate=2 && statetype!=A
trigger1= command="down" && command!="fwd" && command!="back" && command!="up"
trigger1= ctrl || (stateno=[700,701]) || stateno=5120
trigger1= var(21):=2
attr=C,AA,AP
stateno=98
slot=0
time=8
;-----------------------------------------------------
[State -1, Air Parry]
type=hitoverride
trigger1= var(7) != 1
trigger1= roundstate=2 && statetype=A
trigger1= command="fwd" && command!="back" && command!="up" && command!="down"
trigger1= ctrl || stateno=702
trigger1= var(21):=3
attr=SA,AA,AP
stateno=97
forceair=1
slot=0
time=7
;---------------------------------------------------------------------------
[State -1, Counter- Away]
type = changestate
value = 700
triggerall = var(7) != 1
triggerall = command = "throw1" && statetype != A
trigger1 = (stateno = 150 || stateno = 151||stateno = 152 || stateno = 153) && power >= 1500
trigger2 = command = "holdfwd" && (stateno = 150 || stateno = 151||stateno = 152 || stateno = 153) && power >= 1500
trigger3 = command = "holdback" && (stateno = 150 || stateno = 151||stateno = 152 || stateno = 153) && power >= 1500
;---------------------------------------------------------------------------
[State -1, Counter- Stun]
type = changestate
value = 701
triggerall = var(7) != 1
triggerall = command = "throw2" && statetype != A
trigger1 = (stateno = 150 || stateno = 151||stateno = 152 || stateno = 153) && power >= 1500
trigger2 = command = "holdfwd" && (stateno = 150 || stateno = 151||stateno = 152 || stateno = 153) && power >= 1500
trigger3 = command = "holdback" && (stateno = 150 || stateno = 151||stateno = 152 || stateno = 153) && power >= 1500
;---------------------------------------------------------------------------
[State -1, Guard Breaker]
type = Changestate
value = 710
triggerall = var(7)!= 1  && p2stateno != 720 && power >= 500
trigger1 = ctrl && (command = "y" && command = "b") && statetype != A
;---------------------------------------------------------------------------
[State -1, Back Side Step]
type = ChangeState
value = 718
triggerall = var(7)!= 1
trigger1 = ctrl && (command = "x" && command = "a" && command = "holdback") && statetype != A
;---------------------------------------------------------------------------
[State -1, Forward Side Step]
type = ChangeState
value = 719
triggerall = var(7)!= 1
trigger1 = ctrl && (command = "x" && command = "a" && command = "holdfwd") && statetype != A
;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(7) != 1
triggerall = command = "recovery"
triggerall = statetype = S
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = p2movetype != H
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
trigger3 = ctrl


;===========================================================================
;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, SOR1 Combo]
type = ChangeState
value = 300
triggerall = var(7) != 1
triggerall = (command = "holdfwd" && command = "y")
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 300
trigger2 = movecontact && time>9
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(7)!= 1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact && time>9
;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(7)!= 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
;Stand Fierce Punch
;立ち強パンチ
[State -1, Stand Fierce Punch]
type = ChangeState
value = 220
triggerall = var(7)!= 1
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = anim!= 241
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,211]) && movecontact
trigger3 = (stateno = [230,240]) && movecontact

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(7)!= 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 200) && movecontact
trigger2 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(7)!= 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,211]) && movecontact
;trigger2 = (stateno = [200,211]) && movecontact
trigger3 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
;Standing Fierce Kick
;立ち強キック
[State -1, Standing Fierce Kick]
type = ChangeState
value = 250
triggerall = var(7)!= 1
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,211]) && movecontact
trigger3 = stateno = 230 && movecontact
;trigger3 = (stateno = [230,240]) && movecontact
;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(7)!= 1
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(7)!= 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(7)!= 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 =(stateno = 400) && movecontact
trigger3 = (stateno = 430) && movecontact
;---------------------------------------------------------------------------
;Crouching Fierce Punch
;しゃがみ強パンチ
[State -1, Crouching Fierce Punch]
type = ChangeState
value = 420
triggerall = var(7)!= 1
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 =(stateno = [400,410]) && movecontact
trigger3 = (stateno = [430,440]) && movecontact

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(7)!= 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(7)!= 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
;trigger2 = (stateno = [400,410]) && movecontact
trigger3 = (stateno = 430) && movecontact
;---------------------------------------------------------------------------
;Crouching Fierce Kick
;しゃがみ強キック
[State -1, Crouching Fierce Kick]
type = ChangeState
value = 450
triggerall = var(7)!= 1
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [400,410]) && movecontact
trigger3 = (stateno = [430,440]) && movecontact


;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(7)!= 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = time >= 15
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(7)!= 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 =(stateno = 600) && movecontact
trigger3 = (stateno = 630) && movecontact
trigger4 = stateno = 1350 ;Air blocking
;---------------------------------------------------------------------------
;Jump Fierce Punch
[State -1, Jump Fierce Punch]
type = ChangeState
value = 620
triggerall = var(7)!= 1
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 =(stateno = [600,610]) && movecontact
trigger3 = (stateno = [630,640]) && movecontact
trigger4 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(7)!= 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking


;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(7)!= 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
;trigger2 = (stateno = [400,410]) && movecontact
trigger3 = (stateno = 630) && movecontact
trigger4 = stateno = 1350 ;Air blocking
;---------------------------------------------------------------------------
;Jump Fierce Kick
;空中強キック
[State -1, Jump Fierce Kick]
type = ChangeState
value = 650
triggerall = var(7)!= 1
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = (stateno = [630,640]) && movecontact
trigger4 = stateno = 1350 ;Air blocking
;---------------------------------------------------------------------------
;==============
; Super Jump
;===============
[State -1, Super Jump]
type = ChangeState
value = 55
triggerall = var(7)!= 1
triggerall = command = "super jump"
trigger1 = statetype != A
trigger1 = ctrl = 1

























;=================================================
;------------A.I.---------------------------
;=================================================

;---------------------------------------------------------------------------
;Block
[State -1, guard]
type=changestate
value=120
trigger1= var(7)>=1 && random<500
trigger1= roundstate=2 && (stateno!=[120,155]) && ctrl
trigger1= inguarddist && (prevstateno!=[97,99])
trigger1=!(enemynear,hitdefattr=SCA,AT)
;Taunt
[State -1, taunt]
type=changestate
value=195
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
trigger1= p2dist x>160 && (enemynear,vel y>0) && ctrl && random<100
trigger1= !(enemynear,ctrl) && (enemynear,movetype=H)
;---------------------------------------------------------------------------
;A.I. Parry
;---------------------------------------------------------------------------
[State -1, Standing Parry]
type=hitoverride
triggerall= var(7)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
trigger1= (ctrl && random<200) || ((stateno=[98,99]) && random<333)
trigger1= var(21):=1
attr=SA,AA,AP
stateno=99
slot=0
time=8

[State -1, Crouching Parry]
type=hitoverride
triggerall= var(7)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
trigger1= (ctrl && random<200) || ((stateno=[98,99]) && random<333)
trigger1= var(21):=2
attr=C,AA,AP
stateno=98
slot=0
time=8

[State -1, Air Parry]
type=hitoverride
triggerall= var(7)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
trigger1= (ctrl && random<200) || (stateno=97 && random<333)
trigger1= var(21):=3
attr=SA,AA,AP
stateno=97
forceair=1
slot=0
time=7

[State -1, Reset Parry]
type=hitoverride
trigger1= (!ctrl && (stateno!=[97,99]) && stateno!=5120) || var(20)
trigger2= movetype!=I || (stateno=[100,106]) || (stateno=[120,132])
trigger3= var(7)<= 0 && (command="holdback" || command="holdup")
trigger4= (statetype=S || statetype=C) && var(21)!=1 && var(21)!=2
trigger5= statetype=A && var(21)!=3
slot=0
time=0
;--------------------------------------------------------------------------
[State -1, Guard Breaker]
type=Changestate
value=710
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && p2stateno!= 720  && power>=500
trigger1= ctrl && (p2bodydist x=[0,110])
trigger1= enemynear,movetype=A && (enemy,hitdefattr=SCA,AA) && power >=750 && random<75
trigger2= ctrl && (p2bodydist x=[0,110])
trigger2= enemynear,movetype=A && (enemy,hitdefattr=SCA,AA) && power <750 && random<25
trigger3= ctrl && p2statetype=L && (p2bodydist x=[0,110]) && power >=750 && random<75
;--------------------------------------------------------------------------
[State -1, Side Step]
type=changestate
value=ifelse(random<600,718,719)
trigger1= var(7)>=1 && roundstate=2 && statetype!=A && ctrl && random<50
trigger1= enemynear,movetype=A && p2bodydist x<80
;---------------------------------------------------------------------------
;Throw
[State -1, throw]
type=changestate
value=800
triggerall= var(59)>=1 && roundstate=2 && statetype=S && stateno!=100 && ctrl
triggerall= p2statetype!=A && p2statetype!=A && p2statetype!=L && p2movetype!=H
trigger1= (p2bodydist x=[0,21]) && (p2bodydist y=[-25,25]) && random<250
trigger2= (p2stateno!=[120,155]) && (p2bodydist x=[0,36]) && (p2bodydist y=[-25,25]) && random<500
;===========================================================================
;---------------------------------------------------------------------------
[State -1, run]
type=changestate
value=100
trigger1= var(7)>=1 && statetype=S && roundstate=2 && ctrl && random<200
trigger1= (stateno!=[100,105]) && enemynear,movetype!=A && p2bodydist x>120

[State -1, dash]
type=changestate
value=105
triggerall= var(7)>=1 && numenemy
triggerall= statetype=S && roundstate=2 && ctrl
triggerall= (p2bodydist x=[0,80]) && backedgebodydist>80 && (stateno!=[100,105])
trigger1= enemynear,movetype=A && random<50
trigger2= enemynear,stateno=5120 && random<500
;---------------------------------------------------------------------------
[State -1, Level 3]
type=changestate
value=4000
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && power>=3000
triggerall= !(enemynear,ctrl) && (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x=[0,80]) && (p2dist y=[-50,0]) && (enemynear,vel y=[-7,1]) && (enemynear,vel x>-4)
trigger1= ctrl && enemy,movetype=H && random<333
trigger2= (stateno=220||stateno=250||stateno=301||stateno=420) && movehit && random<50
trigger3= stateno=1000 && anim=1000 && animelemtime(5)>0 && animelemtime(6)<0 && movehit && random<75
trigger4= stateno=1010 && anim=1010 && animelemtime(7)>0 && animelemtime(8)<0 && movehit && random<75
trigger5= stateno=1020 && anim=1020 && animelemtime(9)>0 && animelemtime(10)<0 && movehit && random<75
trigger6= stateno=1050 && anim=1050 && animelemtime(5)>0 && animelemtime(6)<0 && movehit && random<75
trigger7= stateno=1100 && anim=1101 && animelemtime(7)>0 && animelemtime(9)<0 && movehit && random<75
trigger8= stateno=1110 && anim=1111 && animelemtime(12)>0 && animelemtime(14)<0 && movehit && random<75
trigger9= stateno=1120 && anim=1121 && animelemtime(17)>0 && animelemtime(19)<0 && movehit && random<75
trigger10= (stateno=1220||stateno=1200) && movehit && random<75
;--------------------------------------------------------------------------
;Hyper Sword (uses two super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）
[State -1, HyperSword]
type=changestate
value=3060
triggerall = stateno!= 3060
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && power>=2000
triggerall= !(enemynear,ctrl) && (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x=[0,85]) && (p2dist y=[-50,0]) && (enemynear,vel y=[-7,1]) && (enemynear,vel x>-4)
triggerall = stateno!= [1400,1439]
trigger1= ctrl && enemy,movetype=H && random<50
trigger2= (stateno=220||stateno=250||stateno=301||stateno=420) && movehit && random<33
trigger3= stateno=1000 && anim=1000 && animelemtime(5)>0 && animelemtime(6)<0 && movehit && random<50
trigger4= stateno=1010 && anim=1010 && animelemtime(7)>0 && animelemtime(8)<0 && movehit && random<50
trigger5= stateno=1020 && anim=1020 && animelemtime(9)>0 && animelemtime(10)<0 && movehit && random<50
trigger6= stateno=1050 && anim=1050 && animelemtime(5)>0 && animelemtime(6)<0 && movehit && random<50
trigger7= stateno=1100 && anim=1101 && animelemtime(7)>0 && animelemtime(9)<0 && movehit && random<50
trigger8= stateno=1110 && anim=1111 && animelemtime(12)>0 && animelemtime(14)<0 && movehit && random<50
trigger9= stateno=1120 && anim=1121 && animelemtime(17)>0 && animelemtime(19)<0 && movehit && random<50
trigger10= (stateno=1220||stateno=1200) && movehit && random<50
trigger11= stateno=3000 && anim=3000 && animelemtime(20)>0 && animelemtime(21)<0 && movehit && random<50 && power>=1000
trigger12= stateno=3050 && anim=3051 && animelemtime(23)>0 && animelemtime(25)<0 && movehit && random<50 && power>=1000
;---------------------------------------------------------------------------
;Grand Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）
[State -1, GrandUpper]
type=changestate
value=3000
triggerall = stateno!= 3000
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && power>=1000
triggerall= !(enemynear,ctrl) && (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x=[0,65]) && (p2dist y=[-50,0]) && (enemynear,vel y=[-7,1]) && (enemynear,vel x>-4)
triggerall = stateno!= [1400,1439]
trigger1= ctrl && enemy,movetype=H && random<50
trigger2= (stateno=220||stateno=250||stateno=301||stateno=420) && movehit && random<33
trigger3= stateno=1000 && anim=1000 && animelemtime(5)>0 && animelemtime(6)<0 && movehit && random<50
trigger4= stateno=1010 && anim=1010 && animelemtime(7)>0 && animelemtime(8)<0 && movehit && random<50
trigger5= stateno=1020 && anim=1020 && animelemtime(9)>0 && animelemtime(10)<0 && movehit && random<50
trigger6= stateno=1050 && anim=1050 && animelemtime(5)>0 && animelemtime(6)<0 && movehit && random<50
trigger7= stateno=1100 && anim=1101 && animelemtime(7)>0 && animelemtime(9)<0 && movehit && random<50
trigger8= stateno=1110 && anim=1111 && animelemtime(12)>0 && animelemtime(14)<0 && movehit && random<50
trigger9= stateno=1120 && anim=1121 && animelemtime(17)>0 && animelemtime(19)<0 && movehit && random<50
trigger10= (stateno=1220||stateno=1200) && movehit && random<50
trigger11= stateno=3050 && anim=3051 && animelemtime(23)>0 && animelemtime(25)<0 && movehit && random<50 && power>=1000
;---------------------------------------------------------------------------
;Super Combo (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）
[State -1, SuperCombo]
type=ChangeState
value=3050
triggerall = stateno!= 3050
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && power>=1000
triggerall= !(enemynear,ctrl) && (p2stateno!=[120,155]) && (p2statetype!=L) && (p2statetype!=A)
triggerall= (p2bodydist x=[0,55]) && (p2dist y=[-50,0]) && (enemynear,vel y=[-7,1]) && (enemynear,vel x>-4)
;triggerall = stateno!= [1400,1439]
trigger1= ctrl && enemy,movetype=H && random<50
trigger2= (stateno=220||stateno=250||stateno=301||stateno=420) && movehit && random<33
trigger3= stateno=1000 && anim=1000 && animelemtime(5)>0 && animelemtime(6)<0 && movehit && random<50
trigger4= stateno=1010 && anim=1010 && animelemtime(7)>0 && animelemtime(8)<0 && movehit && random<50
trigger5= stateno=1020 && anim=1020 && animelemtime(9)>0 && animelemtime(10)<0 && movehit && random<50
trigger6= stateno=1050 && anim=1050 && animelemtime(5)>0 && animelemtime(6)<0 && movehit && random<50
trigger7= stateno=1100 && anim=1101 && animelemtime(7)>0 && animelemtime(9)<0 && movehit && random<50
trigger8= stateno=1110 && anim=1111 && animelemtime(12)>0 && animelemtime(14)<0 && movehit && random<50
trigger9= stateno=1120 && anim=1121 && animelemtime(17)>0 && animelemtime(19)<0 && movehit && random<50
trigger10= (stateno=1220||stateno=1200) && movehit && random<50
trigger11= stateno=3000 && anim=3000 && animelemtime(20)>0 && animelemtime(21)<0 && movehit && random<50 && power>=1000
;------------------------------------------------------------------------
[State -1, BareKnuckle]
type = ChangeState
value = 1000
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x>0) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1= ctrl && p2bodydist x<30 && random<30
trigger2= (stateno=220||stateno=301) && movehit && p2bodydist x<30 && random<50
trigger3= (stateno=[250,255]) && movehit && p2bodydist x<30 && random<50
trigger4= (stateno=[240,245]) && movehit && p2bodydist x<30 && random<15
trigger5= ctrl && p2bodydist x<100 && p2dist y<-120 && random<250
trigger6= ctrl && p2bodydist x<30 && p2movetype=H && random<75
;------------------------------------------------------------------------
[State -1, BareKnuckle]
type = ChangeState
value = 1010
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x>0) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1= ctrl && p2bodydist x<50 && random<20
trigger2= (stateno=220||stateno=301) && movehit && p2bodydist x<30 && random<50
trigger3= (stateno=[250,255]) && movehit && p2bodydist x<30 && random<50
trigger4= (stateno=[240,245]) && movehit && p2bodydist x<30 && random<15
trigger5= ctrl && p2bodydist x<100 && p2dist y<-120 && random<250
trigger6= ctrl && p2bodydist x<50 && p2movetype=H && random<75
;------------------------------------------------------------------------
[State -1, BareKnuckle]
type = ChangeState
value = 1020
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x>0) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1= ctrl && p2bodydist x<80 && random<15
trigger2= (stateno=220||stateno=301) && movehit && p2bodydist x<30 && random<50
trigger3= (stateno=[250,255]) && movehit && p2bodydist x<30 && random<50
trigger4= (stateno=[240,245]) && movehit && p2bodydist x<30 && random<15
trigger5= ctrl && p2bodydist x<100 && p2dist y<-120 && random<250
trigger6= ctrl && p2bodydist x<80 && p2movetype=H && random<75
;------------------------------------------------------------------------
[State -1, DragonWing]
type = ChangeState
value = 1050
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x>0) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1= ctrl && p2bodydist x<80 && random<75
trigger2= (stateno=220||stateno=301) && movehit && p2bodydist x<30 && random<33
trigger3= (stateno=[250,255]) && movehit && p2bodydist x<30 && random<33
trigger4= (stateno=[240,245]) && movehit && p2bodydist x<30 && random<15
trigger5= ctrl && p2bodydist x<100 && p2dist y<-120 && random<250
trigger6= (stateno=[650,655]) && movehit && p2bodydist x<120 && random<200
trigger7 = ctrl && p2bodydist X = [120,320]
trigger7 = enemynear,numhelper > 0
trigger7 = random <= var(7)*100
trigger8 = ctrl && p2bodydist X = [120,320]
trigger8 = enemynear,numproj > 0
trigger8 = random <= var(7)*100
;----------------------------------------------------------------------------
[State -1, RunningBlitz]
type=changestate
value=1150
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
trigger1= ctrl && p2dist x>160 && random<50
;===========================================================================
[State -1, Knife]
type=changestate
value=1220
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,55]) && (p2bodydist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && random<15
trigger2= (stateno=220||stateno=301) && movehit && p2bodydist x<30 && random<40
trigger3= (stateno=[250,255]) && movehit && p2bodydist x<30 && random<40
trigger4= (stateno=[240,245]) && movehit && p2bodydist x<30 && random<10
;===========================================================================
[State -1, Bat]
type=changestate
value=1210
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,82]) && (p2bodydist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && random<20
trigger2= (stateno=220||stateno=301) && movehit && p2bodydist x<30 && random<45
trigger3= (stateno=[250,255]) && movehit && p2bodydist x<30 && random<45
trigger4= (stateno=[240,245]) && movehit && p2bodydist x<30 && random<20
;===========================================================================
[State -1, Sword]
type=changestate
value=1200
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,86]) && (p2bodydist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && random<20
trigger2= (stateno=220||stateno=301) && movehit && p2bodydist x<30 && random<45
trigger3= (stateno=[250,255]) && movehit && p2bodydist x<30 && random<45
trigger4= (stateno=[240,245]) && movehit && p2bodydist x<30 && random<15
;===========================================================================
[State -1, LightDragonSmash]
type=changestate
value=1100
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,40]) && (p2bodydist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && p2movetype=H && random<50
trigger2= (stateno=220||stateno=301) && movehit && p2bodydist x<30 && random<50
trigger3= (stateno=[250,255]) && movehit && p2bodydist x<30 && random<50
trigger4= (stateno=[240,245]) && movehit && p2bodydist x<30 && random<20
trigger5= ctrl && random<15
;===========================================================================
[State -1, StrongDragonSmash]
type=changestate
value=1110
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,50]) && (p2bodydist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && p2movetype=H && random<50
trigger2= (stateno=220||stateno=301) && movehit && p2bodydist x<30 && random<50
trigger3= (stateno=[250,255]) && movehit && p2bodydist x<30 && random<50
trigger4= (stateno=[240,245]) && movehit && p2bodydist x<30 && random<20
trigger5= ctrl && random<15
;===========================================================================
[State -1, FierceDragonSmash]
type=changestate
value=1120
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,60]) && (p2bodydist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && p2movetype=H && random<50
trigger2= (stateno=220||stateno=301) && movehit && p2bodydist x<30 && random<50
trigger3= (stateno=[250,255]) && movehit && p2bodydist x<30 && random<50
trigger4= (stateno=[240,245]) && movehit && p2bodydist x<30 && random<20
trigger5= ctrl && random<15

;===========================================================================
[State -1, SLP]
type=changestate
value=200
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,46]) && (p2bodydist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && random<300
trigger2= ctrl && p2movetype=H && random<333
trigger3= stateno=200 && movehit && time>9 && p2bodydist x<30 && random<500
;===========================================================================
[State -1, SOR1Combo]
type=changestate
value=300
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,46]) && (p2bodydist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && random<150
trigger2= ctrl && p2movetype=H && random<45
trigger3= stateno=300 && movehit && time>9 && p2bodydist x<30 && random<500
;---------------------------------------------------------------------------
[State -1, SMP]
type=changestate
value=210
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,53]) && (p2bodydist y=[-50,50]) && (p2statetype=S)
trigger1= ctrl && random<40
trigger2= (stateno=[200,205]) && movehit && random<500
trigger3= (stateno=[230,235]) && movehit && random<500
;---------------------------------------------------------------------------
[State -1, SHP]
type=changestate
value=220
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,70]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && random<20
trigger2= (stateno=[210,215]) && movehit && random<33
trigger3= (stateno=[240,245]) && movehit && random<100
trigger3= anim!=241
trigger4= ctrl && p2movetype=H && random<50

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, SLK]
type=changestate
value=230
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,59]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=A)
trigger1= ctrl && random<75
trigger2= ctrl && p2movetype=H && random<100

[State -1, SMK2]
type=changestate
value=240
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,50]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=C)
trigger1= ctrl && random<33
trigger2= (stateno=[210,215]) && movehit && random<500
trigger3= (stateno=[200,205]) && movehit && random<10
trigger4= (stateno=[230,235]) && movehit && random<100


[State -1, SHK]
type=changestate
value=250
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,59]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=C)
trigger1= ctrl && random<20
trigger4= (stateno=[210,215]) && movehit && random<100
trigger5= ctrl && p2movetype=H && random<100

[State -1, CLP]
type=changestate
value=400
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,40]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=A)
trigger1= ctrl && random<70

[State -1, CMP]
type=changestate
value=410
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,45]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=A)
trigger1= ctrl && random<33
trigger2= (stateno=[400,405]) && movehit && random<500
trigger3= (stateno=[430,435]) && movehit && random<500

[State -1, CHP]
type=changestate
value=420
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,33]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && random<33
trigger2= (stateno=[400,405]) && movehit && random<75
trigger3= (stateno=[430,435]) && movehit && random<75
trigger4= (stateno=[410,415]) && movehit && random<500
trigger5= (stateno=[440,445]) && movehit && random<500

[State -1, CLK]
type=changestate
value=430
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,54]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype=S)
trigger1= ctrl && random<70

[State -1, CMK]
type=changestate
value=440
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,62]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype=S)
trigger1= ctrl && random<33
trigger2= (stateno=[400,405]) && movehit && random<500
trigger3= (stateno=[430,435]) && movehit && random<500

[State -1, CHK]
type=changestate
value=450
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,56]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype=S)
trigger1= ctrl && random<100
trigger2= (stateno=[400,405]) && movehit && random<75
trigger3= (stateno=[430,435]) && movehit && random<75
trigger4= (stateno=[410,415]) && movehit && random<500
trigger5= (stateno=[440,445]) && movehit && random<500

[State -1, ALP]
type=changestate
value=600
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,84]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && random<50
trigger2= ctrl && p2movetype=H && random<333

[State -1, AMP]
type=changestate
value=610
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,78]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && random<33
trigger2= (stateno=[600,605]) && movehit && random<500
trigger3= (stateno=[630,635]) && movehit && random<500

[State -1, AHP]
type=changestate
value=620
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,110]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && random<150
trigger2= (stateno=[610,615]) && movehit && random<500
trigger3= (stateno=[640,645]) && movehit && random<500

[State -1, ALK]
type=changestate
value=630
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,70]) && (p2bodydist y=[-50,75]) && (p2statetype!=L)
trigger1= ctrl && random<50


[State -1, AMK]
type=changestate
value=640
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[-50,10]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && random<75
trigger2= (stateno=[600,605]) && movehit && random<500
trigger3= (stateno=[630,635]) && movehit && random<500

[State -1, AHK]
type=changestate
value=650
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[-30,130]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && random<50
trigger2= (stateno=[610,615]) && movehit && random<500
trigger3= (stateno=[640,645]) && movehit && random<500



