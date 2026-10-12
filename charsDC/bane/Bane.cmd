; {character name}'s CMD file

;-| AI Commands |----------------------------------------------------------

;--------------AI commands
[Command]
name = "CPU1"
command =  c, c, c, c, c
time = -2

[Command]
name = "CPU2"
command =  z, z, z, z, z
time = -2

[Command]
name = "CPU3"
command =  c, c, c, c, c
time = -2

[Command]
name = "CPU4"
command =  z, z, z, z, z
time = -2

[Command]
name = "CPU5"
command =  c, c, c, c, c
time = -2

[Command]
name = "CPU6"
command = U, D, U, D, U
time = -2

[Command]
name = "CPU7"
command = U, D, U, D, U
time = -2

[Command]
name = "CPU8"
command =  D, U, D, U, D
time = -2

[Command]
name = "CPU9"
command = F, B, F, B, F
time = -2

[Command]
name = "CPU0"
command =  D, U, D, U, D
time = -2

[Command]
name = "CPU1"
command = F, B, F, B, F
time = -2

[Command]
name = "CPU2"
command = D, U, D, U, D
time = -2

[Command]
name = "CPU3"
command = F, B, F, B, F
time = -2

[Command]
name = "CPU4"
command =  y, y, y, y, y
time = -2

[Command]
name = "CPU5"
command =  x, x, x, x, x
time = -2

[Command]
name = "CPU6"
command =  y, y, y, y, y
time = -2

[Command]
name = "CPU7"
command = a, a, a, a, a
time = -2

[Command]
name = "CPU8"
command =  y, y, y, y, y
time = -2

[Command]
name = "CPU9"
command = a, a, a, a, a
time = -2

[Command]
name = "CPU0"
command =  x, x, x, x, x
time = -2

[Command]
name = "CPU1"
command =  D, U, D, U, D
time = -2

[Command]
name = "CPU2"
command = F, B, F, B, F
time = -2

[Command]
name = "CPU3"
command = D, U, D, U, D
time = -2

[Command]
name = "CPU4"
command = F, B, F, B, F
time = -2

[Command]
name = "CPU5"
command =  y, y, y, y, y
time = -2

[Command]
name = "CPU6"
command =  y, y, y, y, y
time = -2

[Command]
name = "CPU7"
command = a, a, a, a, a
time = -2

[Command]
name = "CPU8"
command =  y, y, y, y, y
time = -2

[Command]
name = "CPU9"
command = a, a, a, a, a
time = -2

[Command]
name = "CPU0"
command =  x, x, x, x, x
time = -2

[Command]
name = "CPU1"
command =  c, c, c, c, c
time = -2

[Command]
name = "CPU2"
command =  z, z, z, z, z
time = -2

[Command]
name = "CPU3"
command =  c, c, c, c, c
time = -2

[Command]
name = "CPU4"
command =  z, z, z, z, z
time = -2

[Command]
name = "CPU5"
command =  c, c, c, c, c
time = -2


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;---------------------------------------------------------------------------
; Super Jump
;---------------------------------------------------------------------------
[command]
name = "super_jump"
command = D,$U

[command]
name = "super_jump"
command = a+b+c

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "3P"
command = x+y+z
time = 1

[Command]
name = "3K"
command = a+b+c
time = 1

[Command]
name = "recovery roll"
command = a+b
time = 1

[Command]
name = "recovery roll"
command = b+c
time = 1

[Command]
name = "recovery roll"
command = a+c
time = 1

[Command]
name = "pushblock"
command = x+y
time = 5

[Command]
name = "pushblock"
command = x+z
time = 5

[Command]
name = "pushblock"
command = y+z
time = 5

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


[Command]
name = "holdx"
command = /$x
time = 10

[Command]
name = "holdy"
command = /$y
time = 10

