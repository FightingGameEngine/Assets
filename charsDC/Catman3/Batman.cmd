;===========================================================================
Marvel vs. Capcom - Eternity of Heroes - Commands Template V.5
by REDHOT, Acey & eSkRo
;===========================================================================

;---------------------------------------------------------------------------
;Artificial Intelligence
;---------------------------------------------------------------------------

;-|-AI-|--------------------------------------------------------------------
[Command]
name = "AI_1"
command = a, x, F, D, a, a, D
time = 1

[Command]
name = "AI_2"
command = a, a, a, a, a, a, b
time = 1

[Command]
name = "AI_3"
command = a, a, b, D, F, b, x
time = 1

[Command]
name = "AI_4"
command = y, a, F, b, B, y, a
time = 1

[Command]
name = "AI_5"
command = a, b, x, y, y, b, b
time = 1

[Command]
name = "AI_6"
command = b, y, y, F, b, B, B
time = 1

[Command]
name = "AI_7"
command = a, y, F, a, x, a, F, b
time = 1

[Command]
name = "AI_8"
command = a, a, b, y, x, B, x
time = 1

[Command]
name = "AI_9"
command = x, x, a, F, F, b, D
time = 1

[Command]
name = "AI_10"
command = x, x, a, F, y, a, a, F
time = 1

[Command]
name = "AI_11"
command = a, b, a, x, a, y, a
time = 1

[Command]
name = "AI_12"
command = b, y, a, F, y, a, x
time = 1

[Command]
name = "AI_13"
command = x, a, y, y, x, B, B
time = 1

[Command]
name = "AI_14"
command = a, F, F, x, B, F, x
time = 1

[Command]
name = "AI_15"
command = y, x, b, b, a, x, y
time = 1

;---------------------------------------------------------------------------
;Commands
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Hyper1

[Command]
name = "Hyper2"
command = ~D, DF, F, x+y

[Command]
name = "Hyper2"
command = ~D, DF, F, x+z

[Command]
name = "Hyper2"
command = ~D, DF, F, y+z

;---------------------------------------------------------------------------
;Hyper2

[Command]
name = "Hyper1"
command = ~D, DB, B, a+b

[Command]
name = "Hyper1"
command = ~D, DB, B, a+c

[Command]
name = "Hyper1"
command = ~D, DB, B, b+c

;---------------------------------------------------------------------------
;Hyper3

[Command]
name = "Hyper3"
command = ~D, DB, B, x+y

[Command]
name = "Hyper3"
command = ~D, DB, B, x+z

[Command]
name = "Hyper3"
command = ~D, DB, B, y+z

;---------------------------------------------------------------------------
;Hyper4

[Command]
name = "Hyper4"
command = ~D, DF, F, a+b

[Command]
name = "Hyper4"
command = ~D, DF, F, a+c

[Command]
name = "Hyper4"
command = ~D, DF, F, b+c

;---------------------------------------------------------------------------
;Specail1

[Command]
name = "SpecialX"
command = ~D,DF,F, x

[Command]
name = "SpecialY"
command = ~D,DF,F, y

[Command]
name = "SpecialZ"
command = ~D,DF,F, z

;-------------------------------------------------------------------------
;Special2

[Command]
name = "SpecialA"
command = ~D,DB,B, a

[Command]
name = "SpecialA"
command = ~D,DB,B,b

[Command]
name = "SpecialA"
command = ~D,DB,B,c

;---------------------------------------------------------------------------
;Specail3

[Command]
name = "SpecialA3"
command = ~D,DF,F, a

[Command]
name = "SpecialB3"
command = ~D,DF,F, b

[Command]
name = "SpecialC3"
command = ~D,DF,F, c

[Command]
name = "Glide"
command = /$D,b

;-------------------------------------------------------------------------
;Counter

[Command]
name = "Counter"
command = ~F, x+a

[Command]
name = "Counter"
command = ~F, y+b

[Command]
name = "Counter"
command = ~F, z+c

[Command]
name = "236Z"
command = z+y+x

