; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
; 
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
; 

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[command]
name = "dd"
command = D,D
time = 20

[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
[command]
name = "Web Bomb"
command = DF,x
time = 100

[command]
name = "Web Bomb"
command = DB,x
time = 100

[command]
name = "Quick Time"
command = DF,y
time = 100

[command]
name = "Quick time"
command = DB,y
time = 100

[command]
name = "Web Freeze"
command = DF,z
time = 100

[command]
name = "Web Freeze"
command = DB,z
time = 100

command.time = 100

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
[command]
name = "Uppercut"
command = D,x
time = 25

[command]
name = "Uppercut 2"
command = D,y
time = 25

command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
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
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
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
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

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

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Run Fwd]
type = ChangeState
value =  70
triggerall = roundstate = 2
trigger1 = cond(AILevel,(p2bodydist x >= gamewidth/2) && (random <= ((22*AiLevel)+8)) && (prevstateno != 962),(command = "FF")) && (statetype = A) && (ctrl)
;---------------------------------------------------------------------------
; Run Back Air
[State -1, Run Back]
type = ChangeState
value = 80
triggerall = roundstate = 2
trigger1 = Cond(AILevel,((EnemyNear,Facing != Facing) && (P2movetype = A) && ((Inguarddist) || (EnemyNear, NumProj > 0)) && (random <= ((62*AILevel)+random%10))),(command = "BB")) && (statetype = A) && (ctrl)
;---------------------------------------------------------------------------
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = roundstate = 2
trigger1 = cond(AILevel,(p2bodydist x >= gamewidth/2) && (random <= ((22*AiLevel)+8)) && (prevstateno != 962),(command = "FF")) && (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = roundstate = 2
trigger1 = Cond(AILevel,((EnemyNear,Facing != Facing) && (P2movetype = A) && ((Inguarddist) || (EnemyNear, NumProj > 0)) && (random <= ((62*AILevel)+random%10))),(command = "BB")) && (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = roundstate = 2
trigger1 = Cond(AILevel,((EnemyNear,Facing != Facing) && (P2movetype = A) && ((Inguarddist) || (EnemyNear, NumProj > 0)) && (random <= ((62*AILevel)+random%10))),(command = "s")) && (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
[State -1, Hyper - Fatal Spider]
type = Changestate
value = 4000
triggerall = roundstate = 2
triggerall = Teammode != Simul
triggerall = enemy,Teammode != Simul
trigger1 = Cond(AILevel, enemy,statetype != L && (P2bodyDist X = [0,70]) && (random <= 100) && (p2movetype != A) ,(command = "c") && (command = "z")) && (statetype = S) && power>=1000 && (ctrl)
;---------------------------------------------------------------------------
[State -1, Back Suit]
type = Changestate
value = 430
triggerall = roundstate = 2
trigger1 = fvar(11)= 0 && life <= (lifemax*75)/100 && Cond(AILevel, p2bodydist x >= 80 && (random <= 70) && (p2movetype != A), (command = "hold_x") && (command = "hold_y")) && (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
[State -1, Back Suit Speed] ;Speed transform
type = null
value = 432
triggerall = roundstate = 2
trigger1 = fvar(11)= 0 && life <= (lifemax*75)/100 && Cond(AILevel, p2bodydist x >= 80 && (random <= 70) && (p2movetype != A), (command = "hold_x") && (command = "hold_y")) && (statetype = C) && (ctrl)
;---------------------------------------------------------------------------
[State -1, Web Down Attack]
type = Changestate
value = 530
triggerall = roundstate = 2
trigger1 = Cond(AILevel, enemy,statetype != L && (P2bodyDist X = [-100,100]) && (random <= 80) && (p2movetype != A) ,(command = "y") && (command = "z")) && (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
[State -1, Web Down Attack Air]
type = Changestate
value = 532
triggerall = roundstate = 2
trigger1 = Cond(AILevel, enemy,statetype != L && (P2bodyDist X = [-100,100]) && (random <= 80) && (p2movetype != A) ,(command = "y") && (command = "z")) && (statetype = A) && (ctrl)
trigger2 = stateno = 600 && (command = "y" && command = "z") && statetype = A && (ctrl)
;---------------------------------------------------------------------------
[State -1, Target]
type = Changestate
value = 700
triggerall = roundstate = 2
trigger1 = Cond(AILevel, enemy,statetype != L && (P2bodyDist X = [0,70]) && (random <= 200) && (p2movetype != A) ,(command = "b") && (command = "y")) && (statetype = S) && (ctrl)
;----------------------------------------------------------------------------
[State -1, Barrer]
type = Changestate
value = 110
triggerall = roundstate = 2
trigger1 = Cond(AILevel, enemy,statetype != L && (P2bodyDist X = [0,70]) && (random <= 200) && (p2movetype != A) ,command = "dd") && (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
[State -1, Combo 1]
type = ChangeState
value = 200
triggerall = roundstate = 2
trigger1 = Cond(AiLevel, enemy,statetype != L && ((P2bodyDist X = [0,70]) && (random <= ((62*AiLevel)+8))),((command = "x") && (command != "holddown"))) && (statetype = S)  && (ctrl)
trigger1 = (command = "x") && (command != "holddown") && (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
[State -1, Combo 2]
type = Changestate
value = 210
triggerall = roundstate = 2
trigger1 = Cond(AiLevel, enemy,statetype != L && ((P2bodyDist X = [0,70]) && (random <= ((62*AiLevel)+8))),((command = "y") && (command != "holddown"))) && (statetype = S) && (ctrl)
trigger1 = (command = "y") && (command != "holddown") && (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
[State -1, Combo 3]
type = Changestate
triggerall = roundstate = 2
value = 220
trigger1 = Cond(AiLevel, enemy,statetype != L && ((p2bodyDist  x = [0,70]) && (random <= ((62*AiLevel)+8))),((command = "z") && (command != "holddown"))) && (statetype = S) && (ctrl)
trigger1 = (command = "z") && (command != "holddown") && (statetype = S) && (ctrl)
;----------------------------------------------------------------------------
[State -1, Combo 1 - C]
type = ChangeState
value = 500
triggerall = roundstate = 2
trigger1 = Cond(AiLevel, enemy,statetype != L && ((P2bodyDist X = [0,40]) && (random <= ((22*AiLevel)+8))),((command = "x"))) && (statetype != A) && (ctrl)
trigger1 = (command = "x") && (statetype = S) && (ctrl)
;----------------------------------------------------------------------------
[State -1, Combo 2 - C]
type = Changestate
value = 520
triggerall = roundstate = 2
trigger1 = Cond(AiLevel, enemy,statetype != L && ((P2bodyDist X = [0,40]) && (random <= ((22*AiLevel)+8))),((command = "y"))) && (statetype != A) && (ctrl)
trigger1 = (command = "y") && (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
[State -1, Combo 3 - C]
type = Changestate
value = 510
triggerall = roundstate = 2
trigger1 = Cond(AiLevel, enemy,statetype != L && ((P2bodyDist X = [0,40]) && (random <= ((22*AiLevel)+8))),((command = "z"))) && (statetype != A) && (ctrl)
trigger1 = (command = "z") && (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
[State -1, Combo aereo]
type = Changestate
value = 600
triggerall = roundstate = 2
trigger1 = Cond(Ailevel,((P2bodyDist X = [0,80]) && (random <= (63*Ailevel))),(command = "x")) && (statetype = A) && (ctrl)
trigger2 = Cond(Ailevel,((P2bodyDist X = [0,80]) && (random <= (63*Ailevel))),(command = "y")) && (statetype = A) && (ctrl)
trigger3 = Cond(Ailevel,((P2bodyDist X = [0,80]) && (random <= (63*Ailevel))),(command = "z")) && (statetype = A) && (ctrl)
;---------------------------------------------------------------------------
[State -1, Web Swing]
type = ChangeState
value = 230
triggerall = roundstate = 2
trigger1 = cond(AILevel,(p2bodydist x >= gamewidth/2) && (random <= ((32*AiLevel)+Cond(var(11),8,5))) && (prevstateno != 600),(command = "a")) && (statetype = S) && (ctrl)
trigger1 = (command = "a") && (statetype = S) && (ctrl)
trigger2 = Cond(AILevel,((EnemyNear,Facing != Facing) && (p2movetype = A) && ((Inguarddist) || (enemyNear, NumProj > 0)) && (random <= ((22*AILevel)+random%10))),(command = "a")) && (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
[State -1, Web Shield]
type = ChangeState
value = 240
triggerall = roundstate = 2
trigger1 = Cond(AiLevel, enemy,statetype != L && (((p2bodydist x = [30,150]) || p2bodydist x >= 70 || p2bodydist x >= 70 || p2bodydist x >= 90) && (random <= ((32*AiLevel)+8))),((command = "b"))) && (statetype = S) && power>=500 && (ctrl)
trigger1 = (command = "b") && (statetype = S) && (ctrl)
;--------------------------------------------------------------------------.
[State -1, Web Shield Air]
type = ChangeState
value = 630
triggerall = roundstate = 2
trigger1 = Cond(AiLevel, enemy,statetype != L && (((p2bodydist x = [30,150]) || p2bodydist x >= 70 || p2bodydist x >= 70 || p2bodydist x >= 90) && (random <= ((32*AiLevel)+8))),((command = "b"))) && (statetype = A) && power>=500 && (ctrl)
trigger1 = (command = "b") && (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
[State -1, Spider-Sense]
type = Changestate
value = 2003
trigger1 = Cond(AiLevel, enemy,statetype != L && ((p2BodyDist x = [-30,150]) && (p2bodydist y <= 100) && (random <= ((12*AiLevel)+8))),((command = "c") && (command != "holddown"))) && (statetype = S) && (ctrl) && fvar(1)=0
trigger1 = (command = "c") && (command != "holddown") && (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
[State -1, Spider Sense Evasion]
type = Changestate
value = 2002
triggerall = roundstate = 2
trigger1 = Cond(numhelper(2000),helper(2000),stateno = 2001,0) && Cond(AiLevel,(random <= ((15*AiLevel)+8)), command = "c" || command = "hold_c") && roundstate=2 && cond(numhelper(2000),helper(2000),stateno = 2001,0) && stateno != 2002 && fvar(1) && cond(stateno = 2002,0,stateno !=2002)  && Cond(prevstateno = 2002 ,time%400=0,1)
trigger1 = (command = "c") && (statetype = S) && (ctrl)

[State -1, Spider Sense Evasion]
type = Changestate
value = 2005
triggerall = roundstate = 2
trigger1 = Cond(numhelper(2000),helper(2000),stateno = 2001,0) && Cond(AiLevel,(random <= ((15*AiLevel)+8)), command = "c" || command = "hold_c") && roundstate=2 && cond(numhelper(2000),helper(2000),stateno = 2006,0) && stateno != 2002 && fvar(1) && cond(stateno = 2005,0,stateno !=2005)
trigger1 = (command = "c") && (statetype = S) && (ctrl)

[State -1, Spider Sense Evasion]
type = Changestate
value = 2005
triggerall = roundstate = 2
trigger1 = Cond(numhelper(2000),helper(2000),stateno = 2006,0) && enemy,numproj || enemy,numhelper && Cond(AiLevel,(random <= ((15*AiLevel)+8)), command = "c" || command = "hold_c") && roundstate=2 && cond(numhelper(2000),helper(2000),stateno = 2006,0) && stateno != 2002 && fvar(1) && cond(stateno = 2005,0,stateno !=2005)
trigger1 = (command = "c") && (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
[State -1, Web Bomb]
type = ChangeState
value = 400
triggerall = roundstate = 2
trigger1 = Cond(AiLevel, enemy,statetype != L && (((p2bodydist x = [-50,10])) && (random <= ((22*AiLevel)+8))),((command = "Web Bomb"))) && (statetype != A) && power>=500 && (ctrl)
trigger2 = stateno = 500 && command = "Web Bomb"
;----------------------------------------------------------------------------
[State -1, Quick Time - Spidey Floor Web]
type = ChangeState
value = 250
triggerall = roundstate = 2
trigger1 = Cond(AiLevel, enemy,statetype != L && (((p2bodydist x = [0,70])) && (random <= ((32*AiLevel)+8))),((command = "Quick time"))) && (statetype != A ) && power>=500 && (ctrl)
trigger2 = stateno = 520 && command = "Quick time" && pos y >=0
;---------------------------------------------------------------------------
[State -1, Web Freeze]
type = ChangeState
value = 410
triggerall = roundstate = 2
trigger1 = Cond(AiLevel, enemy,statetype != L && (((p2bodydist x = [-150,120])) && (random <= ((10*AiLevel)+8))),((command = "Web Freeze"))) && (statetype != A) && power>=500 && (ctrl)
trigger2 = stateno = 510 && command = "Web Freeze"
;---------------------------------------------------------------------------
[State -1, Web Cannon]
type = ChangeState
value = 420
triggerall = roundstate = 2
trigger1 = Cond(AiLevel, enemy,statetype != L && (p2bodydist x >= gamewidth/5 && (random <= ((42*AiLevel)+8))),((command = "a"))) && (statetype = C) && power>=100 && (ctrl)
trigger1 = (command = "a") && (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
[State -1, Web Ganch]
type = ChangeState
value = 450
triggerall = roundstate = 2
trigger1 = Cond(AiLevel, enemy,statetype != L && (((p2bodydist x = [0,100])) && (random <= ((42*AiLevel)+8))),((command = "b"))) && (statetype = C) && power>=100 && (ctrl)
trigger1 = (command = "b") && (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
[State -1, Spider Fatal]
type = ChangeState
value = 470
triggerall = roundstate = 2
triggerall = Teammode != Simul
triggerall = enemy,Teammode != Simul
trigger1 = Cond(AiLevel, enemy,statetype != L && (((p2bodydist x = [0,70])) && (random <= ((62*AiLevel)+8))),((command = "c"))) && (statetype = C) && power>=500 && (ctrl)
trigger1 = (command = "c") && (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Web Swing Air]
type = ChangeState
value = 232
triggerall = roundstate = 2
trigger1 = cond(AILevel,(p2bodydist x = [-100,100]) && (random <= ((62*AiLevel)+8)) && (prevstateno != 600),(command = "a")) && (statetype = A) && (ctrl)
;------------------------------------------------------------------
[State -1, AI Jump]
type = ChangeState
triggerall = roundstate = 2
trigger1 = (AILevel) && (p2movetype != A) && (statetype != A) && (ctrl) && (p2bodydist x >= 50) && (random <= 70)
value = 41

[State -1, AI Run];Walk
type = ChangeState
triggerall = roundstate = 2
trigger1 = (AILevel) && (p2movetype != A) && (statetype != A) && (ctrl) && (p2bodydist x >= 50) && (random <= 500)
value = 21

[State -1, AI Dash]
type = null
triggerall = roundstate = 2
trigger1 = (AILevel) && (p2movetype != A) && (statetype != A) && (ctrl) && (p2bodydist x >= 50) && (random <= 300)
value = 100

[State -1, AI Guard Stand]
type = ChangeState
triggerall = roundstate = 2
triggerall = (AILevel) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing)
trigger1 = (P2StateType != C) && (P2MoveType = A) && ((InGuardDist) || (EnemyNear, NumProj > 0))
value = 130

[State -1, AI Guard Crouch]
type = ChangeState
triggerall = roundstate = 2
triggerall = (AILevel) && (StateType != A) && (Ctrl) && (EnemyNear, Facing != Facing)
trigger1 = (P2StateType = C) && (P2MoveType = A) && ((InGuardDist) || (EnemyNear, NumProj > 0))
value = 131

[State -1, AI Guard Air]
type = ChangeState
triggerall = roundstate = 2
triggerall = (AILevel) && (StateType = A) && (Ctrl) && (EnemyNear, Facing != Facing)
trigger1 = (P2MoveType = A) && ((InGuardDist) || (EnemyNear, NumProj > 0))
value = 132

[State -1, AI Recover Near Ground]
type = ChangeState
triggerall = roundstate = 2
trigger1 =  (AILevel) && (Vel Y > 0) && (Pos Y >= Const(movement.air.gethit.groundrecover.ground.threshold)) && (alive) && (CanRecover) && (stateno = 5050)
value = 5200

[State -1, AI Recover Mid Air]
type = ChangeState
triggerall = roundstate = 2
trigger1 = (AILevel) && (Vel Y > Const(movement.air.gethit.airrecover.threshold)) && (alive) && (CanRecover) && (stateno = 5050)
value = 5210