;-| Hypers |-----------------------------------------------------------
[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "overdose"
command = ~D, DB, B, a+b
time = 40

[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "overdose"
command = ~D, DB, B, b+c
time = 40

[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "overdose"
command = ~D, DB, B, c+a
time = 40



[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "Combo Backbreaker"
command = ~D, DF, F, y+z
time = 40

[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "Combo Backbreaker"
command = ~D, DF, F, x+y
time = 40

[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "Combo Backbreaker"
command = ~D, DF, F, x+z
time = 40




[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "Jump Backbreaker"
command = ~D, DF, F, a+b
time = 40

[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "Jump Backbreaker"
command = ~D, DF, F, b+c
time = 40

[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "Jump Backbreaker"
command = ~D, DF, F, c+a
time = 40

[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "Carsmash"
command = ~D, DB, B, x+y
time = 40

[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "Carsmash"
command = ~D, DB, B, y+z
time = 40

[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "Carsmash"
command = ~D, DB, B, z+x
time = 40

[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "powergeyser"
command = ~D, DF, F, a+x
time = 40

[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "powergeyser"
command = ~D, DF, F, b+y
time = 40


[Command] ;  (Quarter circle forward + hard punch & hard kick)
name = "powergeyser"
command = ~D, DF, F, c+z
time = 40



;-| Specials |-----------------------------------------------------------
[Command]
name = "kstomp1"
command = ~D, DF, F, x

[Command]
name = "kstomp2"
command = ~D, DF, F, y

[Command]
name = "kstomp3"
command = ~D, DF, F, z



[Command]
name = "sewerlidx"
command = ~D, DB,B, x
time = 25

[Command]
name = "sewerlidy"
command = ~D, DB,B, y
time = 25

[Command]
name = "sewerlidz"
command = ~D, DB,B, z
time = 25

[Command]
name = "rockstomp"
command = ~D, DB, B, a

[Command]
name = "rockstomp"
command = ~D, DB, B, b

[Command]
name = "rockstomp"
command = ~D, DB, B, c


[Command]
name = "wallslam-a"
command = ~D, DF,F, a
buffer.time = 2
[Command]
name = "wallslam-b"
command = ~D, DF,F, b
buffer.time = 2
[Command]
name = "wallslam-c"
command = ~D, DF,F, c
buffer.time = 2




[Command]
name = "deadshot"
command = a+x
time = 25






;Air Specials-------------------------------------------------------------------
[Command]
name = "Divebomb"
command = ~D, DF, F, x
time = 40

[Command]
name = "Divebomb"
command = ~D, DF, F, y
time = 40

[Command]
name = "Divebomb"
command = ~D, DF, F, z
time = 40



;---------------------------------------------------------------------------
; 2. State entry
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
[State -1, AIActivate]
type = VarSet
triggerall = var(59) != 1
triggerall = RoundState != 3
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU0"
trigger11 = command = "CPU1"
trigger12 = command = "CPU2"
trigger13 = command = "CPU3"
trigger14 = command = "CPU4"
trigger15 = command = "CPU5"
trigger16 = command = "CPU6"
trigger17 = command = "CPU7"
trigger18 = command = "CPU8"
trigger19 = command = "CPU9"
trigger20 = command = "CPU0"
trigger21 = command = "CPU1"
trigger22 = command = "CPU2"
trigger23 = command = "CPU3"
trigger24 = command = "CPU4"
trigger25 = command = "CPU5"
trigger26 = command = "CPU6"
trigger27 = command = "CPU7"
trigger28 = command = "CPU8"
trigger29 = command = "CPU9"
trigger30 = command = "CPU0"
trigger31 = command = "CPU1"
trigger32 = command = "CPU2"
trigger33 = command = "CPU3"
trigger34 = command = "CPU4"
trigger35 = command = "CPU5"
var(59) = 1

;======================================================================
;===========================================================================
;======================================================================
; A.I Commands
;-----------------------------------------------------------------------
[State -1, Combo Chooser]
type = VarRandom
trigger1 = var(59) = 1 && stateno = [5000,5300]
trigger2 = movetype != A
v = 48
range = 0,9 ;<---- Here, change the 7 to however many combos you have - Yin
;====================================================================
;GUARD/BLOCK CODE
;====================================================================

; [State -1, standGuard]
; type = ChangeState
; triggerall = var(59) && random <= 777
; triggerall =(StateType != A) && (Ctrl)&& (enemynear, Facing != Facing)
; trigger1 = (P2StateType != C) && (P2MoveType = A)
; ;trigger2 = inguarddist
; value = 130
; 
; [State -1, airGuardHitBack]
; type = ChangeState
; triggerall = var(59) && random <= 777
; triggerall =(StateType != A) && (enemynear, Facing != Facing)
; triggerall = (P2StateType = C) && (P2MoveType = A)
; trigger1 = StateNo = 150
; ;trigger2 = inguarddist
; value = 152
; 
; [State -1, crouchGuard]
; type = ChangeState
; triggerall = var(59) && random <= 777
; triggerall = (StateType != A) && (Ctrl) && (enemynear, Facing != Facing)
; trigger1 = (P2StateType = C) && (P2MoveType = A)
; ;trigger2 = inguarddist
; value = 131
; 
; [State -1, standGuardHitBack]
; type = ChangeState
; triggerall = var(59) && random <= 777
; triggerall =(StateType != A) && (enemynear, Facing != Facing)
; triggerall = (P2StateType != C) && (P2MoveType = A)
; trigger1 = StateNo = 152
; ;trigger2 = inguarddist
; value = 150
; 
; [State -1, airGuard]
; type = ChangeState
; triggerall = var(59) && random <= 777
; triggerall = (StateType = A) && (Ctrl) && (enemynear, Facing != Facing)
; trigger1 = P2MoveType = A
; ;trigger2 = inguarddist
; value = 132

;Guard (ChangeToCrouching)
[State -1, Guard (ChangeToCrouching)]
type = ChangeState
value = 152
triggerall = (var(59) = 1) || (var(59) = 4)
triggerall = stateno = 150
triggerall = p2statetype = C
trigger1 = p2movetype = A
trigger2 = enemy, NumProj != 0

;---------------------------------------------------------------------------
;Guard (ChangeToStanding)
[State -1, Guard (ChangeToStanding)]
type = ChangeState
value = 150
triggerall = (var(59) = 1) || (var(59) = 4)
triggerall = stateno = 152
triggerall = p2statetype = A
trigger1 = p2movetype = A
trigger2 = enemy, NumProj != 0

;---------------------------------------------------------------------------
;Guard (Crouching)
[State -1, Guard (Crouching)]
type = ChangeState
value = 131
triggerall = (var(59) = 1) || (var(59) = 4)
triggerall = statetype != A
triggerall = ctrl
triggerall = p2statetype = C
trigger1 = p2movetype = A
trigger1 = enemy, MoveGuarded = 0
trigger2 = enemy, NumProj != 0

;---------------------------------------------------------------------------
;Guard (Standing)
[State -1, Guard (Standing)]
type = ChangeState
value = 130
triggerall = (var(59) = 1) || (var(59) = 4)
triggerall = statetype != A
triggerall = ctrl
triggerall = p2statetype != C
trigger1 = p2movetype = A
trigger1 = enemy, MoveGuarded = 0
trigger2 = enemy, NumProj != 0

;---------------------------------------------------------------------------
;Guard (Air)
[State -1, Guard (Air)]
type = ChangeState
value = 132
triggerall = (var(59) = 1) || (var(59) = 4)
triggerall = statetype = A
triggerall = ctrl
trigger1 = p2movetype = A
trigger1 = enemy, MoveGuarded = 0
trigger2 = enemy, NumProj != 0

; AI Combos Start-------------------------------------------------------------
; Stand Med Punch
[State -1, Ground Combo 1]
type = ChangeState
value = 200
triggerall = (var(59) != 0) && var(48) = 0 && statetype = S && RoundState = 2 && ctrl && random > 500
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [-40, 40]) && random > 300
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,40]
trigger2 = random <= 400

; Stand Med Punch
[State -1, Stand Med Punch]
type = ChangeState
value = 210
triggerall = var(59) && var(48) = 0 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 200) && movecontact

; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 220
triggerall = var(59) && var(48) = 0 && RoundState = 2
triggerall = p2bodydist x <= 40
trigger1 = (stateno = 210) && movecontact

;------------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Ground Combo 2]
type = ChangeState
value = 430
triggerall = var(59) && var(48) = 1 && statetype = S && RoundState = 2 && ctrl && random > 500
triggerall = p2statetype != L
trigger1 = p2bodydist x < 20 && random > 300
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,40]
trigger2 = random <= 350
persistent = 0

; Crouch Light Kick
[State -1, Stand Med Punch]
type = ChangeState
value = 440
triggerall = var(59) && var(48) = 1 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 430) && movecontact

; Crouch Med Kick
[State -1, Crouch Med Kick]
type = ChangeState
value = 450
triggerall = var(59) && var(48) = 1 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 440) && movecontact

; Rock Stomp
[State -1, Rock Stomp]
type = ChangeState
value = 3320
triggerall = var(59) && var(48) = 1 && RoundState = 2
triggerall = p2bodydist x <= 60
trigger1 = (stateno = 450) && movecontact

;------------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Ground Combo 3]
type = ChangeState
value = 400
triggerall = var(59) && var(48) = 2 && statetype = S && RoundState = 2 && ctrl && random > 500
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [-40, 40]) && random > 300
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,40]
trigger2 = random <= 400

; Crouch Med Punch
[State -1, Stand Med Punch]
type = ChangeState
value = 410
triggerall = var(59) && var(48) = 2 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 400) && movecontact

; Stand Strong Punch
[State -1, Stand Med Kick]
type = ChangeState
value = 220
triggerall = var(59) && var(48) = 2 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 410) && movecontact

; Rock Stomp
[State -1, WallSlam]
type = ChangeState
value = 1200
triggerall = var(59) && var(48) = 2 && RoundState = 2
trigger1 = p2bodydist x <= 60 && random > 800
trigger1 = (stateno = 220) && movecontact

;------------------------------------------------------------------------------
; Stand Light Punch
[State -1, Ground Combo 4]
type = ChangeState
value = 200
triggerall = var(59) && var(48) = 3 && statetype = S && RoundState = 2 && ctrl && random > 500
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [-40, 40]) && random > 300
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,40]
trigger2 = random <= 400

; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) && var(48) = 3 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 200) && movecontact

; Crouch Med Kick
[State -1, Crouch Med Kick]
type = ChangeState
value = 440
triggerall = var(59) && var(48) = 3 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 230) && movecontact

; Back Breaker
[State -1, Back Breaker]
type = ChangeState
value = 1210
triggerall = var(59) && var(48) = 3 && RoundState = 2
trigger1 = (p2bodydist x = [-40, 40]) && random > 800
trigger1 = (stateno = 440) && movecontact

;------------------------------------------------------------------------------
; Stand Light Punch
[State -1, Ground Combo 5]
type = ChangeState
value = 400
triggerall = var(59) && var(48) = 4 && statetype = S && RoundState = 2 && ctrl && random > 500
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [-40, 40]) && random > 300
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,40]
trigger2 = random <= 400

; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) && var(48) = 4 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 400) && movecontact

; Crouch Strong Punch
[State -1, Crouch Med Kick]
type = ChangeState
value = 240
triggerall = var(59) && var(48) = 4 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 230) && movecontact

; Crouch Strong Punch
[State -1, Crouch Med Kick]
type = ChangeState
value = 410
triggerall = var(59) && var(48) = 4 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 240) && movecontact

; Crouch Strong Punch
[State -1, Crouch Med Kick]
type = ChangeState
value = 450
triggerall = var(59) && var(48) = 4 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 410) && movecontact

; Crouch Strong Punch
[State -1, Crouch Med Kick]
type = ChangeState
value = 1220
triggerall = var(59) && var(48) = 4 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 450) && movecontact

;------------------------------------------------------------------------------
; Stand Light Punch
[State -1, Ground Combo 6]
type = Changestate
value = 450
triggerall = var(59) && var(48) = 5 && statetype = S && RoundState = 2 && ctrl && random > 500
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [-40, 40]) && random > 300
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,40]
trigger2 = random <= 400

