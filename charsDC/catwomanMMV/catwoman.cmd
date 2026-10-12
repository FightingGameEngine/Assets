1700; The CMD file.
;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1

;-| Negative Edge H.Motions |----------------------------------------------
[Command]
name = "Chctcombo"
command = ~D, DB, B, x+y
time = 20
[Command]
name = "Chctcombo"   ;Same name as above
command = ~D, DB, B, y+z
time = 20
[Command]
name = "Chctcombo"
command = ~D, DB, B, x+z
time = 20

[Command]
name = "Memorias"
command = ~D, DF, F, x+y
time = 20
[Command]
name = "Memorias"   ;Same name as above
command = ~D, DF, F, y+z
time = 20
[Command]
name = "Memorias"   ;Same name as above
command = ~D, DF, F, x+z
time = 20

[Command]
name = "Super_Air_Grab"
command = ~D, DF, F, a+b
time = 20
[Command]
name = "Super_Air_Grab"   ;Same name as above
command = ~D, DF, F, b+c
time = 20
[Command]
name = "Super_Air_Grab"   ;Same name as above
command = ~D, DF, F, a+c
time = 20

;-------------------------------------------------------------------------
;-------------------------------------------------------------------------
;----------------------  T  E  C  N  I  C  A  S  ---------------------------
;-------------------------------------------------------------------------
;--------------------------------------------------------------------------
[Command]
name = "upper_x"
command = ~F, D, F, x
time = 25
[Command]
name = "upper_y"
command = ~F, D, F, y
time = 25
[Command]
name = "upper_z"
command = ~F, D, F, z
time = 25

[Command]
name = "upper_a"
command = ~F, D, F, a
time = 25
[Command]
name = "upper_b"
command = ~F, D, F, b
time = 25
[Command]
name = "upper_c"
command = ~F, D, F, c
time = 25

[Command]
name = "fdkick_a"
command = ~F, D, DF, a
[Command]
name = "fdkick_b"
command = ~F, D, DF, b
[Command]
name = "fdkick_c"
command = ~F, D, DF, c

[Command]
name = "HCF_x"
command = ~B, F, x
time = 20
[Command]
name = "HCF_y"
command = ~B, F, y
time = 20
[Command]
name = "HCF_z"
command = ~B, F, z
time = 20

[Command]
name = "QCF_x"
command = ~D, DF, F, x
[Command]
name = "QCF_y"
command = ~D, DF, F, y
[Command]
name = "QCF_z"
command = ~D, DF, F, z
[Command]
name = "QCF_a"
command = ~D, DF, F, a
[Command]
name = "QCF_b"
command = ~D, DF, F, b
[Command]
name = "QCF_c"
command = ~D, DF, F, c
[Command]
name = "QCF_s"
command = ~D, DF, F, s