;---------------------------------------------------------------------------
; Roll

[Command]
name = "roll_n"
command = ~B, D, DB, x

[Command]
name = "roll_m"
command = ~B, D, DB,  y

[Command]
name = "roll_f"
command = ~B, D, DB, z

;---------------------------------------------------------------------------
; Forward Recovery Roll or Alpha Counter1

[Command]
name = "ac_f_roll_n"
command = ~B, DB, D, x

[Command]
name = "ac_f_roll_m"
command = ~B, DB, D, y

[Command]
name = "ac_f_roll_f"
command = ~B, DB, D, z

;---------------------------------------------------------------------------
; Backward Recovery Roll or Alpha Counter2

[Command]
name = "ac_sweep_b_roll_n"
command = ~B, DB, D, a

[Command]
name = "ac_sweep_b_roll_m"
command = ~B, DB, D, b

[Command]
name = "ac_sweep_b_roll_f"
command = ~B, DB, D, c

;---------------------------------------------------------------------------------------------
;Super Jump

[Command]
name = "Super_Jump"
command = ~D, U

;---------------------------------------------------------------------------------------------
;Double_Tap
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;---------------------------------------------------------------------------------------------
;2/3 button combination
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "guardpush"
command = x+y
time = 5

[Command]
name = "guardpush"
command = x+z
time = 5

[Command]
name = "guardpush"
command = y+z
time = 5

[Command]
name = "throw_p"
command = x+y
time = 5

[Command]
name = "throw_p"
command = y+z
time = 5

[Command]
name = "throw_p"
command = x+z
time = 5

[Command]
name = "throw_k"
command = a+b
time = 5

[Command]
name = "throw_k"
command = b+c
time = 5

[Command]
name = "throw_k"
command = a+c
time = 5

;---------------------------------------------------------------------------------------------
;Dir + button
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "fwd_z"
command = /$F,z
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
name = "back_b"        ;Alternative button command
command = /$B,b
time = 1

[Command]
name = "back_c"        ;Alternative button command
command = /$B,c
time = 1

;---------------------------------------------------------------------------------------------
;One button
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

;---------------------------------------------------------------------------------------------
;Hold button
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
name = "holda"
command = /a
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "pc1"
command = b+y

[Command]
name = "ki"
command = /b+y

;---------------------------------------------------------------------------------------------
;Hold dir
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
name = "SJ"
command = $D, $U

;---------------------------------------------------------------------------
;Artificial Intelligence
;---------------------------------------------------------------------------

[Statedef -1]
;-|-AI-|--------------------------------------------------------------------
[State -1, AI]
type = VarSet
trigger1 = command = "AI_1"
trigger2 = command = "AI_2"
trigger3 = command = "AI_3"
trigger4 = command = "AI_4"
trigger5 = command = "AI_5"
trigger6 = command = "AI_6"
trigger7 = command = "AI_7"
trigger8 = command = "AI_8"
trigger9 = command = "AI_9"
trigger10 = command = "AI_10"
trigger11 = command = "AI_11"
trigger12 = command = "AI_12"
trigger13 = command = "AI_13"
trigger14 = command = "AI_14"
trigger15 = command = "AI_15"
v = 59
value = 1

;--|-AI Defense-|-----------------------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 130

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 131

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 132

[State -1] ;Jump
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
trigger1 = (random = [680,750])|| (random = [380,450])
value = 40

;-|-AI Combo Attempt-|----------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 20) && (random <= 750)
trigger1 = stateno !=200
value = 200

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
trigger1 = (p2bodydist X <= 20) && (random <= 750)
value = 210

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
trigger1 = (p2bodydist X <= 25) && (random <= 750) && (prevstateno = 210) && (movecontact = 1)
value = 220

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
trigger1 = (p2bodydist X <= 25) && (prevstateno = 220) && (movecontact = 1)
value = 7000

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 230

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 7) && (random <= 750)
value = 235

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 240

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 400

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 410

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 25) && (random <= 750) && (prevstateno = 410) && (movecontact = 1)
value = 420

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 430

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 440

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 25) && (random <= 750) && (prevstateno = 440) && (movecontact = 1)
value = 440

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 600

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 610

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 630

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 640

