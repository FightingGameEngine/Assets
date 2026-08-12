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
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
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
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below.
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
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
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------


[Command]
name = "Spirit Bomb"
command = ~D,DF,F,x+a

[Command]
name = "Kamehameha EX"
command = ~D, DF, F, x+y

[Command]
name = "Kamehameha"
command = ~D, DF, F, x

[Command]
name = "Dragon Fist"
command = ~D, DF, F, y

[Command]
name = "Grab"
command = ~D, DF, F, a

[Command]
name = "Dragon Fist Upper"
command = ~D, DB, B, x

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
name = "Throw";Required (do not remove)
command = x+a
time = 1
[Command]
name = "Counter"
command = x+y
[Command]
name = "Super Jump"
command = D,$U
[Command]
name = "recovery";Required (do not remove)
command = x
time = 1
[Command]
name = "recovery";Required (do not remove)
command = a
time = 1
[Command]
name = "recovery";Required (do not remove)
command = y
time = 1
[Command]
name = "recovery";Required (do not remove)
command = b
time = 1


;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
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
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "hold_b";Required (do not remove)
command = /$b
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
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

;AI

 [State -1, AI Activation]
   type = varset
   triggerall = AILevel > 2
   triggerall = (roundstate = 2) && (var(59) = 0)
   trigger1 = Random <= ((AILevel-2)*100)
   v = 59
   value = 1

 [State -1, AI Deactivation]
   type = varset
   triggerall = AIlevel < 7
   triggerall = var(59) = 1
   trigger1 = Random > ((AILevel-2)*100)
   trigger2 = roundstate != 2
   v = 59
   value = 0

 [State -1, AI Guarding, Easy/Medium AI]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = AILevel <=5
   triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
   trigger1 = (p2bodydist x <= 250) && (random = [200,899]) && (vel x < 0)
   trigger2 = (p2bodydist x <= 250) && (random = [800,899]) && (vel x > 0)
   trigger3 = (p2bodydist x <= 250) && (random = [400,899]) && (vel x = 0)
   trigger4 = (anim = 21)
   trigger5 = (prevstateno > 5000) && (random < 200)
   value = 130
   [State -1, AI Guarding, Easy/Medium AI]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = AILevel <=5
   triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
   trigger1 = (p2bodydist x <= 250) && (random = [500,899])
   trigger2 = (prevstateno > 5000) && (random < 200)
   value = 131
   [State -1, AI Guarding, Easy/Medium AI]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = AILevel <=5
   triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
   trigger1 = (p2bodydist x <= 250) && (random = [700,899])
   trigger2 = (anim = 43) || (anim = 46)
   trigger3 = (prevstateno > 5000) && (random < 200)
   value = 132
   [State -1, AI Guarding, Hard AI]
   type = ChangeState
   triggerall = (var(59) != 0) && Numenemy && (stateno != [120,155])
   triggerall = AILevel > 5
   triggerall = Random <= (AILevel * 10)
   triggerall =!(enemynear,hitdefattr=SCA,AT)
   triggerall = inguarddist
   trigger1 = ctrl
   value = 120

   [State -1, AI]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && ((statetype = S))                      
   trigger1 = p2bodydist X < 15                                
   trigger1 = random <= 200                                     
   value = 205 

  [State -1, AI]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && ((statetype = S))                      
   trigger1 = p2bodydist X < 15                                
   trigger1 = random <= 200         
   trigger1 = power > 999                            
   value = 900 

[State -1, AI]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && ((statetype = S))                      
   trigger1 = p2bodydist X <= 25  && p2bodydist X > 15                              
   trigger1 = random <= 200                                     
   value = 200 

[State -1, AI]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && ((statetype = S))                      
   trigger1 = p2bodydist X < 15                                
   trigger1 = random <= 200                                     
   value = 235

 [State -1, AI]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && ((statetype = S))                      
   trigger1 = p2bodydist X <= 28 && p2bodydist X > 15                               
   trigger1 = random <= 200                                     
   value = 230   

  [State -1, AI Combo]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && (p2movetype = H)                      ;opponent has been hit
   triggerall = AILevel >= 4                                    ;difficulty level is 4 or higher*
   trigger1 = (p2bodydist X <= 25)                              ;close to opponent
   trigger1 = stateno = [230,235]                                  ;falling from attack
   trigger1 = random <= 450                                     ;This will happen 75%
   value = 1000