[Command]
name = "QCB_x"
command = ~D, DB, B, x
[Command]
name = "QCB_y"
command = ~D, DB, B, y
[Command]
name = "QCB_z"
command = ~D, DB, B, z
[Command]
name = "QCB_a"
command = ~D, DB, B, a
[Command]
name = "QCB_b"
command = ~D, DB, B, b
[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "FF_a"
command = F, F, ~a
[Command]
name = "FF_b"
command = F, F, ~b
[Command]
name = "FF_c"
command = F, F, ~c

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10
[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "zz"
command = z, z

[Command]
name = "Super Jump"
command = D,$U

;-| Recovery |-------------------------------------------------------------
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
name = "recoveryk"
command = a+b
time = 1
[Command]
name = "recoveryk"
command = b+c
time = 1
[Command]
name = "recoveryk"
command = a+c
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
name = "fwd"
command = $F
time = 1
[Command]
name = "down"
command = $D
time = 1
[Command]
name = "back"
command = $B
time = 1
[Command]
name = "up"
command = $U
time = 1
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

;-| Hold Button |-----------------------------------------------------------
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

[Statedef -1]
;===========================================================================
;======================== S  E  Q  U  E  N  C  I  A ========================
;===========================================================================
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(17) = 0

[State -1, Combo condition Check]
type = VarSet
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 200
trigger2 = stateno = 300
trigger3 = stateno = 400
trigger4 = stateno = 500
var(17) = 1

[State -1, Combo condition Check]
type = VarSet
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 210
trigger2 = stateno = [310,311]
trigger3 = stateno = 410
trigger4 = stateno = 510
var(17) = 2

[State -1, Combo condition Check]
type = VarSet
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 220
trigger2 = stateno = 320
trigger3 = stateno = 420
trigger4 = stateno = 520
var(17) = 3

[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(18) = 0

[State -1, Combo condition Check]
type = VarSet
triggerall = statetype = A
triggerall = movecontact
trigger1 = stateno = 600
trigger2 = stateno = 700
var(18) = 1

[State -1, Combo condition Check]
type = VarSet
triggerall = statetype = A
triggerall = movecontact
trigger1 = stateno = 610
trigger2 = stateno = 710
var(18) = 2

[State -1, Combo condition Check]
type = VarSet
triggerall = statetype = A
triggerall = movecontact
trigger1 = stateno = 620
trigger2 = stateno = 720
var(18) = 3

[State -1, Move Cancel condition Reset]
type = VarSet
trigger1 = 1
var(51) = 0

[State -1, Normal to Special to Hypers]
type = VarSet
trigger1 = stateno = [200,720]
var(51) = 1

[State -1, Normal to Special to Hypers]
type = VarSet
trigger1 = stateno = [1000,2900]
var(51) = 2

;---------------------------------------------------------------------------
; Counter
;[State -1, Counter]
;type = ChangeState
;value = 900
;triggerall = power >= 1000
;triggerall = command = "x" && command = "y" || command = "y" && command = "z" || command = "x" && command = "z" || command = "x" && command = "y" && command = "z"
;triggerall = statetype != A
;trigger1 = stateno = 150
;trigger2 = stateno = 151
;trigger3 = stateno = 152
;trigger4 = stateno = 153


;===========================================================================
;===========================================================================
;==========================  E  S  P  C  A  I  S  ==========================
;===========================================================================
;===========================================================================
;Chicote combo
[State -1, Chicote combo]
type = ChangeState
value = 3000
triggerall = !AIlevel
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = command = "Chctcombo"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) >= 1
trigger2 = movecontact

;---------------------------------------------------
;Memorias
[State -1, Memorias]
type = ChangeState
value = 3100
triggerall = !AIlevel
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = command = "Memorias"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) >= 1
trigger2 = movecontact

;---------------------------------------------------
;Super Air Grab
[State -1, Super_Air_Grab]
type = ChangeState
value = 3200
triggerall = !AIlevel
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = command = "Super_Air_Grab"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(51) >= 1
trigger2 = movecontact


;===========================================================================
;===========================================================================
;=======================  T  E  C  N  I  C  A  S  ==========================
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;Agarrao ar
[State -1, Agarrao ar]
type = ChangeState
value = 2100
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "QCF_a"  ||  command = "QCF_b"  ||   command = "QCF_c"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact

;---------------------------------------------------------------------------
;Chicote p/ cima Fraco
[State -1, Chicote p/ cima Fraco]
type = ChangeState
value = 1100
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "upper_x"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact
;---------------------------------------------------------------------------
;Chicote p/ cima Medio
[State -1, Chicote p/ cima Medio]
type = ChangeState
value = 1110
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "upper_y"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact
;---------------------------------------------------------------------------
;Chicote p/ cima Forte
[State -1, Chicote p/ cima Forte]
type = ChangeState
value = 1120
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "upper_z"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact

;---------------------------------------------------------------------------
;Chicote fraco
[State -1, Chicote fraco]
type = ChangeState
value = 1000
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "QCF_x"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact
;---------------------------------------------------------------------------
;Chicote medio
[State -1, Chicote medio]
type = ChangeState
value = 1010
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "QCF_y"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact
;---------------------------------------------------------------------------
;Chicote forte
[State -1, Chicote forte]
type = ChangeState
value = 1020
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "QCF_z"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact

;---------------------------------------------------------------------------
;Chicote X fraco
[State -1, Chicote X fraco]
type = ChangeState
value = 1200
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "QCB_x"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact

;---------------------------------------------------------------------------
;Chicote X medio
[State -1, Chicote X medio]
type = ChangeState
value = 1210
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "QCB_y"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact
;---------------------------------------------------------------------------
;Chicote X forte
[State -1, Chicote X forte]
type = ChangeState
value = 1220
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "QCB_z"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact

;---------------------------------------------------------------------------
; Rolar para tras sem atk
[State -1, Rolar para tras sem atk]
type = ChangeState
value = 1700
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "QCB_a"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact

;---------------------------------------
; Rolar para frente sem atk
[State -1, Rolar para frente sem atk]
type = ChangeState
value = 1710
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "QCB_b"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact

;---------------------------------------
; Rolar para frente sem atk
[State -1, Rolar para frente sem atk]
type = ChangeState
value = 1720
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "QCB_c"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact

;---------------------------------------------------------------------------
; Chicote ar fraco
[State -1, Chicote ar fraco]
type = ChangeState
value = 1500
triggerall = roundstate = 2 && !Ailevel && statetype = A
triggerall = command = "QCF_x"  ||  command = "QCF_y"   ||  command = "QCF_z"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact

;---------------------------------------------------------------------------
; Voadora ar fraco
[State -1, Voadora ar fraco]
type = ChangeState
value = 1600
triggerall = roundstate = 2 && !Ailevel && statetype = A
triggerall = command = "QCF_a"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact
;---------------------------------------------------------------------------
; Voadora ar medio
[State -1, Voadora ar medio]
type = ChangeState
value = 1610
triggerall = roundstate = 2 && !Ailevel && statetype = A
triggerall = command = "QCF_b"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact
;---------------------------------------------------------------------------
; Voadora ar forte
[State -1, Voadora ar forte]
type = ChangeState
value = 1620
triggerall = roundstate = 2 && !Ailevel && statetype = A
triggerall = command = "QCF_c"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = movecontact

;===========================================================================
;===========================================================================
;==========================  E  X  T  R  A  S  =============================
;===========================================================================
;===========================================================================
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = roundstate = 2 && !Ailevel && statetype = S
trigger1 = command = "FF"
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = roundstate = 2 && !Ailevel && statetype = S
trigger1 = command = "BB"
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 7710
triggerall = roundstate = 2 && !Ailevel && statetype != A
trigger1 = command = "Super Jump"
trigger1 = ctrl
trigger2 = command = "Super Jump" || command = "holdup"
trigger2 = stateno = 420 && MoveHit

;---------------------------------------------------------------------------
[State -1, Roll recovery foward]
type = ChangeState
value = 5230
triggerall = roundstate = 2 && !Ailevel && alive
triggerall = stateno = 5100 || stateno = 5110 || stateno = 5120
trigger1 = command = "holdfwd"
trigger1 = Time = 1

[State -1, Roll recovery Backward]
type = ChangeState
value = 5220
triggerall = roundstate = 2 && !Ailevel && alive
triggerall = stateno = 5100 || stateno = 5110 || stateno = 5120
trigger1 = command = "holdback"
trigger1 = Time = 1

;---------------------------------------------------------------------------
;Guard Push (Standing)
[State -1, Guard Push]
type = ChangeState
value = 7610
triggerall = roundstate = 2 && !Ailevel && statetype = S
triggerall = command = "recovery"
trigger1 = stateno = [150,153]

;Guard Push (Crouching)
[State -1, Guard Push]
type = ChangeState
value = 7615
triggerall = roundstate = 2 && !Ailevel && statetype = C
triggerall = command = "recovery"
trigger1 = stateno = [150,153]

;Guard Push (Air)
[State -1, Guard Push]
type = ChangeState
value = 7620
triggerall = roundstate = 2 && !Ailevel && statetype = A
triggerall = command = "recovery"
trigger1 = stateno = [154,155]

;---------------------------------------------------------------------------
;Punch Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = roundstate = 2 && !Ailevel && statetype = S
triggerall = command = "y" && command = "z"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = p2movetype != H && (p2statetype = S || p2statetype = C)
triggerall = stateno != 100
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kick Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 850
triggerall = roundstate = 2 && !Ailevel && statetype = S
triggerall = command = "b" && command = "c"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = p2movetype != H && (p2statetype = S || p2statetype = C)
triggerall = stateno != 100
trigger1 = ctrl

[State -1,Pisar na parede]
type = ChangeState
value = 48
triggerall = roundstate = 2 && !Ailevel
triggerall = command = "holdfwd" && statetype = A
triggerall = stateno != 48 && stateno != 49 && stateno != 101
triggerall = Pos Y < -50 && backEdgeDist < 3
trigger1 = ctrl = 1

[State -1,Pisar na parede]
type = ChangeState
value = 49
triggerall = roundstate = 2 && !Ailevel
triggerall = command = "holdback" && statetype = A
triggerall = stateno != 48 && stateno != 49 && stateno != 101
triggerall = Pos Y < -50 && frontEdgeDist < 3
trigger1 = ctrl = 1

;===========================================================================
;===========================================================================
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = roundstate = 2 && !Ailevel 
triggerall = command = "start" && statetype != A
trigger1 = ctrl

;===========================================================================
;===========================================================================
;===========================================================================
;===========================================================================

[State -1, Standing Punch]
type = ChangeState
value = 200
triggerall = roundstate = 2 && !Ailevel && statetype = S
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1,  Stand Kick]
type = ChangeState
value = 300
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = ctrl && statetype = S
trigger2 = var(17) = 1
trigger2 = stateno != 300
trigger2 = stateno != 500
;---------------------------------------------------------------------------
[State -1, Crouch Punch]
type = ChangeState
value = 400
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = var(17) = 1
trigger2 = stateno != 300
trigger2 = stateno != 400
trigger2 = stateno != 500
;---------------------------------------------------------------------------
[State -1, Crouch Kick]
type = ChangeState
value = 500
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = var(17) = 1
trigger2 = stateno != 500