; Crouch Strong Punch
[State -1, Crouch Med Kick]
type = ChangeState
value = 3320
triggerall = var(59) && var(48) = 5 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 450) && movecontact

;------------------------------------------------------------------------------
; Stand Med Kick
[State -1, Ground Combo 7]
type = Changestate
value = 240
triggerall = var(59) && var(48) = 6 && statetype = S && RoundState = 2 && ctrl && random > 500
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [-40, 40]) && random > 300
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,40]
trigger2 = random <= 400

; Crouch Strong Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 240) && movecontact

; Crouch Strong Punch
[State -1, Stand Med Punch]
type = ChangeState
value = 210
triggerall = var(59) && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 200) && movecontact

; Crouch Strong Punch
[State -1, Crouch Med Kick]
type = ChangeState
value = 230
triggerall = var(59) && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 210) && movecontact

; Crouch Strong Punch
[State -1, Crouch Med Kick]
type = ChangeState
value = 220
triggerall = var(59) && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 230) && movecontact

; Crouch Strong Punch
[State -1, Crouch Med Kick]
type = ChangeState
value = 250
triggerall = var(59) && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 220) && movecontact

; Crouch Strong Punch
[State -1, Crouch Med Kick]
type = ChangeState
value = 8080
triggerall = var(59) && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 250) && movecontact

;------------------------------------------------------------------------------
; Stand Med Kick
[State -1, Ground Combo 8]
type = Changestate
value = 440
triggerall = var(59) && var(48) = 7 && statetype = S && RoundState = 2 && ctrl && random > 500
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [-40, 40]) && random > 300
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,40]
trigger2 = random <= 400

; Crouch Strong Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 400
triggerall = var(59) && var(48) = 7 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 440) && movecontact

; Crouch Strong Punch
[State -1, Stand Med Punch]
type = ChangeState
value = 410
triggerall = var(59) && var(48) = 7 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 400) && movecontact

; Crouch Strong Punch
[State -1, Crouch Med Kick]
type = ChangeState
value = 430
triggerall = var(59) && var(48) = 7 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 410) && movecontact

; Crouch Strong Punch
[State -1, Crouch Med Kick]
type = ChangeState
value = 450
triggerall = var(59) && var(48) = 7 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 430) && movecontact

; Crouch Strong Punch
[State -1, Crouch Med Kick]
type = ChangeState
value = 3320
triggerall = var(59) && var(48) = 7 && RoundState = 2
triggerall = p2bodydist x <= 60
trigger1 = (stateno = 250) && movecontact


;------------------------------------------------------------------------------
;air med kick

[State -1, Air Combo 9]
type = ChangeState
value = 640
triggerall = var(59) && var(48) = 3 && statetype = S && RoundState = 2 && ctrl && random > 500
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [-40, 40]) && random > 300
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,40]
trigger2 = random <= 400

; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 610
triggerall = var(59) && var(48) = 3 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 200) && movecontact

; Crouch Med Kick
[State -1, Crouch Med Kick]
type = ChangeState
value = 620
triggerall = var(59) && var(48) = 3 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 230) && movecontact

; Crouch Med Kick
[State -1, Crouch Med Kick]
type = ChangeState
value = 630
triggerall = var(59) && var(48) = 3 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 230) && movecontact

; dive Bomb
[State -1, Back Breaker]
type = ChangeState
value = 1117
triggerall = numhelper(5355) = 0
triggerall = var(59) && var(48) = 3 && RoundState = 2
trigger1 = (p2bodydist x = [-40, 40]) && random > 800
trigger1 = (stateno = 440) && movecontact

;------------------------------------------------------------------------------
; Stand Med Kick
; [State -1, Ground Combo 9] This leads into a crouching punch launcher (Uncomment when 420 becomes a launcher)
;                            And don't forget to change the combo chooser variable at the top - Yin
; type = Changestate
; value = 440
; triggerall = var(59) && var(48) = 8 && statetype = S && RoundState = 2 && ctrl && random > 500
; triggerall = p2statetype != L
; trigger1 = (p2bodydist x = [-40, 40]) && random > 300
; trigger2 = stateno = 100
; trigger2 = P2BodyDist X = [0,40]
; trigger2 = random <= 400
; 
; ; Crouch Strong Punch
; [State -1, Stand Light Punch]
; type = ChangeState
; value = 400
; triggerall = var(59) && var(48) = 8 && RoundState = 2
; triggerall = (p2bodydist x = [-40, 40])
; trigger1 = (stateno = 440) && movecontact
; 
; ; Crouch Strong Punch
; [State -1, Stand Med Punch]
; type = ChangeState
; value = 410
; triggerall = var(59) && var(48) = 8 && RoundState = 2
; triggerall = (p2bodydist x = [-40, 40])
; trigger1 = (stateno = 400) && movecontact
; 
; ; Crouch Strong Punch
; [State -1, Crouch Med Kick]
; type = ChangeState
; value = 430
; triggerall = var(59) && var(48) = 8 && RoundState = 2
; triggerall = (p2bodydist x = [-40, 40])
; trigger1 = (stateno = 410) && movecontact
; 
; ; Crouch Strong Punch
; [State -1, Crouch Med Kick]
; type = ChangeState
; value = 420
; triggerall = var(59) && var(48) = 8 && RoundState = 2
; triggerall = (p2bodydist x = [-40, 40])
; trigger1 = (stateno = 430) && movecontact