;-|-AI Super Attempt-|----------------------------------------------
[State -1] ;Batarang
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [400,500])
trigger1 = (p2bodydist x <= 35) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1000

[State -1] ;Batarang
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [400,500])
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1010

[State -1] ;Batarang
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [400,500])
trigger1 = (p2bodydist x >= 45) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1020

[State -1] ;Swing
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (Ctrl) && (statetype = S)
triggerall = (random = [300,350]) || (random = [700,750])
trigger1 = (p2bodydist x >= 60) && (prevstateno != 5120) && (p2movetype != H)
value = 1100

[State -1] ;Swing  Air
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (Ctrl) && (statetype = A)
triggerall = (random = [300,350]) || (random = [700,750])
trigger1 = (p2bodydist x >= 60) && (prevstateno != 5120) && (p2movetype != H)
value = 1110

[State -1] ;Granade
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = (random = [0,50]) || (random = [200,250])
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
trigger1 = prevstateno != 1200 && prevstateno != 1210 && prevstateno != 1220
value = 1200

[State -1] ;Granade dash
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
trigger1 =  (prevstateno = 1200) && (p2stateno = 7991) && (statetype != A)
value = 100

[State -1] ;Granade
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = (random = [0,50]) || (random = [200,250])
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
trigger1 = prevstateno != 1200 && prevstateno != 1210 && prevstateno != 1220
value = 1210

[State -1] ;Granade
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S)
triggerall = (random = [0,50]) || (random = [200,250])
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
trigger1 = prevstateno != 1200 && prevstateno != 1210 && prevstateno != 1220
value = 1220

[State -1] ;Glide
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype != S)
triggerall = (random = [600,650]) || (random = [351,380])
trigger1 = (prevstateno != 5120)&& (statetype = A)
value = 1300


;-|-AI Attempt Hyper-|---------------------------------------------
[State -1] ;Batarang
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
triggerall = random = [0,100]
trigger1 = (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 1000) && (numproj = 0)
value = 3100

[State -1] ;Armor
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
triggerall = random = [101,200]
trigger1 = (p2bodydist x >= 50) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1000) && (numproj = 0)
value = 3000

[State -1] ;Gas Bomb
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
triggerall = random = [201,200]
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1000) && (numproj = 0)
value = 3200

[State -1] ;I'm Batman
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
triggerall = random = [201,300]
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1000) && (numproj = 0)
value = 3600

;---------------------------------------------------------------------------
;Commands
;---------------------------------------------------------------------------

;-----------------------------

[State -1, Dash Forward]
type = ChangeState
value = 100
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "FF"

;-----------------------------

[State -1, Jump Back]
type = ChangeState
value = 105
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "BB"


;-----------------------------


[State -1, Hyper4]
type = ChangeState
value = 3200
triggerall = command = "Hyper4"
triggerall = power >= 1000
triggerall = stateno < 3000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------


[State -1, Hyper3]
type = ChangeState
value = 3600
triggerall = command = "Hyper3"
triggerall = power >= 1000
triggerall = stateno < 3000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------


[State -1, Hyper2]
type = ChangeState
value = 3100
triggerall = command = "Hyper2"
triggerall = power >= 1000 
triggerall = stateno < 3000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Hyper1]
type = ChangeState
value = 3000
triggerall = command = "Hyper1"
triggerall = power >= 1000 
triggerall = stateno < 3000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = stateno = 3100

;-----------------------------