;---------------------------------------------------------------------------
[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerall = roundstate = 2 && !Ailevel
triggerall = command != "holddown"
triggerall= command = "y"
trigger1 = ctrl && statetype = S
trigger2 = var(17) = 1

;---------------------------------------------------------------------------
[State -1, Stand Medium Kick]
type = ChangeState
value = 310
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = ctrl && statetype = S
trigger2 = var(17) = 1
trigger3 = var(17) = 2
trigger3 = stateno != 310
trigger3 = stateno != 510

;---------------------------------------------------------------------------
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = var(17) = 1
trigger3 = var(17) = 2
trigger3 = stateno != 410
trigger3 = stateno != 310
trigger3 = stateno != 510

;---------------------------------------------------------------------------
[State -1, Crouch Medium Kick]
type = ChangeState
value = 510
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = var(17) = 1
trigger3 = var(17) = 2
trigger3 = stateno != 510

;---------------------------------------------------------------------------
[State -1, Standing Strong Punch]
type = ChangeState
value = 220
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command != "holddown"
triggerall = command = "z"
trigger1 = ctrl && statetype = S
trigger2 = var(17) = [1,2]

;---------------------------------------------------------------------------
[State -1, Stand Strong Kick]
type = ChangeState
value = 320
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = ctrl && statetype = S
trigger2 = var(17) = [1,2]

;---------------------------------------------------------------------------
[State -1, Crouch Strong Punch]
type = ChangeState
value = 420
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = var(17) = [1,2]

;---------------------------------------------------------------------------
[State -1, Crouch Strong Kick]
type = ChangeState
value = 520
triggerall = roundstate = 2 && !Ailevel && statetype != A
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = ctrl && statetype = C
trigger2 = var(17) = [1,2]

;---------------------------------------------------------------------------
[State -1, Air Punch]
type = ChangeState
value = 600
triggerall = roundstate = 2 && !Ailevel && statetype = A
triggerall = command = "x"
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Air Kick]
type = ChangeState
value = 700
triggerall = roundstate = 2 && !Ailevel && statetype = A
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(18) = 1
trigger2 = stateno != 700