[State -1, AI Combo]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && (p2movetype = H)                      ;opponent has been hit
   triggerall = AILevel >= 4                                    ;difficulty level is 4 or higher*
   trigger1 = (p2bodydist X <= 25)                              ;close to opponent
   trigger1 = stateno = [200,235]                                  ;falling from attack
   trigger1 = random <= 950                                     ;This will happen 75%
   value = 300

[State -1, AI Combo]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && (p2movetype = H)                      ;opponent has been hit
   triggerall = AILevel >= 4                                    ;difficulty level is 4 or higher*
   trigger1 = (p2bodydist X <= 25 && p2bodydist X > 15)                              ;close to opponent
   trigger1 = stateno = [200,205]                                  ;falling from attack
   trigger1 = random <= 750                                     ;This will happen 75%
   value = 230

[State -1, AI Combo]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && (p2movetype = H)                      ;opponent has been hit
   triggerall = AILevel >= 4                                    ;difficulty level is 4 or higher*
   trigger1 = (p2bodydist X <= 25 && p2bodydist X > 15)                              ;close to opponent
   trigger1 = stateno = 205                                  ;falling from attack
   trigger1 = random <= 650                                     ;This will happen 75%
   value = 205

[State -1, AI Combo]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && (p2movetype = H)                      ;opponent has been hit
   triggerall = AILevel >= 4                                    ;difficulty level is 4 or higher*
   trigger1 = (p2bodydist X <= 25 && p2bodydist X > 15)                              ;close to opponent
   trigger1 = stateno = 235                                  ;falling from attack
   trigger1 = random <= 650                                     ;This will happen 75%
   value = 235

[State -1, AI Combo]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && (p2movetype = H)                      ;opponent has been hit
   triggerall = AILevel >= 4                                    ;difficulty level is 4 or higher*
   trigger1 = (p2bodydist X <= 25 && p2bodydist X > 15)                              ;close to opponent
   trigger1 = stateno = 430                                  ;falling from attack
   trigger1 = random <= 950                                     ;This will happen 75%
   value = 430

[State -1, AI Combo]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && (p2movetype = H)                      ;opponent has been hit
   triggerall = AILevel >= 4                                    ;difficulty level is 4 or higher*
   trigger1 = (p2bodydist X < 15)                              ;close to opponent
   trigger1 = stateno = [200,205]                                  ;falling from attack
   trigger1 = random <= 750                                     ;This will happen 75%
   value = 235

[State -1, AI Combo]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && (p2movetype = H)                      ;opponent has been hit
   triggerall = AILevel >= 4                                    ;difficulty level is 4 or higher*
   trigger1 = (p2bodydist X <= 25)                              ;close to opponent
   trigger1 = stateno = [200,235]                                  ;falling from attack
   trigger1 = random <= 450                                     ;This will happen 75%
    value = 1000      

[State -1, AI Combo]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && (p2movetype = H)                      ;opponent has been hit
   triggerall = AILevel >= 4                                    ;difficulty level is 4 or higher*
   trigger1 = (p2bodydist X <= 25)                              ;close to opponent
   trigger1 = stateno = 300                                  ;falling from attack
   trigger1 = random <= 150                                     ;This will happen 75%
    value = 1050                                                     

 [State -1, AI]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && (Statetype = S)
   triggerall = AILevel >= 3                                      ;difficulty level is 3 or higher
   triggerall = random = [0,100]                                  ;performed 10% of the time*
   trigger1 = p2bodydist x >= 130                                 ;P2 is futher than 130 distance fomr character
   trigger1 = p2movetype != H                                     ;P2 has not been hit
   trigger1 = statetype != A                                      ;character is not jumping
   value = 1000                 

 [State -1, AI]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && (Statetype = S)
   triggerall = AILevel >= 3                                      ;difficulty level is 3 or higher
   triggerall = random = [0,400] 
   triggerall = enemy,NumHelper = 1                                  ;performed 10% of the time*
   triggerall = p2bodydist x >= 130                                 ;P2 is futher than 130 distance fomr character
   triggerall = p2movetype != H    