[State -1, Special1]
type = ChangeState
value = 1000
triggerall = command = "SpecialX"
triggerall = NumHelper(1050) = 0
triggerall = NumHelper(1060) = 0
triggerall = NumHelper(1070) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special1]
type = ChangeState
value = 1010
triggerall = command = "SpecialY"
triggerall = NumHelper(1050) = 0
triggerall = NumHelper(1060) = 0
triggerall = NumHelper(1070) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special1]
type = ChangeState
value = 1020
triggerall = command = "SpecialZ"
triggerall = NumHelper(1050) = 0
triggerall = NumHelper(1060) = 0
triggerall = NumHelper(1070) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special2]
type = ChangeState
value = 1100
triggerall = stateno < 3000
triggerall = command = "SpecialA"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special3A]
type = ChangeState
value = 1200
triggerall = stateno < 3000
triggerall = command = "SpecialA3"
triggerall = P2stateno != 7991 || P2stateno != 7696
triggerall = numhelper (1206) = 0
triggerall = numhelper (1205) = 0
triggerall = numhelper (1201) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special3B]
type = ChangeState
value = 1210
triggerall = stateno < 3000
triggerall = command = "SpecialB3"
triggerall = P2stateno != 7991 || P2stateno != 7696
triggerall = numhelper (1206) = 0
triggerall = numhelper (1205) = 0
triggerall = numhelper (1201) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special3C]
type = ChangeState
value = 1220
triggerall = stateno < 3000
triggerall = command = "SpecialC3"
triggerall = P2stateno != 7991 || P2stateno != 7696
triggerall = numhelper (1206) = 0
triggerall = numhelper (1205) = 0
triggerall = numhelper (1201) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State 1300, Change]
type = ChangeState
triggerall = Command = "Glide"
trigger1 = Statetype = A && ctrl
trigger1 = stateno != 1300
trigger1 = stateno != 1310
trigger2 = Statetype = A
trigger2 = stateno = [1110,1111]
value = 1300
ctrl = 0

;-----------------------------

[State -1, Special2]
type = ChangeState
value = 1110
triggerall = stateno < 3000 || (stateno = 7001)
triggerall = command = "SpecialA"
trigger1 = Statetype = A && ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------
[State -1]
type = ChangeState
value = 7500
triggerall = Power < 3000 && (command = "pc1")
trigger1 = statetype = S
trigger1 = ctrl

;-----------------------------
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S)
trigger2 = p2movetype != H


;-----------------------------
[State -1, X]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = Statetype = A && ctrl
trigger2 = stateno = 105 && time > 4
trigger3 = stateno = 610

;-----------------------------
[State -1, Y]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact) && time > 2
trigger3 = (StateNo = 630) && (Movecontact) && time > 2
trigger4 = stateno = 105 && time > 4

;-----------------------------
[State -1, Z]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact) && time > 2
trigger3 = (StateNo = 630) && (Movecontact) && time > 2
trigger4 = (StateNo = 610) && (Movecontact) && time > 2
trigger5 = (StateNo = 640) && (Movecontact) && time > 2
trigger6 = stateno = 105 && time > 4

;-----------------------------
[State -1, B]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
trigger3 = (StateNo = 610) && (Movecontact)
trigger4 = (StateNo = 620) && (Movecontact)
trigger5 = (StateNo = 630) && (Movecontact)
trigger6 = stateno = 105 && time > 4

;-----------------------------
[State -1, C]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
trigger3 = (StateNo = 610) && (Movecontact)
trigger4 = (StateNo = 620) && (Movecontact)
trigger5 = (StateNo = 630) && (Movecontact)
trigger6 = (StateNo = 640) && (Movecontact)
trigger7 = stateno = 105 && time > 4

;-----------------------------
[State -1, A]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
trigger3 = stateno = 105 && time > 4

;-----------------------------
[State -1, X agachado]
type = ChangeState
value = 400
triggerall = Command = "x"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)

;-----------------------------
[State -1, X]
type = ChangeState
value = 200
triggerall = Command = "x"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)

;-----------------------------

[State -1, Y agachado]
type = ChangeState
value = 410
triggerall = Command = "y"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211)

;-----------------------------

[State -1, Y]
type = ChangeState
value = 210
triggerall = Command = "y"
triggerall = Command != "holddown"
trigger1 = (StateNo = 200) && (Movecontact) && time > 3