;------------------------------------------------------------------------------
; Stand Med Kick
; [State -1, Ground Combo 10] This leads into a crouching punch launcher (Uncomment when 420 becomes a launcher)
;                             And don't forget to change the combo chooser variable at the top - Yin
; type = Changestate
; value = 230
; triggerall = var(59) && var(48) = 9 && statetype = S && RoundState = 2 && ctrl && random > 500
; triggerall = p2statetype != L
; trigger1 = (p2bodydist x = [-40, 40]) && random > 300
; trigger2 = stateno = 100
; trigger2 = P2BodyDist X = [0,40]
; trigger2 = random <= 400
; 
; ; Crouch Strong Punch
; [State -1, Stand Light Punch]
; type = ChangeState
; value = 200
; triggerall = var(59) && var(48) = 9 && RoundState = 2
; triggerall = (p2bodydist x = [-40, 40])
; trigger1 = (stateno = 230) && movecontact
; 
; ; Crouch Strong Punch
; [State -1, Stand Med Punch]
; type = ChangeState
; value = 240
; triggerall = var(59) && var(48) = 9 && RoundState = 2
; triggerall = (p2bodydist x = [-40, 40])
; trigger1 = (stateno = 200) && movecontact
; 
; ; Crouch Strong Punch
; [State -1, Crouch Med Kick]
; type = ChangeState
; value = 210
; triggerall = var(59) && var(48) = 9 && RoundState = 2
; triggerall = (p2bodydist x = [-40, 40])
; trigger1 = (stateno = 240) && movecontact
; 
; ; Crouch Strong Punch
; [State -1, Crouch Med Kick]
; type = ChangeState
; value = 400
; triggerall = var(59) && var(48) = 9 && RoundState = 2
; triggerall = (p2bodydist x = [-40, 40])
; trigger1 = (stateno = 210) && movecontact
; 
; ; Crouch Strong Punch
; [State -1, Crouch Med Kick]
; type = ChangeState
; value = 420
; triggerall = var(59) && var(48) = 9 && RoundState = 2
; triggerall = p2bodydist x <= 60
; trigger1 = (stateno = 400) && movecontact

; Alex! These are AI combos. To add more combos, you just have to copy the first state in the combo, example:
; [State -1, Ground Combo 6]
; type = Changestate
; value = 400 <---- Change the number of the state to the state that you want to start off the combo
; triggerall = var(59) && var(48) = 5 && statetype = S && RoundState = 2 && ctrl && random > 500
; trigger1 = (p2bodydist x = [-40, 40]) && random > 300
; trigger2 = stateno = 100
; trigger2 = P2BodyDist X = [0,40]
; trigger2 = random <= 400
; 
; Change the variable 48 to the next number up from the last combo
; Then copy and paste the state after the combo starter state, example:
; [State -1, Crouch Med Kick]
; type = ChangeState
; value = 450 <---- Change the number of the state to the state that you want to combo into next
; triggerall = var(59) && var(48) = 5 && RoundState = 2 <---- Again, change the vairable
; to the same as the combo starter variable
; triggerall = (p2bodydist x = [-40, 40])
; trigger1 = (stateno = 400) && movecontact <---- Change the trigger to the state number of the one
; before. In this case it would be 400
;
; So the new combo would be Crouch light punch to crouch strong kick. You can also chain into moves
; by replacing the stateno with the number of a move.

; Delete when you are done reading. Or whaever you want to do with it. - Yin

;====================================================================
; Stand, Crouch, Jump / Punch, Kick - NORMAL (only 3 punches/kicks)
;====================================================================