triggerall = power > 999                                 ;P2 has not been hit    
trigger1 = stateno = 150 && command = "Counter"
trigger2 = stateno = 151 && command = "Counter"
trigger3 = stateno = 152 && command = "Counter"
trigger4 = stateno = 153 && command = "Counter"
trigger5 = stateno = 154 && command = "Counter"
trigger6 = stateno = 155 && command = "Counter"                                  ;character is not jumping
   value = 1000                                                   ;change to [Statedef 1000] which is throwing a projectile
                                  ;change to [Statedef 1000] which is throwing a projectile

   [State -1, AI]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && (Statetype = S)
   triggerall = AILevel >= 3                                  ;difficulty level is 3 or higher
   trigger1 = random = [0,400]                                ;performed 40% of the time
   trigger1 = p2bodydist x <= 50                              ;P2 is closer than 50 distance
   trigger1 = p2movetype != H                                 ;P2 has not been hit
   trigger1 = statetype != A                                  ;character is not jumping
   trigger1 = (prevstateno = 1000)    ;character was in [Statedef 1000] or [Statedef 1020] (both projectiles)
   value = 1050                                              ;change to [Statedef 1320] which is a shoryuken**

   [State -1, AI]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && (Statetype = S)
   triggerall = AILevel >= 3                                  ;difficulty level is 3 or higher
   trigger1 = random = [0,500]                                ;performed 40% of the time
   trigger1 = p2bodydist x <= 50                              ;P2 is closer than 50 distance
   trigger1 = p2movetype != H                                 ;P2 has not been hit
   trigger1 = statetype != A                                  ;character is not jumping
   trigger1 = p2statetype = A    ;character was in [Statedef 1000] or [Statedef 1020] (both projectiles)
   value = 1050 

[State -1, AI]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && (Statetype = S)
   triggerall = AILevel >= 3                                  ;difficulty level is 3 or higher
   trigger1 = random = [0,400]                                ;performed 40% of the time
   trigger1 = p2bodydist x <= 100                              ;P2 is closer than 50 distance
trigger1 = enemy, vel X > 0
triggerall = enemy,NumHelper = 0 
   trigger1 = p2movetype != H                                 ;P2 has not been hit
   trigger1 = statetype != A                                  ;character is not jumping
   trigger1 = p2statetype != A    ;character was in [Statedef 1000] or [Statedef 1020] (both projectiles)
   value = 1100 

[State -1, AI]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && (Statetype = S)
   triggerall = AILevel >= 3   
   triggerall = power >=1500                               ;difficulty level is 3 or higher
   trigger1 = random = [0,200]                                ;performed 40% of the time
   trigger1 = p2bodydist x <= 100                              ;P2 is closer than 50 distance
trigger1 = enemy, vel X > 0
triggerall = enemy,NumHelper = 0 
   trigger1 = p2movetype != H                                 ;P2 has not been hit
   trigger1 = statetype != A                                  ;character is not jumping
   trigger1 = p2statetype != A    ;character was in [Statedef 1000] or [Statedef 1020] (both projectiles)
   value = 2000 

[State -1, AI]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && (Statetype = S)
   triggerall = AILevel >= 3 
   triggerall = backedgedist < 5                                 ;difficulty level is 3 or higher
   trigger1 = random = [0,800]                                ;performed 40% of the time
   trigger1 = p2bodydist x <= 30                              ;P2 is closer than 50 distance
   trigger1 = p2movetype != H                                 ;P2 has not been hit
   trigger1 = statetype != A                                  ;character is not jumping
   trigger1 = p2statetype != A    ;character was in [Statedef 1000] or [Statedef 1020] (both projectiles)
   value = 1100 

[State -1, AI]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && (Statetype = S)
   triggerall = AILevel >= 3 
   triggerall = backedgedist < 5                                 ;difficulty level is 3 or higher
   trigger1 = random = [0,800]                                ;performed 40% of the time
   trigger1 = p2bodydist x <= 30                              ;P2 is closer than 50 distance
   trigger1 = p2movetype != H                                 ;P2 has not been hit
   trigger1 = statetype != A                                  ;character is not jumping
   trigger1 = p2statetype != A    ;character was in [Statedef 1000] or [Statedef 1020] (both projectiles)
   value = 1050 


[State -1, AI]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && (Statetype = S)
   triggerall = AILevel >= 3                                  ;difficulty level is 3 or higher
   triggerall = random = [0,700]                                ;performed 40% of the time
   trigger1 = p2bodydist x <= 15                              ;P2 is closer than 50 distance                                ;character is not jumping
   trigger1 = p2statetype = L    ;character was in [Statedef 1000] or [Statedef 1020] (both projectiles)
   value = 430