;-----------------------------

[State -1, Y]
type = ChangeState
value = IfElse(P2BodyDist X > 28,210,211)
triggerall = Command = "y"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 230) && (Movecontact) && time > 3
trigger3 = stateno = 211

;-----------------------------

[State -1, Z]
type = ChangeState
value = IfElse(P2BodyDist X > 28,220,221)
triggerall = Command = "z"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact) && time > 3
trigger3 = (StateNo = 230) && (Movecontact) && time > 3
trigger4 = (StateNo = 210) && (Movecontact) && time > 3
trigger5 = (StateNo = 211) && (Movecontact) && time > 3
trigger6 = (StateNo = 240) && (Movecontact) && time > 3
trigger7 = (StateNo = 241) && (Movecontact) && time > 3
 
;-----------------------------

[State -1, C]
type = ChangeState
value = IfElse(P2BodyDist X > 28,250,251)
triggerall = Command = "c"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 210) && (Movecontact)
trigger5 = (StateNo = 211) && (Movecontact)
trigger6 = (StateNo = 240) && (Movecontact)
trigger7 = (StateNo = 241) && (Movecontact)
trigger8 = (StateNo = 221) && (Movecontact)
trigger9 = (StateNo = 220) && (Movecontact)

;-----------------------------

[State -1, Z agachado]
type = ChangeState
value = 420
triggerall = Command = "z"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)
trigger8 = (StateNo = 240) && (Movecontact)
trigger9 = (StateNo = 241) && (Movecontact)
trigger10 = (StateNo = 220) && (Movecontact)
trigger11 = (StateNo = 221) && (Movecontact)
trigger12 = (StateNo = 410) && (Movecontact)
trigger13 = (StateNo = 440) && (Movecontact)

;-----------------------------

[State -1, A agachado]
type = ChangeState
value = 430
triggerall = Command = "a"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (Stateno = 200) && (Movecontact)
trigger3 = (Stateno = 230) && (Movecontact)
trigger4 = (Stateno = 400) && (Movecontact)

;-----------------------------

[State -1, s]
type = ChangeState
value = 195
triggerall = Command = "s"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)

;-----------------------------

[State -1, A]
type = ChangeState
value = 230
triggerall = Command = "a"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (Stateno = 200) && (Movecontact)

;-----------------------------

[State -1, B]
type = ChangeState
value = IfElse(P2BodyDist X > 28,240,241)
triggerall = Command = "b"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 210) && (Movecontact)
trigger5 = (StateNo = 211) && (Movecontact)

;-----------------------------

[State -1, B agachado]
type = ChangeState
value = 440
triggerall = Command = "b"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)
trigger8 = (StateNo = 240) && (Movecontact)
trigger9 = (StateNo = 241) && (Movecontact)
trigger10 = (StateNo = 220) && (Movecontact)
trigger11 = (StateNo = 221) && (Movecontact)

;-----------------------------

[State -1, C agachado]
type = ChangeState
value = 450
triggerall = Command = "c"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)
trigger8 = (StateNo = 250) && (Movecontact)
trigger9 = (StateNo = 251) && (Movecontact)
trigger10 = (StateNo = 420) && (Movecontact)
trigger11 = (StateNo = 421) && (Movecontact)
trigger12 = (StateNo = 410) && (Movecontact)
trigger13 = (StateNo = 440) && (Movecontact)

;-----------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = Command = "SJ"
trigger1 = StateType = S
trigger1 = ctrl

;-----------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = Command = "holdup"
trigger1 = stateno = 221 && movehit

[State -1, Guard Push stand]
type = ChangeState
value = 6300
triggerall = command = "guardpush" && statetype = S
trigger1 = stateno = [150,153]

[State -1, Guard Push crouch]
type = ChangeState
value = 6310
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,153]

[State -1, Guard Push aerial]
type = ChangeState
value = 6320
triggerall = command = "guardpush" && statetype = A
trigger1 = stateno = [154,155]