; ;---------------------------------------------------------------------------
; ; Standing basics
; ;
; ; Punches: 200, 210, 220
; ; Kicks: 230, 240, 250
; ;---------------------------------------------------------------------------
; ; Stand Light Punch
; [State -1, Stand Light Punch]
; type = ChangeState
; value = 200
; triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState = 2
; trigger1 = ctrl = 1
; trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)
; 
; ;---------------------------------------------------------------------------
; ; Stand Medium Punch
; [State -1, Stand Medium Punch]
; type = ChangeState
; value = 210
; triggerall =(statetype = S) && var(59) && p2statetype != L && RoundState = 2
; 
; ; (chain combos)
; trigger1 = (stateno = 200) && (movecontact = 1)
; 
; ;---------------------------------------------------------------------------
; ; Stand Hard Punch
; [State -1, Stand Hard Punch]
; type = ChangeState
; value = 220
; triggerall = var(59) && p2statetype != L && RoundState = 2
; triggerall = statetype = S
; 
; ; (chain combos)
; trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact = 1)
; 
; ;---------------------------------------------------------------------------
; ; Stand Light Kick
; [State -1, Stand Light Kick]
; type = ChangeState
; value = 230
; triggerall =(statetype = S) && var(59) && p2statetype != L && RoundState = 2
; trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 400&& random >200)) && ctrl
; 
; ;---------------------------------------------------------------------------
; ; Stand Medium Kick
; [State -1, Stand Medium Kick]
; type = ChangeState
; value = 240
; triggerall = var(59) && p2statetype != L && RoundState = 2
; triggerall = statetype = S
; 
; ; (chain combos)
; trigger1= (stateno = 230) && (movecontact = 1)
; 
; ;---------------------------------------------------------------------------
; ; Stand Hard Kick
; [State -1, Stand Hard Kick]
; type = ChangeState
; value = 250
; triggerall = var(59) && enemynear, statetype != L && RoundState = 2
; 
; ; (chain combos)
; trigger1 = ((stateno = 230) || (stateno = 240)) && (movecontact = 1)
; 
; 
; 
; 
; ;---------------------------------------------------------------------------
; 
; ;; Standing throw
; ;[State -1, Throw1]
; ;type = ChangeState
; ;value = ifelse(statetype=A,850,801)
; ;triggerall = var(59) && RoundState = 2 && ctrl
; ;triggerall = statetype = S && enemynear, statetype != L && random < 200
; ;trigger1 = (P2BodyDist X <= 25) && enemynear, statetype != C
; ;
; ;; Air throw
; ;;[State -1, AirThrow1]
; ;;type = ChangeState
; ;;value = 810
; ;;triggerall = var(59) && RoundState = 2 && ctrl
; ;;triggerall = statetype = A && enemynear, statetype != L && random < 200
; ;;trigger1 = (P2BodyDist X <= 25) && enemynear, p2dist Y > -3
; 
; ;---------------------------------------------------------------------------
; ; Crouching basics
; ; Punches: 400, 410, 420
; ; Kicks: 430, 440, 450
; ;---------------------------------------------------------------------------
; ; Crouch Light Punch
; [State -1, Crouch Light Punch]
; type = ChangeState
; value = 400
; triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
; trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 600&& random >400))
; 
; ;---------------------------------------------------------------------------
; ; Crouch Medium Punch
; [State -1, Crouch Medium Punch]
; type = ChangeState
; value = 410
; triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
; 
; ; (chain combos)
; trigger1 = (stateno = 400) && movecontact
; 
; ;---------------------------------------------------------------------------
; ; Crouch Hard Punch
; [State -1, Crouch Hard Punch]
; type = ChangeState
; value = 420
; triggerall = var(59) && statetype != A && RoundState = 2
; 
; ; (chain combos)
; trigger1 = (stateno = 410) && movecontact
; 
; ;---------------------------------------------------------------------------
; ; Crouch Light Kick
; [State -1, Crouch Light Kick]
; type = ChangeState
; value = 430
; triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
; trigger1 = (enemynear, p2dist x <= 65 && enemynear, movetype != A && (Random <= 900&& random >600))
; 
; ;---------------------------------------------------------------------------
; ; Crouch Medium Kick
; [State -1, Crouch Medium Kick]
; type = ChangeState
; value = 440
; triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
; 
; ; (chain combos)
; trigger1 = (stateno = 430) && movecontact
; 
; ;---------------------------------------------------------------------------
; ; Crouch Hard Kick
; [State -1, Crouch Hard Kick]
; type = ChangeState
; value = 450
; triggerall = var(59) && statetype != A && RoundState = 2
; 
; ; (chain combos)
; trigger1 = (stateno = 440) && movecontact

;---------------------------------------------------------------------------
; Air basics
; Punches: 600, 610, 620
; Kicks: 630, 640, 650
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A && ctrl
trigger1 = p2dist X < 80 && (p2dist Y > -15 && p2dist Y < 15)

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 630) && movecontact

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 600) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 610) && movecontact

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 651
triggerall = var(59) && RoundState = 2 && stateno != 100
triggerall = statetype = A && ctrl && random > 950

; (chain combos)
trigger1 = stateno = 620 && movecontact

;---------------------------------------------------------------------------
; AI Defense
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 102
triggerall = var(59)
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
triggerall = (stateno != 102) && (prevstateno != 102)
trigger1 = P2BodyDist X >= 20
trigger1 = ctrl


[State -1]
type = ChangeState
triggerall = var(59) =1 =1 && StateType != A && P2moveType = A
triggerall = Random <= 50
triggerall = roundstate = 2
trigger1 = Ctrl
value = 105
persistent = 0

;---------------------------------------------------------------------------
; Throws
[State -1, throw ai]
type = ChangeState
value = 8080
triggerall = MoveType != H && RoundState = 2 && !IsHelper
triggerall =  (p2bodydist x <= 15) && (p2bodydist y <= 10)
triggerall = Random <= 200 && (statetype = S) && Var(59)
trigger1 = ctrl = 1


[State -1, throw ai]
type = ChangeState
value = 900
triggerall = MoveType != H && RoundState = 2 && !IsHelper
triggerall =  (p2bodydist x <= 15) && (p2bodydist y <= 10)
triggerall = Random <= 200 && (statetype = S) && Var(59)
trigger1 = ctrl = 1


;----------------------------------------------------------------------
; Air combo
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [600,620]) && (MoveContact)
value = IfElse(StateNo = 600,630,IfElse(StateNo = 610,640,650))
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [630,640]) && (MoveContact)
value = IfElse(StateNo = 630,610,620)

;---------------------------------------------------------------------------
;crouch Strong punch (launcher)
[State -1, Rock Stomp Launcher]
type = ChangeState
value = 3320
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper && (p2statetype != A)
;trigger1 = p2bodydist X <= 20 && (enemynear, anim = 5300) && (StateNo = 420) && movehit
trigger1 = p2bodydist X <= 60 && (enemynear, statetype != A) && Random = [0,250]

;---------------------------------------------------------------------------
;crouch Strong punch (launcher)
[State -1, Crouch launcher]
type = ChangeState
value = 420
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper && (p2statetype != A)
;trigger1 = p2bodydist X <= 20 && (enemynear, anim = 5300) && (StateNo = 420) && movehit
trigger1 = p2bodydist X <= 60 && (enemynear, statetype != A) && Random = [0,250]