;---------------------------------------------------------------------------
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = roundstate = 2 && !Ailevel && statetype = A
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(18) = 1

;---------------------------------------------------------------------------
[State -1, Air Medium Kick]
type = ChangeState
value = 710
triggerall = roundstate = 2 && !Ailevel && statetype = A
triggerall = command = "b"
trigger1 = ctrl
trigger2 = var(18) = 1
trigger3 = var(18) = 2
trigger3 = stateno != 710

;---------------------------------------------------------------------------
[State -1, Air Strong Punch]
type = ChangeState
value = 620
triggerall = roundstate = 2 && !Ailevel && statetype = A
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(18) = [1,2]

;---------------------------------------------------------------------------
[State -1, Air Strong Kick]
type = ChangeState
value = 720
triggerall = roundstate = 2 && !Ailevel && statetype = A
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(18) = [1,2]

;==============================================================================
;==============================================================================
;===============      // +       =||=    ======================================
;===============     //===+       ||     ======================================
;===============    //     +     _||_    ======================================
;==============================================================================
;==============================================================================
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1,AI run fwd]
type = ChangeState
value = 100
triggerall = roundstate = 2 && Ailevel && random < (50 * (AIlevel ** 2 / 64.0))
triggerall = stateno != 100 && stateno != 105 && statetype != A
triggerall = !inguarddist && p2movetype != A
trigger1 = ctrl && p2bodydist X > 150

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = roundstate = 2 && Ailevel && statetype != A
triggerall = numenemy < 2 && random < (50 * (AIlevel ** 2 / 64.0))
triggerall = BackEdgeDist > 65 && p2bodydist x < 100 && p2movetype = A
triggerall = stateno != 100 && stateno != 105
trigger1 = ctrl