[State -1, AI]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && (Statetype = S)
   triggerall = AILevel >= 3                                  ;difficulty level is 3 or higher
   triggerall = random = [0,900]                                ;performed 40% of the time
   trigger1 = p2bodydist x <= 10                              ;P2 is closer than 50 distance                                ;character is not jumping
   trigger1 = p2stateno = 20    ;character was in [Statedef 1000] or [Statedef 1020] (both projectiles)
   value = 430

[State -1, AI]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && (Statetype = A)
   triggerall = AILevel >= 3                                  ;difficulty level is 3 or higher
   triggerall = random = [0,200]                                ;performed 40% of the time
   trigger1 = p2bodydist x <= 40                              ;P2 is closer than 50 distance                                ;character is not jumping
   value = 600

[State -1, AI]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && (Statetype = A)
   triggerall = AILevel >= 3                                  ;difficulty level is 3 or higher
   triggerall = random = [0,900]                                ;performed 40% of the time
   trigger1 = p2bodydist x <= 40                              ;P2 is closer than 50 distance                                ;character is not jumping
   value = 630

[State -1, AI Combo]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && (p2movetype = H)                      ;opponent has been hit
   triggerall = AILevel >= 4                                    ;difficulty level is 4 or higher*
   trigger1 = (p2bodydist X <= 25)                              ;close to opponent
   trigger1 = stateno = 600                                 ;falling from attack
   trigger1 = random <= 750                                     ;This will happen 75%
   value = 630

[State -1, AI Combo]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && (p2movetype = H)                      ;opponent has been hit
   triggerall = AILevel >= 4                                    ;difficulty level is 4 or higher*
   trigger1 = (p2bodydist X <= 25)                              ;close to opponent
   trigger1 = stateno = [600,630]                                 ;falling from attack
   trigger1 = random <= 900                                     ;This will happen 75%
   value = 300

[State -1, AI]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && (Statetype = S)
   triggerall = AILevel >= 3                                  ;difficulty level is 3 or higher
   triggerall = random = [0,300]                                ;performed 40% of the time
   trigger1 = p2bodydist x <= 10                              ;P2 is closer than 50 distance                                ;character is not jumping
   trigger1 = p2stateno = 20    ;character was in [Statedef 1000] or [Statedef 1020] (both projectiles)
   value = 400

[State -1, AI]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && (Statetype = S)
   triggerall = AILevel >=   4                               ;difficulty level is 3 or higher
   triggerall = random = [0,900]                                ;performed 40% of the time
   trigger1 = p2bodydist x <= 10                              ;P2 is closer than 50 distance                                ;character is not jumping
   trigger1 =  p2stateno = 20    ;character was in [Statedef 1000] or [Statedef 1020] (both projectiles)
   value = 800



[State -1, AI]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && (Statetype = S)
   triggerall = AILevel >= 3                                  ;difficulty level is 3 or higher
   trigger1 = random = [0,800]                                ;performed 40% of the time
   trigger1 = p2bodydist x <= 20                              ;P2 is closer than 50 distance
   trigger1 = p2movetype != H                                 ;P2 has not been hit
   trigger1 = statetype != A                                  ;character is not jumping
   trigger1 = p2statetype = A    ;character was in [Statedef 1000] or [Statedef 1020] (both projectiles)
   value = 300 
   

   [State -1, AI]
   type = ChangeState
   triggerall = (roundstate = 2) && (var(59) != 0)
   triggerall = (Ctrl) && (Statetype = S)
   triggerall = AILevel >= 4                                  ;difficulty level is 4 or higher
   triggerall = p2statetype != L                              ;P2 is not lieing down
   triggerall = stateno < 3000                                ;Add to avoid chaining hypes*
   trigger1 = prevstateno != 5120                             ;character is not in [Statedef 5120] which is "getting up"
   trigger1 = statetype != A                                  ;character is not jumping
   trigger1 = p2bodydist x >= 150                             ;P2's distance is greater than 150
   trigger1 = power >= 3000                                   ;Hyper Bar has at least 1000 power
   trigger1 = random = [500,699]                               ;Perform this move 10% of the time
   value = 3000
         

;===========================================================================

[State -1, Hyper Projectile Counter]
type = ChangeState
VALUE= 9000
triggerall = power > 999
triggerall = (stateno = [120,140]) && command = "Counter"
triggerall = stateno != [9000,9003]
trigger1 = STATETYPE = S