;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 700
triggerall = (StateType != A) && Var(59) && RoundState = 2
trigger1 = (StateNo = 420) && (MoveHit = 1)
trigger2 = (StateNo = 3320) && (MoveHit = 1)


;====================================================================
; Main Hypers
;====================================================================

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (p2statetype != A)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (power >= 1000) && random < 350
value = 800


[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (p2statetype != A)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 35) && (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 1000) && random < 500
value = 2798


[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype != A) && (p2statetype != L)
triggerall = random = [0,500]
triggerall = p2statetype != L
trigger1 = (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 3000) && (numproj = 0)
value = 3500

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (p2statetype != A)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 35) && (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 1000) && random < 500
value = 888

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (p2statetype != A)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 35) && (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 1000) && random < 500
value = 3201

;---------------------AI SUPERS-------------------------------------------------


[State -1, Knee Stomp]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = p2statetype != L
triggerall = (Ctrl) && (Statetype != A) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1040

;[State -1, Powerbomb]
;type = ChangeState
;triggerall = (roundstate = 2) && (var(59) != 0)
;triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L) && (p2statetype != A)
;trigger1 = (p2bodydist x <= 35) && (prevstateno != 5120) && (statetype != A)
;trigger1 = (numproj = 0) && random < 50
;trigger2 = stateno = 210 && random < 50
;value = 900



[State -1, Rock Stomp]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
trigger1 = (p2bodydist x > 10) && (p2bodydist x < 30)&& (prevstateno != 5120) && (statetype = S)
trigger1 = (numproj = 0) && random < 100
trigger2 = stateno = 450 && random > 850
value = 3320

[State -1, Wall Slam]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = p2statetype != L
trigger1 = (Ctrl) && (Statetype != A) && (random = [0,50])
value = 1200


[State -1, Wall Slam]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = p2statetype != L
trigger1 = (Ctrl) && (Statetype != A) && (random = [0,50])
value = 1210

[State -1, Wall Slam]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = p2statetype != L
trigger1 = (Ctrl) && (Statetype != A) && (random = [0,50])
value = 1220



[State -1, Sewer Lid]
type = ChangeState
triggerall = random < 150
triggerall = numhelper(1101) = 0
triggerall = numhelper(1035) = 0
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = p2statetype != L
trigger1 = (Ctrl) && (Statetype != A)
value = 1100



; Deadshot (Floyd)
[State -1, helper]
type = ChangeState
value = 1150
triggerall = power >= 500 && var(59) && ctrl && prevstateno != 1150
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = !IsHelper && NumHelper(12200) = 0
trigger1 = random < 30

[State -1, Throw]
type = ChangeState
value = 8080
triggerall = var(59) && ctrl
triggerall = ((p2bodydist x > 2) && (p2bodydist x < 20))
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = random > 600

[State -1, Throw]
type = ChangeState
value = 900
triggerall = var(59) && ctrl
triggerall = ((p2bodydist x > 2) && (p2bodydist x < 20))
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = random < 600

[State -1, dive bomb]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [0,50])
trigger1 = (p2bodydist x < 50) && (prevstateno != 5120) && (p2movetype != H) && (statetype = A)
trigger1 = p2bodydist y > 30
value = 1117
;-------------------------Hypers----------------------------------------------------------------------
[State -1, Carsmash]
type = ChangeState
value = 2798
triggerall = !var(59)
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "Carsmash"


[State -1, rolling backbreaker]
type = ChangeState
value = 888
triggerall = !var(59)
triggerall = command = "Combo Backbreaker"
triggerall = power >= 1000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)



[State -1, jumpbackbreaker]
type = ChangeState
value = 800
triggerall = !var(59)
triggerall = command = "Jump Backbreaker"
triggerall = power >= 1000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)



[State -1, Overdose Mode Level 3 Hyper]
type = ChangeState
value = 3500
triggerall = !var(59)
triggerall = command = "overdose"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl

[State -1, powergeyser]
type = ChangeState
value = 3201
triggerall = !var(59)
triggerall = command = "powergeyser"
triggerall = power >= 1000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
;----------------------------------Specials-------------------------------------


;Head Stomp
[State -1, Fist Smash]
type = ChangeState
value = 1040
triggerall = !var(59)
triggerall = command = "kstomp1" || command = "kstomp2" || command = "kstomp3"
trigger1 = statetype != A
trigger1 = Ctrl = 1

;---------------------------------------------------------------------------

[State -1 rockstop launcher]
type = ChangeState
value = 3320
triggerall = !var(59)
triggerall = numhelper(6320) = 0
triggerall = StateType != A
triggerall = Command = "rockstomp"
trigger1 = Ctrl = 1
;---------------------------------------------------------------------------
[State -1 sewrlid toss]
type = ChangeState
value = 1100
triggerall = !var(59)
triggerall = command = "sewerlidx" || command = "sewerlidy" || command = "sewerlidz"
triggerall = numhelper(1101) = 0
triggerall = numhelper(1035) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 450 ;Except for sweep kick
trigger2 = movecontact


