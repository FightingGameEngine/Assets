;------------------------------------------
; Definicion file para Silver Banshee,
; Sprites: GM Spectre. 
; codigos y Sonido: Jhonny_DC.
; Revision de codigos y Sprites: Animaraz
;------------------------------------------

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
command.time = 15
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
[Command]
name = "mega sonico"
command = ~D, DB, B, a+y
time = 20

[Command]
name = "mega sonico"
command = ~D, DB, B, x+b
time = 20

[Command]
name = "omni_confunde"
command = ~D, DF, F, a+b
time = 20

[Command]
name = "omni_paraliza"
command = ~D, DF, F, b+c
time = 20

[Command]
name = "omni_daña"
command = ~D, DF, F, a+c
time = 20

[Command]
name = "fly"
command = a+b+c
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "sonico agachada"
command = ~D, DF, F, x

[Command]
name = "sonico parada"
command = ~D, DF, F, y

[Command]
name = "sonico volando"
command = ~D, DF, F, z

[Command]
name = "patada especial"
command = ~D, DB, B, c

[Command]
name = "patada giro"
command = ~D, DB, B, z


;-| Double Tap |------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1


;-| Dir + Button |----------------------------------------------
[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "downfwd_a"
command = /DF,a
time = 1

[Command]
name = "downfwd_b"
command = /DF,b
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
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
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
time = 1

;-| Single Button |-----------------------------------------------
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
name = "burla"
command = s
time = 1

;-| Hold Button |---------------------------------------------
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

;-| Hold Dir |-------------------------------------------------
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

;---------------------------------------------------------
;--------------| State Entry |------------------------------
;---------------------------------------------------------
; Jamas quites la siguiente linea. Es requerida por el CMD standard.
[Statedef -1]

;==================================================================
;RunBack 	;Correr hacia atras
[State -1, [State -1]
type = ChangeState
value = 105
trigger1=command="BB"
trigger1 = statetype = S
trigger1 = ctrl

;-------------------------------------------------------------
;RunFwd		;Correr hacia adelante
[State -1, [State -1]
type = ChangeState
value = 100
trigger1=command="FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;-------------------------------------------------------------
; Burlarse
[State -1]
type = ChangeState
value = 195
trigger1 = command = "burla"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;VOLAR
;Fly Mode ON
[State -1, Fly Mode]
type = ChangeState
value = 8000
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = Pos Y < 0
trigger1 = command = "fly"


;Fly Mode OFF
[State -1, Fly Mode]
type = ChangeState
value = 8002
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = command = "fly"


;=============================================================
;--------------| GOLPES ESPECIALES |------------------------------
;=============================================================
;---------------------------------------------------------------------------
; MISILES

;"Mega Sonico"
[State -1]
type = ChangeState
value = 1010
triggerall = command = "mega sonico"
triggerall = power > 1000
trigger1 = statetype != A
trigger1 = ctrl

;"Mega Sonico Aereo"
[State -1]
type = ChangeState
value = 1020
triggerall = command = "mega sonico"
triggerall = power > 1000
trigger1 = statetype = A
trigger1 = ctrl = 1
;trigger2 = stateno = [200, 450]
;trigger2 = movecontact = 1

;Rayo Sonico Agachada
[State -1]
type = ChangeState
value = 1002
triggerall = command = "sonico agachada"
triggerall = power > 100
trigger1 = statetype != A
trigger1 = ctrl

;Rayo Sonico Parada
[State -1]
type = ChangeState
value = 1000
triggerall = command = "sonico parada"
triggerall = power > 200
trigger1 = statetype != A
trigger1 = ctrl

;Rayo Sonico En El Aire
[State -1]
type = ChangeState
value = 1007
triggerall = command = "sonico volando"
triggerall = power > 100
trigger1 = statetype != A
trigger1 = ctrl

;Rayo Sonico En El Aire
[State -1]
type = ChangeState
value = 1021
triggerall = command = "sonico volando"
triggerall = power > 100
trigger1 = statetype = A
trigger1 = ctrl = 1
;trigger2 = stateno = [200, 450]
;trigger2 = movecontact = 1


;---------------------------------------------------------------------------
;Patada en reversa con desplazamiento
[State -1, [State -1]
type = ChangeState
value = 670 ;271
triggerall=command="patada giro"
triggerall=command !="holddown"
triggerall = power > 500
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 670 ;271
trigger2 = MoveContact

;-------------------------------------------------------------
;Rayo Sonico Que confunde
[State -1]
type = ChangeState
value = 1004
triggerall = command = "omni_confunde"
triggerall = power > 500
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------
;Rayo Sonico Paralizador
[State -1]
type = ChangeState
value = 1005
triggerall = command = "omni_paraliza"
triggerall = power > 500
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------
;Rayo Sonico Que Daña
[State -1]
type = ChangeState
value = 1006
triggerall = command = "omni_daña"
triggerall = power > 750
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------
;Patada Fuerte de Pie Especial
[State -1, [State -1]
type = ChangeState
value = 260
triggerall=command="patada especial"
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = MoveContact
trigger3 = stateno = 240
trigger3 = MoveContact

;------------------------------------------------------------
;Patada Fuerte Aerea Especial
[State -1, [State -1]
type = ChangeState
value = 660
triggerall=command="patada especial"
triggerall=command !="holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630
trigger2 = MoveContact
trigger3 = stateno = 640
trigger3 = MoveContact

;=============================================================
;--------------| GOLPES NORMALES |------------------------------
;=============================================================

;Golpe corto de pie
[State -1, [State -1]
type = ChangeState
value = 200
triggerall=command="x"
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------
;Golpe medio de pie
[State -1, [State -1]
type = ChangeState
value = 210
triggerall=command="y"
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = time > 7

;----------------------------------------------------------------
;Golpe largo de pie
[State -1, [State -1]
type = ChangeState
value = 220
triggerall=command="z"
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;-------------------------------------------------------------
;Patada corta de pie 1
[State -1, [State -1]
type = ChangeState
value = 230
triggerall=command="a"
triggerall=command !="holddown"
trigger1 = p2bodydist X < 25
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;-------------------------------------------------------------
;Patada corta de pie 2
[State -1, [State -1]
type = ChangeState
value = 231
triggerall=command="a"
triggerall=command !="holddown"
trigger1 = p2bodydist X > 24
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;-------------------------------------------------------------
;Patada media de pie
[State -1, [State -1]
type = ChangeState
value = 240
triggerall=command="b"
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = MoveContact

;------------------------------------------------------------
;Patada larga de pie
[State -1, [State -1]
type = ChangeState
value = 250
triggerall=command="c"
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = MoveContact
trigger3 = stateno = 240
trigger3 = MoveContact

;------------------------------------------------------------
;Golpe corto agachado
[State -1, [State -1]
type = ChangeState
value = 400
triggerall=command="x"
triggerall=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time > 7

;------------------------------------------------------------
;Golpe medio agachado
[State -1, [State -1]
type = ChangeState
value = 410
triggerall=command="y"
triggerall=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = MoveContact

;------------------------------------------------------------
;Golpe largo agachado
[State -1, [State -1]
type = ChangeState
value = 420
triggerall=command="z"
triggerall=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = MoveContact
trigger3 = stateno = 410
trigger3 = MoveContact

;------------------------------------------------------------
;Patada corta agachado
[State -1, [State -1]
type = ChangeState
value = 430
triggerall=command="a"
triggerall=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = time > 7

;--------------------------------------------------------------
;Patada media agachado
[State -1, [State -1]
type = ChangeState
value = 440
triggerall=command="b"
triggerall=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = MoveContact

;-------------------------------------------------------------
;Patada larga agachado1
[State -1, [State -1]
type = ChangeState
value = 450
triggerall=command="c"
triggerall=command="holddown"
trigger1 = p2bodydist X > 24
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = MoveContact
trigger3 = stateno = 440
trigger3 = MoveContact

;-------------------------------------------------------------
;Patada larga agachado2
[State -1, [State -1]
type = ChangeState
value = 460
triggerall=command="c"
triggerall=command="holddown"
trigger1 = p2bodydist X < 25
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = MoveContact
trigger3 = stateno = 440
trigger3 = MoveContact

;------------------------------------------------------------
;Puño corto aereo
[State -1, [State -1]
type = ChangeState
value = 600
trigger1=command="x"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------------------------------
;Puño medio aereo
[State -1, [State -1]
type = ChangeState
value = 610
trigger1=command="y"
trigger1 = statetype = A
trigger1 = ctrl

;-----------------------------------------------------------
;Puño largo aereo
[State -1, [State -1]
type = ChangeState
value = 620
trigger1=command="z"
trigger1 = statetype = A
trigger1 = ctrl

;-----------------------------------------------------------
;Patada corta aerea
[State -1, [State -1]
type = ChangeState
value = 630
trigger1=command="a"
trigger1 = statetype = A
trigger1 = ctrl

;----------------------------------------------------------
;Patada media aerea
[State -1, [State -1]
type = ChangeState
value = 640
trigger1=command="b"
trigger1 = statetype = A
trigger1 = ctrl

;----------------------------------------------------------
;Patada larga aerea
[State -1, [State -1]
type = ChangeState
value = 650
trigger1=command="c"
trigger1 = statetype = A
trigger1 = ctrl