;-------------------------------------------------------------------------------
;Guarding states
;---------------------------------------------------------------------------
[State -1,AI Guard]
type = ChangeState
triggerall = roundstate = 2 && Ailevel && random < (333 * (AIlevel ** 2 / 64.0))
triggerall = inguarddist && (stateno != [120, 155])
triggerall = !(enemynear, hitdefattr = SCA, AT) && (enemynear, time < 120)
trigger1 = ctrl
value = 120


;------------------------------------
;AI Guard Push (Standing)
;------------------------------------
[State -1, AI Guard Push]
type = ChangeState
value = 7610
triggerall = roundstate = 2 && Ailevel && StateType = S
triggerall = Time >= 5 && random < (ifelse(BackEdgeDist < 30, 100, 300) * (AIlevel ** 2 / 64.0))
triggerall = (StateNo = [150,153]) && (p2bodydist x =[0,40]) 
trigger1 = ctrl

;------------------------------------
;AI Guard Push (Crouching)
;------------------------------------
[State -1, AI Guard Push]
type = ChangeState
value = 7615
triggerall = roundstate = 2 && Ailevel && StateType = C
triggerall = Time >= 5 && random < (ifelse(BackEdgeDist < 30, 100, 300) * (AIlevel ** 2 / 64.0))
triggerall = (StateNo = [150,153]) && (p2bodydist x =[0,40])
trigger1 = ctrl

;------------------------------------
;AI Guard Push (Air)
;------------------------------------
[State -1, AI Guard Push]
type = ChangeState
value = 7620
triggerall = roundstate = 2 && Ailevel && StateType = A
triggerall = Time >= 5 && random < (ifelse(BackEdgeDist < 30, 100, 300) * (AIlevel ** 2 / 64.0))
triggerall = (StateNo = [154,155]) && (p2bodydist x =[0,40])
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Follow Launcher]
type = ChangeState
value = 7720
triggerall = roundstate = 2 && Ailevel && StateType != A
triggerall = movehit
trigger1 = stateno = 420

;---------------------------------------------------------------------------
;Throws
[State -1, Throw]
type = ChangeState
value = ifelse(random < 200,800,850)
triggerall = roundstate = 2 && Ailevel && StateType = S
triggerall = p2bodydist X <= 20 && p2bodydist y = [-25,25]
triggerall = (enemynear, movetype != H && p2stateno = [120, 155])
triggerall = (enemynear, statetype = S || enemynear, statetype = C)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))

;-----------------------------------------------------------------------------
;AI Combo
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, standing light punch]
type = ChangeState
value = 200
triggerall = roundstate = 2 && Ailevel && random < (150 * (AIlevel ** 2 / 64.0))
triggerall = statetype = S && p2statetype != L
triggerall = p2bodydist X <= 88 && p2bodydist y = [-50,50]
trigger1 = ctrl && stateno != 100 

;---------------------------------------------------------------------------
[State -1, Stand Kick]
type = ChangeState
value = 300
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && p2statetype != L
triggerall = p2bodydist X <= 47 && p2bodydist y = [-50,50] 
trigger1 = ctrl && stateno != 100 && statetype = S && random < (77 * (AIlevel ** 2 / 64.0))
trigger2 = var(17) = 1 && random < (134 * (AIlevel ** 2 / 64.0))
trigger2 = stateno != 300
trigger2 = stateno != 500

;---------------------------------------------------------------------------
[State -1, Crouch Punch]
type = ChangeState
value = 400
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && p2statetype != L
triggerall = p2bodydist X <= 88 && p2bodydist y = [-50,50] 
trigger1 = ctrl && stateno != 100 && statetype = C && random < (88 * (AIlevel ** 2 / 64.0))
trigger2 = var(17) = 1 && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = stateno != 300
trigger2 = stateno != 400
trigger2 = stateno != 500

;---------------------------------------------------------------------------
[State -1, Crouch Kick]
type = ChangeState
value = 500
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && (p2statetype != A && p2statetype != L)
triggerall = p2bodydist X <= 64 && p2bodydist y = [-50,50] 
trigger1 = ctrl && stateno != 100 && statetype = C && random < (66 * (AIlevel ** 2 / 64.0))
trigger2 = var(17) = 1 && random < (68 * (AIlevel ** 2 / 64.0))
trigger2 = stateno != 500 && ((p2stateno = [120, 155]) && p2statetype != C)
trigger3 = var(17) = 1 && random < (150 * (AIlevel ** 2 / 64.0))
trigger3 = stateno != 500 && (p2stateno != [120, 155])