[State -1, Wall Slam 1]
type = ChangeState
value = 1200
triggerall = !var(59)
triggerall = Statetype != A
triggerall = command = "wallslam-a"
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
;---------------------------------------------------------------------------
[State -1, Wall Slam 2]
type = ChangeState
value = 1210
triggerall = !var(59)
triggerall = Statetype != A
triggerall = command = "wallslam-b"
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
;----------------------------------------------------------------------------
[State -1, Wall Slam 3]
type = ChangeState
value = 1220
triggerall = !var(59)
triggerall = Statetype != A
triggerall = command = "wallslam-c"
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
;---------------------------------------------------------------------------


[State -1, Fast Floyd]
type = ChangeState
value = 1150
triggerall = power >= 500
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = numhelper(12200) = 0
trigger1 = command = "deadshot"

;Raider Kick
[state -1, Divebomb]
type = changestate
value = 1117
triggerall = var(59) != 1
triggerall = command = "Divebomb"
triggerall = statetype = A
trigger1 = ctrl

[State -1,venom charging]
type = ChangeState
value = 4600
triggerall = power < 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = command = "holdx"
trigger1 = command = "holdy"


;---------------------------------------------------------------------------
; Standing Push Block (AKA advancing guard)
;[State -1, SPushBlock]
;type = ChangeState
;value = 750
;triggerall = command = "pushblock" && StateType = S && !Var(59)
;trigger1 = StateNo = 130
;trigger2 = StateNo = [150, 151]
;
;;---------------------------------------------------------------------------
;; Crouching Push Block
;[State -1, CPushBlock]
;type = ChangeState
;value = 752
;triggerall = command = "pushblock" && StateType = C && !Var(59)
;trigger1 = StateNo = 131
;trigger2 = StateNo = [152, 153]
;
;;---------------------------------------------------------------------------
;; Air Push Block
;[State -1, APushBlock]
;type = ChangeState
;value = 754
;triggerall = command = "pushblock" && StateType = A && !Var(59)
;trigger1 = StateNo = 132
;trigger2 = StateNo = [154, 155]
;Roll Forward

[State -1, Roll Forward]
type = ChangeState
value = 8300
triggerall = !var(59)
triggerall = command = "holdfwd"
triggerall = time = 1
trigger1 = (stateno = 5120) && (alive = 1)

;Roll Back
[State -1, Roll Back]
type = ChangeState
value = 8305
triggerall = !var(59)
triggerall = command = "holdback"
triggerall = time = 1
trigger1 = (stateno = 5120) && (alive = 1)
;---------------------------------------------------------------------------
;Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 100
triggerall = command != "holdback" && !Var(59)
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "FF"
trigger2 = command = "3P"
;---------------------------------------------------------------------------
;Back Dash
[State -1, BackDash]
type = ChangeState
value = 105
triggerall = statetype = S && !Var(59)
triggerall = ctrl = 1
trigger1 = command = "BB"
trigger2 = command = "holdback"
trigger2 = command = "3P"

;---------------------------------------------------------------------------
; Superjump
[state -1, super_jump]
type = changestate
triggerall = !var(59)
triggerall = statetype = S || statetype = C
trigger1 = command = "super_jump"
trigger1 = ctrl
trigger2 = command = "super_jump" || command = "holdup"
trigger2 = MoveHit
trigger2 = Stateno = 420 || Stateno = 3320
value = 700

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = statetype = S && !Var(59)
triggerall = ctrl = 1
trigger1 = command = "start"


;---------------------------------------------------------------------------
; Throws

[State -1, Throw]
type = ChangeState
value = 8080
triggerall = !var(59)
triggerall = command = "b" || command = "c"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, Throw]
type = ChangeState
value = 900
triggerall = !var(59)
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;---------------------------------------------------------------------------
; Standing basics
;
; Punches: 200, 210, 220
; Kicks: 230, 240, 250
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (command = "x") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = (command = "y") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400)
trigger5 = movecontact
trigger5 = (stateno = 430)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = (command = "z") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430) || (stateno = 440)

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (command = "a") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 400)

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = (command = "b") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430)

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = (command = "c") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430) || (stateno = 440)

;---------------------------------------------------------------------------
; Crouching basics
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = (command = "x") && (command = "holddown") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = (command = "y") && (command = "holddown") && (statetype = C) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400)
trigger5 = movecontact
trigger5 = (stateno = 430)

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = (command = "z") && (command = "holddown") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = [200, 440])) && movecontact = 1 && stateno != 420 && stateno !=220 && stateno !=250


;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = (command = "a") && (command = "holddown") && (statetype = C) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 400)

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = (command = "b") && (command = "holddown") && (statetype = C) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430)



;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = (command = "c") && (command = "holddown") && (statetype = C) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430) || (stateno = 440)
;---------------------------------------------------------------------------
; Air basics
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = (command = "x") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = (command = "y") && (statetype = A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 630


;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = (command = "z") && (statetype = A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630 || stateno = 640

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = (command = "a") && (statetype = A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = (command = "b") && (statetype = A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630
;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = (command = "c") && (statetype = A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630 || stateno = 640


;Roll Forward
[State -1, Roll Forward]
type = ChangeState
value = 8300
triggerall = !Var(59)
triggerall = command = "holdfwd"
triggerall = time = 1
trigger1 = (stateno = 5120) && (alive = 1)

;Roll Back
[State -1, Roll Back]
type = ChangeState
value = 8305
triggerall = !Var(59)
triggerall = command = "holdback"
triggerall = time = 1
trigger1 = (stateno = 5120) && (alive = 1)
;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