[State -1, Hyper Projectile Counter]
type = ChangeState
VALUE= 8000
triggerall = power > 2999
triggerall = command = "Spirit Bomb" && enemy, stateno = 3000
triggerall = stateno != [8000,8003]
trigger1 = STATETYPE = S



[State -1, Spirit Bomb]
type = ChangeState
value = 3000
triggerall = command = "Spirit Bomb"
triggerall = power = 3000
triggerall = stateno !=3000
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = (stateno = [200,235]) && movecontact
trigger3 = (stateno = [400,430]) && movecontact

[State -1, Kamehameha EX]
type = ChangeState
value = 2000
triggerall = command = "Kamehameha EX"
triggerall = stateno !=2000
triggerall = power >= 1500
trigger1 = ctrl
trigger2 = (stateno = [200,235]) && movecontact
trigger3 = (stateno = [400,430]) && movecontact
trigger4 = (stateno = [600,630]) && movecontact
trigger5 = (stateno = 300) && movecontact


[State -1, Dragon Fist]
type = ChangeState
value = 1100
triggerall = command = "Dragon Fist"
triggerall = stateno !=1100
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = (stateno = [200,235]) && movecontact
trigger3 = (stateno = [400,430]) && movecontact
trigger4 = (stateno = 300) && movecontact

[State -1, Dragon Fist]
type = ChangeState
value = 1150
triggerall = command = "Grab"
triggerall = stateno !=1100
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = (stateno = [200,235]) && movecontact
trigger3 = (stateno = [400,430]) && movecontact
trigger4 = (stateno = 300) && movecontact

[State -1, Dragon Fist Upper]
type = ChangeState
value = 1050
triggerall = command = "Dragon Fist Upper"
triggerall = stateno !=1050
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = (stateno = [200,235]) && movecontact
trigger3 = (stateno = [400,430]) && movecontact

[State -1, Kamehameha]
type = ChangeState
value = 1000
triggerall = command = "Kamehameha"
triggerall = stateno !=1000
trigger1 = statetype !=A
trigger1 = ctrl
trigger2 = (stateno = [200,235]) && movecontact
trigger3 = (stateno = [400,430]) && movecontact

[State -1, Standing Crush Counter]
type = changestate
triggerall = power > 99
triggerall = p2bodydist x < 50
trigger1 = stateno = 150 && command = "Counter"
trigger2 = stateno = 151 && command = "Counter"
trigger3 = stateno = 152 && command = "Counter"
trigger4 = stateno = 153 && command = "Counter"
trigger5 = stateno = 154 && command = "Counter"
trigger6 = stateno = 155 && command = "Counter"
value = 900



;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Air Dash Fwd]
type = ChangeState
value = 107
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Air Dash Back]
type = ChangeState
value = 108
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "Throw"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != 100



;===========================================================================
;---------------------------------------------------------------------------

[State -1, Stand Close Punch]
type = ChangeState
value = 205
triggerall = P2BodyDist X < 25
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand Punch]
type = ChangeState
value = 200
triggerall = P2BodyDist X > 15
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = time > 4

;---------------------------------------------------------------------------

[State -1, Stand Kick]
type = ChangeState
value = 240
triggerall = command = "a" && command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 205) && movecontact
trigger4 = (stateno = 235) && movecontact

[State -1, Stand Close Kick]
type = ChangeState
value = 235
triggerall = P2BodyDist X < 25
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 205) && movecontact

[State -1, Stand Kick]
type = ChangeState
value = 230
triggerall = P2BodyDist X > 25
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7

[State -1, Stand Heavy]
type = ChangeState
value = 300
triggerall = command = "y"
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact || (stateno = [230,235]) && movecontact
trigger3 = (stateno = 430) && movecontact
trigger4 = (stateno = [600,630]) && movecontact

;---------------------------------------------------------------------------
;Taunt


[State -1, Power Charge]
type = CHANGESTATE
VALUE= 310
TRIGGER1 = POWER < CONST(DATA.POWER) || POWER < POWERMAX
Trigger1 = COMMAND = "hold_b"
trigger1 = STATETYPE = S && CTRL

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = power = 3000
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Crouching Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Crouching Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (movecontact) || (movecontact && time > 5)
trigger3 = (stateno = 235)
trigger3 = (movecontact)


;---------------------------------------------------------------------------
[State -1, Jump Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Jump Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact

;---------------------------------------------------------------------------