;---------------------------------------------------------------------------
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && p2statetype != L
triggerall = p2bodydist X <= 87 && p2bodydist y = [-50,50] 
trigger1 = ctrl && stateno != 100 && statetype = S && random < (55 * (AIlevel ** 2 / 64.0))
trigger2 = var(17) = 1
trigger2 = random < (ifelse(stateno=500, 200, ifelse(stateno = 300, 150, ifelse(stateno = 400, 100, 50))) * (AIlevel ** 2 / 64.0))

;---------------------------------------------------------------------------
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && p2statetype != L
triggerall = p2bodydist X <= 79 && p2bodydist y = [-50,50] 
trigger1 = ctrl && stateno != 100 && statetype = C && random < (44 * (AIlevel ** 2 / 64.0))
trigger2 = var(17) = 1
trigger2 = random < (ifelse(stateno=500, 150, ifelse(stateno = 300, 113, ifelse(stateno = 400, 76, 37))) * (AIlevel ** 2 / 64.0))
trigger3 = var(17) = 2 && random < (200 * (AIlevel ** 2 / 64.0))
trigger3 = stateno != 310 && stateno != 410 && stateno != 510

;---------------------------------------------------------------------------
[State -1, Stand Medium Kick]
type = ChangeState
value = 310
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && p2statetype != L
triggerall = p2bodydist X <= 75 && p2bodydist y = [-50,50] 
trigger1 = ctrl && stateno != 100 && statetype = S && random < (33 * (AIlevel ** 2 / 64.0))
trigger2 = var(17) = 1
trigger2 = random < (ifelse(stateno=500, 100, ifelse(stateno = 300, 75, ifelse(stateno = 400, 50, 25))) * (AIlevel ** 2 / 64.0))
trigger3 = var(17) = 2 && random < (133 * (AIlevel ** 2 / 64.0))
trigger3 = stateno != 310 && stateno != 510

;---------------------------------------------------------------------------
[State -1, Crouch Medium Kick]
type = ChangeState
value = 510
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && (p2statetype != A && p2statetype != L)
triggerall = p2bodydist X <= 79 && p2bodydist y = [-50,50] 
trigger1 = ctrl && stateno != 100 && statetype = C && random < (33 * (AIlevel ** 2 / 64.0))
trigger2 = var(17) = 1
trigger2 = random < (ifelse(stateno=500, 50, ifelse(stateno = 300, 38, ifelse(stateno = 400, 26, 12))) * (AIlevel ** 2 / 64.0))
trigger3 = var(17) = 2 && random < (66 * (AIlevel ** 2 / 64.0))
trigger3 = stateno != 510 && ((p2stateno = [120, 155]) && p2statetype != C)
trigger4 = (var(17) = [1, 2]) && random < (75 * (AIlevel ** 2 / 64.0))
trigger4 = stateno != 510 && (p2stateno != [120, 155])

;---------------------------------------------------------------------------
[State -1, Crouch Strong Punch]
type = ChangeState
value = 420
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && p2statetype != L
triggerall = p2bodydist X <= 75 && p2bodydist y = [-50,50] 
trigger1 = ctrl && stateno != 100 && statetype = C && random < (22 * (AIlevel ** 2 / 64.0))
trigger2 = var(17) = 1
trigger2 = random < (ifelse(stateno=500, 25, ifelse(stateno = 300, 19, ifelse(stateno = 400, 13, 6))) * (AIlevel ** 2 / 64.0))
trigger3 = var(17) = 2 && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = random < (ifelse(stateno=510, 200, ifelse(stateno = 310, 100, ifelse(stateno = 410, 50, 25))) * (AIlevel ** 2 / 64.0))

;---------------------------------------------------------------------------
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && p2statetype != L
triggerall = p2bodydist X <= 76 && p2bodydist y = [-50,50] 
trigger1 = ctrl && stateno != 100 && statetype = S && random < (22 * (AIlevel ** 2 / 64.0))
trigger2 = var(17) = 1
trigger2 = random < (ifelse(stateno=500, 25, ifelse(stateno = 300, 19, ifelse(stateno = 400, 13, 6))) * (AIlevel ** 2 / 64.0))
trigger3 = var(17) = 2 && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = random < (ifelse(stateno=510, 200, ifelse(stateno = 310, 100, ifelse(stateno = 410, 50, 25))) * (AIlevel ** 2 / 64.0))