;------------------------------------
;AI Guard Push (Standing)
;------------------------------------
[State -1, AI Guard Push]
type = ChangeState
value = 6300
triggerall = Var(59) = 1
triggerall = (StateType = S) && (StateType != L)
triggerall = P2life != 0
trigger1 = StateNo = [150,153]
trigger1 = P2BodyDist X >= 71
trigger1 = Time >= 5

;---------------------------------------------------------------------------
;----------------------------- Recovery Roll -------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Near Foward Recovery Roll

[State -1]
type = VarSet
triggerall = Var(59) != 2
triggerall = command = "ac_f_roll_n"
triggerall = alive = 1
trigger1 = stateno = 5050 || stateno = 5071
v = 30
value = 1

[State -1]
type = ChangeState
value = 831
triggerall = Var(59) != 2
triggerall = Var(30) = 1
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
; Medium Foward Recovery Roll

[State -1]
type = VarSet
triggerall = Var(59) != 2
triggerall = command = "ac_f_roll_m"
triggerall = alive = 1
trigger1 = stateno = 5050 || stateno = 5071
v = 30
value = 2

[State -1]
type = ChangeState
value = 832
triggerall = Var(59) != 2
triggerall = Var(30) = 2
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
; Far Foward Recovery Roll

[State -1]
type = VarSet
triggerall = Var(59) != 2
triggerall = command = "ac_f_roll_f"
triggerall = alive = 1
trigger1 = stateno = 5050 || stateno = 5071
v = 30
value = 3

[State -1]
type = ChangeState
value = 840
triggerall = Var(59) != 2
triggerall = Var(30) = 3
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
; Near Backward Recovery Roll

[State -1]
type = VarSet
triggerall = Var(59) != 2
triggerall = command = "ac_sweep_b_roll_n"
triggerall = alive = 1
trigger1 = stateno = 5050 || stateno = 5071
v = 30
value = 4

[State -1]
type = ChangeState
value = 850
triggerall = Var(59) != 2
triggerall = Var(30) = 4
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
; Medium Backward Recovery Roll

[State -1]
type = VarSet
triggerall = Var(59) != 2
triggerall = command = "ac_sweep_b_roll_m"
triggerall = alive = 1
trigger1 = stateno = 5050 || stateno = 5071
v = 30
value = 5

[State -1]
type = ChangeState
value = 855
triggerall = Var(59) != 2
triggerall = Var(30) = 5
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
; Far Backward Recovery Roll

[State -1]
type = VarSet
triggerall = Var(59) != 2
triggerall = command = "ac_sweep_b_roll_f"
triggerall = alive = 1
trigger1 = stateno = 5050 || stateno = 5071
v = 30
value = 6

[State -1]
type = ChangeState
value = 860
triggerall = Var(59) != 2
triggerall = Var(30) = 6
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
;------------------------ Lie Down Recovery Roll ---------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Lie Down Forward Recovery Roll

[State -1]
type = ChangeState
value = 832
triggerall = Var(59) != 2
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

;---------------------------------------------------------------------------
; Lie Down Backward Recovery Roll

[State -1]
type = ChangeState
value = 855
triggerall = Var(59) != 2
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

;---------------------------------------------------------------------------
;----------------------------- Alpha Counter -------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Alpha Counter

[State -1]
type = ChangeState
value = 880
triggerall = Var(59) != 2
triggerall = command = "ac_f_roll_n" || command = "ac_f_roll_m" || command = "ac_f_roll_f"
triggerall = power >= 1000
triggerall = (StateType != A) && (StateType != L)
trigger1 = stateno = [150,152]

;---------------------------------------------------------------------------
; Alpha Counter - Sweep

[State -1]
type = ChangeState
value = 886
triggerall = Var(59) != 2
triggerall = command = "ac_sweep_b_roll_n" || command = "ac_sweep_b_roll_m" || command = "ac_sweep_b_roll_f"
triggerall = power >= 1000
triggerall = (StateType != A) && (StateType != L)
trigger1 = stateno = [150,152]