;---------------------------------------------------------------------------
[State -1, Stand Strong Kick]
type = ChangeState
value = 320
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && p2statetype != L
triggerall = p2bodydist X <= 95 && p2bodydist y = [-50,50]
trigger1 = ctrl && stateno != 100 && statetype = S && random < (22 * (AIlevel ** 2 / 64.0))
trigger2 = var(17) = 1
trigger2 = random < (ifelse(stateno=500, 25, ifelse(stateno = 300, 19, ifelse(stateno = 400, 13, 6))) * (AIlevel ** 2 / 64.0))
trigger3 = var(17) = 2 && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = random < (ifelse(stateno=510, 200, ifelse(stateno = 310, 100, ifelse(stateno = 410, 50, 25))) * (AIlevel ** 2 / 64.0))

;---------------------------------------------------------------------------
[State -1, Crouch Strong Kick]
type = ChangeState
value = 520
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && (p2statetype != A && p2statetype != L)
triggerall = p2bodydist X <= 84 && p2bodydist y = [-50,50] 
trigger1 = ctrl && statetype = C && random < (22 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && stateno = 100 && random < (150 * (AIlevel ** 2 / 64.0))
trigger3 = var(17) = 1
trigger3 = random < (ifelse(stateno=500, 25, ifelse(stateno = 300, 19, ifelse(stateno = 400, 13, 6))) * (AIlevel ** 2 / 64.0))
trigger4 = var(17) = 2 && random < (50 * (AIlevel ** 2 / 64.0))
trigger4 = random < (ifelse(stateno=510, 200, ifelse(stateno = 310, 100, ifelse(stateno = 410, 50, 25))) * (AIlevel ** 2 / 64.0))

;----|AI Specials |---------------------------------------------------
;---------------------------------------------------------------------------
[State -1, chicote frente]
type = ChangeState
value = 1000+ifelse(var(51) || p2bodydist X >= 130, ifelse(random <= 667, 20, 10), 0)
triggerall = roundstate = 2 && Ailevel && statetype != A && (stateno != 100 && stateno != 105)
triggerall = (p2statetype != A || (prevstateno = [1200, 1225])) && p2statetype != L
triggerall = p2dist Y = [-90,0]
trigger1 = ctrl && p2bodydist X >= 130 && random < (10 * (AIlevel ** 2 / 64.0))
trigger2 = var(51) = 1 && random < (ifelse(var(17) = 3, 80, ifelse (var(17) = 2, 40, 20)) * (AIlevel ** 2 / 64.0))

[State -1, chicote anti ar]
type = ChangeState
value = 1100
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && (stateno != 100 && stateno != 105)
triggerall = p2statetype != C && p2statetype != L
triggerall = p2bodydist X <= ifelse(p2statetype = A, 104, 105) && (p2dist Y = [-170,0]) 
trigger1 = ctrl && random < (13 * (AIlevel ** 2 / 64.0))
trigger2 = var(51) = 1 && random < (ifelse(var(17) = 3, 27, ifelse (var(17) = 2, 13, 7)) * (AIlevel ** 2 / 64.0))

[State -1, chicote anti ar]
type = ChangeState
value = 1110
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && (stateno != 100 && stateno != 105)
triggerall = p2statetype = A && p2statetype != L
triggerall = p2bodydist X <= 180 && (p2dist Y = [-160,-70]) 
trigger1 = ctrl && random < (8 * (AIlevel ** 2 / 64.0))

[State -1, chicote anti ar]
type = ChangeState
value = 1120
triggerall = roundstate = 2 && Ailevel
triggerall = statetype != A && (stateno != 100 && stateno != 105)
triggerall = p2statetype = A && p2statetype != L
triggerall = p2bodydist X <= 180 && (p2dist Y = [-170,-20]) 
trigger1 = ctrl && random < (17 * (AIlevel ** 2 / 64.0))

[State -1, chicote X]
type = ChangeState
value = 1200
triggerall = roundstate = 2 && Ailevel && statetype != A
triggerall = p2statetype != L && (stateno != 100 && stateno != 105)
triggerall = p2bodydist X <= 100 && (p2dist Y = [-140,0]) 
trigger1 = ctrl && random < (8 * (AIlevel ** 2 / 64.0))
trigger2 = var(51) = 1 && random < (ifelse(var(17) = 3, 20, ifelse (var(17) = 2, 13, 7)) * (AIlevel ** 2 / 64.0))

[State -1, chicote X]
type = ChangeState
value = 1210
triggerall = roundstate = 2 && Ailevel && statetype != A
triggerall = p2statetype != L && (stateno != 100 && stateno != 105)
triggerall = p2bodydist X <= 100 && (p2dist Y = [-140,0]) 
trigger1 = ctrl && random < (10 * (AIlevel ** 2 / 64.0))
trigger2 = var(51) = 1 && (var(17) = 3 && stateno!= 420)  
trigger2 = random < (27 * (AIlevel ** 2 / 64.0))

[State -1, chicote X]
type = ChangeState
value = 1220
triggerall = roundstate = 2 && Ailevel && statetype != A
triggerall = p2statetype != L && (stateno != 100 && stateno != 105)
triggerall = p2bodydist X <= 136  && (p2bodydist Y = [-40,40]) 
trigger1 = ctrl && random < (12 * (AIlevel ** 2 / 64.0))
trigger2 = var(51) = 1 && stateno!= 520  
trigger2 = random < (33 * (AIlevel ** 2 / 64.0))

[State -1, Chicote ar]
type = ChangeState
value = 1500
triggerall = roundstate = 2 && Ailevel && statetype = A
triggerall = p2statetype = A && (p2bodydist X = [61, 158]) && (p2bodydist Y = [-66,34])
trigger1 = ctrl
trigger2 = var(51) = 1
trigger2 = random < (ifelse(var(18) = 3, 70, ifelse (var(18) = 2, 47, 23)) * (AIlevel ** 2 / 64.0))

[State -1, Chicote ar]
type = ChangeState
value = 1600
triggerall = roundstate = 2 && Ailevel && p2statetype != L 
triggerall = statetype = A && (vel y = [ -3, 3]) && frontedgedist >= 95
triggerall = (p2bodydist x = [0, 45]) && (p2bodydist Y = [-50,50])
trigger1 = ctrl && backedgedist >= 166 && random < (20 * (AIlevel ** 2 / 64.0))
trigger2 = var(51) = 1
trigger2 = random < (ifelse(var(18) = 3, 23, ifelse (var(18) = 2, 16, 8)) * (AIlevel ** 2 / 64.0))

[State -1, Chicote ar]
type = ChangeState
value = 1610
triggerall = roundstate = 2 && Ailevel && p2statetype != L 
triggerall = statetype = A && (vel y = [ -3, 3])
triggerall = (p2bodydist x = [0, 45]) && (p2bodydist Y = [-50,50])
trigger1 = ctrl && backedgedist >= 63 && random < (13 * (AIlevel ** 2 / 64.0))
trigger2 = var(51) = 1
trigger2 = random < (ifelse(var(18) = 3, 23, ifelse (var(18) = 2, 16, 8)) * (AIlevel ** 2 / 64.0))

[State -1, Chicote ar]
type = ChangeState
value = 1620
triggerall = roundstate = 2 && Ailevel && p2statetype != L 
triggerall = statetype = A && (vel y = [ -3, 3]) && frontedgedist >= 95
triggerall = (p2bodydist x = [0, 45]) && (p2bodydist Y = [-50,50])
trigger1 = ctrl && random < (20 * (AIlevel ** 2 / 64.0))
trigger2 = var(51) = 1
trigger2 = random < (ifelse(var(18) = 3, 23, ifelse (var(18) = 2, 16, 8)) * (AIlevel ** 2 / 64.0))

;----|AI Hypers |---------------------------------------------------
;-------------------------------------------------------------------------
;Chicote combo
[State -1, Chicote combo]
type = ChangeState
value = 3000
triggerall = roundstate = 2 && Ailevel 
triggerall = statetype != A && power >= 1000
triggerall = (p2bodydist x = [0, 106]) && (enemynear, statetype != A && enemynear, statetype != L) 
trigger1 = ctrl && random < (5 * (AIlevel ** 2 / 64.0))
trigger2 = var(51) = 1
trigger2 = random < (ifelse(var(18) = 3, 50, ifelse (var(18) = 2, 34, 17)) * (AIlevel ** 2 / 64.0))
trigger3 = var(51) = 2
trigger3 = random < (80 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------
;Memorias
[State -1, Memorias]
type = ChangeState
value = 3100
triggerall = roundstate = 2 && Ailevel 
triggerall = statetype != A && power >= 1000
triggerall = (p2bodydist x = [0, 120]) && enemynear, statetype = S 
trigger1 = ctrl && random < (5 * (AIlevel ** 2 / 64.0))
trigger2 = var(51) = 1 && !moveguarded
trigger2 = random < (ifelse(var(18) = 3, 50, ifelse (var(18) = 2, 34, 17)) * (AIlevel ** 2 / 64.0))
trigger3 = var(51) = 2 && !moveguarded
trigger3 = random < (80 * (AIlevel ** 2 / 64.0))
