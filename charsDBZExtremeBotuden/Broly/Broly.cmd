;================================================================================================
;================================================================================================
;-Comandos de este personaje.
;================================================================================================
;================================================================================================


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
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;================================================================================================
;================================================================================================
;-Inteligencia artificial del personaje.

;-Comandos para la activación de la AI, deves cambiarlos
;-de acuerdo al nombre de tu personaje,yo uso 15,puedes
;-agregar asta 30 si tu gustas,pero los que agregues deben
;-ser diferentes a los 15 que ya tiene.

;-Ejemplo:
 ;[Command]
;name = "Shogun_AI_1"
;command = F, D, F, D, D, F,U,B,B,F
;time = 0
;================================================================================================
;================================================================================================
 [Command]
name = "kof_AI_1"
command = F, D, F, D, D, F,U,B,B,F
time = 0

[Command]
name = "kof_AI_2"
command = D, F, D, F, D, F,x,x,x,x
time = 0


[Command]
name = "kof_AI_3"
command = B, B, F, F, B, B,y,y,y,y
time = 0

[Command]
name = "kof_AI_4"
command = U, U, D, D, D, U,b,b,b,b
time = 0

[Command]
name = "kof_AI_5"
command = B, F, U, U, D, B,a,a,a,a
time = 0

[Command]
name = "kof_AI_6"
command = D, D, D, F, B, U,U,U,U,U
time = 0

[Command]
name = "kof_AI_7"
command = F, F, F, F, F, F,a,x,y,b
time = 0

[Command]
name = "kof_AI_8"
command = D, D, D, D, D, D,b,b,y,y
time = 0

[Command]
name = "kof_AI_9"
command = U, U, U, U, U, U,a,a,x,x
time = 0

[Command]
name = "kof_AI_10"
command = B, B, B, B, B, B, z+x
time = 0


[Command]
name = "kof_AI_11"
command = D, D, D, F, F, F,U,U,U,B, a+b
time = 0


[Command]
name = "kof_AI_12"
command = F, F, U, U, F, F,U,B,U,B, x+y+z
time = 0


[Command]
name = "kof_AI_13"
command = U, U, B, B, D, F,D,U,U,D, b+c
time = 0

[Command]
name = "kof_AI_14"
command = B, F, D, U, B, D,F,B,B,B, c+a
time = 0

[Command]
name = "kof_AI_15"
command = D, F, D, F, B, F,U,F,F,F, a+b+c
time = 0

;================================================================================================
;-| Hiden Super Desesparation Move |--------------------------------------------------------
;================================================================================================

[command]
name =  "Dark Hole"
command = ~D, DF, F, D, DF, F, x+y
time = 25

[command]
name =  "Nightmare Rakuhouha"
command = ~D, DF, F, D, DF, F, x+y
time = 25

[command]
name =  "Omega Rakuhouha"
command = ~D, DF, F, D, DF, F, x+y
time = 25


;================================================================================================
;-| Súper Desesperation Move |--------------------------------------------------------
;================================================================================================

[command]
name =  "Ura 360 Shiki Oni Yaki SDM"
command= ~D, DB, B, D, DB, B, a+b
time = 30

[command]
name =  "Super Sabre Combo Dash"
command= ~D, DB, B, DB, D, DF, F, a+b
time = 30

[command]
name =  "Super Sabre Combo Dash"
command= ~D, DB, B, DB, D, DF, F, c
time = 30

;================================================================================================
;-| Desesperation Move |--------------------------------------------------------
;================================================================================================

[command]
name =  "Mega Sabre Attack 2"
command= ~D, DF, F, D, DF, F, b
time = 30

[command]
name =  "Mega Sabre Attack 1"
command= ~D, DF, F, D, DF, F, a
time = 30

[command]
name =  "Mega Shot Attack X"
command= ~D, DF, F, D, DF, F, a+b
time = 30

[command]
name =  "Mega Shot Attack Y"
command= ~D, DF, F, D, DF, F, a+b
time = 30

[command]
name =  "Omega Shot Attack"
command= ~D, DF, F, D, DF, F, x
time = 30

[command]
name =  "Omega Shot Attack"
command= ~D, DF, F, D, DF, F, y
time = 30

[command]
name =  "Sabre Combo Dash 1"
command= ~D, DF, F, D, DF, F, a
time = 30

[command]
name =  "Sabre Combo Dash 2"
command= ~D, DF, F, D, DF, F, b
time = 30

[command]
name =  "Nightmare Sabre Combo Dash 1"
command= ~D, DB, B, D, DB, B, a
time = 30

[command]
name =  "Nightmare Sabre Combo Dash 2"
command= ~D, DB, B, DB, D, DF, F, b
time = 30

;================================================================================================
;-| Special Move |------------------------------------------------------
;================================================================================================

[Command]
name = "Ryuenjin 1"
command = ~D, DF, F, a

[Command]
name = "Ryuenjin 2"
command = ~D, DF, F, b

[Command]
name = "Omega Ryuenjin 1"
command = ~F, D, DF, x

[Command]
name = "Omega Ryuenjin 2"
command = ~F, D, DF, y

[Command]
name = "108 Shiki Yami Barai Ex"
command = ~D, DF, F, x+y

[Command]
name = "Z-Buster 1"
command = ~D, DF, F, x

[Command]
name = "Z-Buster2"
command = ~D, DF, F, y

[Command]
name = "Hienkiaku 1"
command = ~D, DB, B, a

[Command]
name = "Hienkiaku 2"
command = ~D, DB, B, b

[Command]
name = "101 Shiki OboroGuruma Ex"
command = ~B, D, DB, a+b

[Command]
name = "Nightmare teleport 1"
command = ~50$B,$F, a

[Command]
name = "Nightmare teleport 2"
command = ~50$B,$F, b

[Command]
name = "Nightmare teleport 3"
command = ~50$B,$F, x

[Command]
name = "Nightmare teleport 4"
command = ~50$B,$F, y

[Command]
name = "Hadangeki 1"
command = ~40$B, F, x
time = 15

[Command]
name = "Hadangeki 2"
command = ~40$B, F, y
time = 15

[Command]
name = "202 Shiki Koto Tsuki You EX"
command = ~F, DF, D, DB, B, a+b
time = 20

[Command]
name = "Z-Sabre Attack 1"
command = ~D, DB, B, x
time = 20

[Command]
name = "Z-Sabre Attack 2"
command = ~D, DB, B, y
time = 20

[Command]
name ="Ge Shiki Gou Fu You"
command =/$F,a

[Command]
name ="Ge Shiki Naraku Otoshi"
command = y


[Command]
name ="Puño_especial_1"
command =/$B, x

[Command]
name ="Puño_fuerte_de_pie_1"
command =/$F, y

[Command]
name ="Puño_especial_2"
command =/$F,x

[Command]
name ="Patada_media_de_pie"
command =/$F,a



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
name = "Aereo_golpe_de_rechace" ;Required (do not remove)
command = y+b
time = 1

[Command]
name = "Aereo_golpe_de_rechace" ;Required (do not remove)
command = c
time = 1

[Command]
name = "Golpe_de_rechace"  ;Required (do not remove)
command = y+b
;time = 1

[Command]
name = "Golpe_de_rechace"  ;Required (do not remove)
command = c
;time = 1

[Command]
name = "recovery" ;Required (do not remove)
command = x+a

[Command]
name = "recovery2" ;Required (do not remove)
command = x
;time = 1  ;sin tiempo para que se active de inmediato

[Command]
name = "recovery2" ;Required (do not remove)
command = y

[Command]
name = "recovery2" ;Required (do not remove)
command = a

[Command]
name = "recovery2" ;Required (do not remove)
command = b

;[Command]
;name = "recovery" ;Required (do not remove)
;command = z
;time = 1

;-| Dir + Button |---------------------------------------------------------

[Command]  ;Required (do not remove)
name = "longjump" ;-Super salto
command = ~$D, $U
time = 8


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



;_Estos comandos son para recuperarse del dizzy por combos
;-que esta en el estado 5300,no quitar.
;-| commandos recovery dizzy|---------------------------------------------------------

[Command]
name = "recovery_dizzy_x"
command = x,x,x,x,x
time = 30

[Command]
name = "recovery_dizzy_y"
command = y,y,y,y,y
time = 30

[Command]
name = "recovery_dizzy_a"
command = a,a,a,a,a
time = 30

[Command]
name = "recovery_dizzy_b"
command = b,b,b,b,b
time = 30
;----------------------------------------------------------


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
command = /$x
time = 1

[Command]
name = "hold_xx"
command = /$x
time = 1

[Command]
name = "hold_xx"
command = /$y
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_z"
command = /$z
time = 1

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_c"
command = /$c
time = 1

[Command]
name = "hold_s"
command = /$s
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

; Don't remove the following line. It's required by the CMD standard.

;===========================================================================
;===========================================================================

[Statedef -1]
;===========================================================================
;-Ctrls para la activación de la AI, deves cambiarlos
;-de acuerdo al nombre de tu personaje

;-Ejemplo:
;trigger1 =  command = "Shogun_AI_1"
;===========================================================================
[State -1, VarSet,kof,AI]
type = VarSet
Triggerall = RoundState = [1,2]
triggerall =!var(59)
trigger1 =  command = "kof_AI_1"
trigger2 =  command = "kof_AI_2"
trigger3 =  command = "kof_AI_3"
trigger4 =  command = "kof_AI_4"
trigger5 =  command = "kof_AI_5"
trigger6 =  command = "kof_AI_6"
trigger7 =  command = "kof_AI_7"
trigger8 =  command = "kof_AI_8"
trigger9 =  command = "kof_AI_9"
trigger10 = command = "kof_AI_10"
trigger11 = command = "kof_AI_11"
trigger12 = command = "kof_AI_12"
trigger13 = command = "kof_AI_13"
trigger14 = command = "kof_AI_14"
trigger15 = command = "kof_AI_15"
;v = 59
;value = 1
var(59)=10

;================================================================================================
;-Este ctrl desactiva la AI
;================================================================================================
[State -1, AI_OFF]
Type = VarSet
Triggerall = var(59)
Triggerall = RoundState != 2
Trigger1 = Ctrl || !Alive || !P2life
var(59) = 0

;================================================================================================
;-Ctls para la AI(Tienes que programar tus códigos)
;-por ahora solo tiene programados evasión y correr al frente
;-y escape de saltos hacia atrás y recobrarte antes de caer en tierra.
;===========================================================================
[State -1,Evasión adelante AI]
type = ChangeState
value = 300
triggerall =var(59);roundstate=2 && var(59)= 1
triggerall = statetype = S
triggerall = stateno != 300
triggerall = random =[600,999]
triggerall = ctrl
trigger1= enemy, NumProj >= 1 && P2BodyDist X <= 50
trigger2= P2MoveType =A  && HitDefAttr(NA,SA,HA)
trigger3= Enemy, MoveType =A


;===========================================================================

[State -1,Recobrarse antes de caer, AI ]
type = ChangeState
value = 5200
triggerall =var(59);roundstate=2 && var(59)= 1
triggerall = random =[500,900]
triggerall = Alive
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
trigger1 = StateNo = 5050
trigger2 = StateNo = 5071

;===========================================================================

[State -1, Correr adelante, AI]
type = ChangeState
value = 100
triggerall =var(59);roundstate=2 && var(59)= 1
triggerall = random =[700,900]
triggerall = Alive
triggerall = stateno !=[100,101]
triggerall= statetype = S && ctrl
trigger1= P2BodyDist X >=50 && p2movetype=I && movetype!=A


;===========================================================================

[State -1, Saltos de escape atrás,AI]
type = ChangeState
value = 105
triggerall =var(59);roundstate=2 && var(59)= 1
triggerall = random =[500,900]
triggerall = Alive
triggerall = stateno !=[105,107]
triggerall = statetype = S && ctrl
trigger1= P2BodyDist X <= 50 && p2MoveType =A
;===========================================================================
;-fin de la AI
;===========================================================================

;===========================================================================
;-Movimientos básicos normales, especiales, y supers del personaje
;-debes de programar los tuyos de acuerdo a tu personaje.
;===========================================================================

;================================================================================================
;===============================================================================
;-Ahora aquí te dejo un ejemplo de como programar un super especial
;-con combos,utilizando los hidef básicos del personaje es una guia
;-usala creo que te servirá de referencia.
;================================================================================================

;Dark Hole
[State -1, Dark Hole]
type = ChangeState
value = 3000
triggerall = command = "Dark Hole"
triggerall = power >= 3000
trigger1 = statetype != S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 248 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact
trigger13 = stateno = 220 && movecontact
trigger14 = stateno = 250 && movecontact

;Nightmare Rakuhouha
[State -1, Nightmare Rakuhouha]
type = ChangeState
value = 3000
triggerall = command = "Dark Hole"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 248 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact
trigger13 = stateno = 220 && movecontact
trigger14 = stateno = 250 && movecontact

;Omega Rakuhouha
[State -1, Nightmare Rakuhouha]
type = Null
value = 3200
triggerall = command = "Dark Hole"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 248 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact
trigger13 = stateno = 220 && movecontact
trigger14 = stateno = 250 && movecontact

;------------------------------------------------------------------------------

;Ura 360 Shiki Oni Yaki SDM
[State -1, EX Ura 360 Shiki Oni Yaki]
type = null
value = 3100
triggerall = command ="Ura 360 Shiki Oni Yaki SDM"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = stateno !=3100
trigger1 = (statetype = S) || (statetype = C)
trigger1 = ctrl

;------------------------------------------------------------------------------
;Mega Shot Attack
[State -1, Mega Shot Attack]
type = ChangeState
value = 2100
triggerall = command ="Mega Shot Attack X"
triggerall = power >= 2000
trigger1 = statetype != S
trigger1 = ctrl
trigger2 = (stateno = 605) && movecontact
trigger3 = (stateno = 635) && movecontact
trigger4 = (stateno = 630) && movecontact

;Mega Shot Attack
[State -1, Mega Shot Attack]
type = ChangeState
value = 2120
triggerall = command ="Mega Shot Attack Y"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 605) && movecontact
trigger3 = (stateno = 635) && movecontact
trigger4 = (stateno = 630) && movecontact

;Omega Shot Attack
[State -1, Omega Shot Attack]
type = Null
value = 2120
triggerall = command ="Omega Shot Attack"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = stateno !=2120
trigger1 = (statetype = S) || (statetype = C)
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 248 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact
trigger13 = stateno = 220 && movecontact
trigger14 = stateno = 250 && movecontact
trigger15 = stateno = 1000 && movecontact
trigger16 = stateno = 1101 && AnimElemtime(1) >= 0 && AnimElemtime(2) < 0  && movecontact
trigger17 = stateno = 1104 && AnimElemtime(1) >= 0 && AnimElemtime(2) < 0  && movecontact
trigger18 = stateno = 1200 && AnimElemtime(11) >= 0 && AnimElemtime(13)
trigger19 = stateno = 1203 && AnimElemtime(11) >= 0 && AnimElemtime(13)
trigger20 = stateno = 1400 && AnimElemtime(7) >= 0 && AnimElemtime(8) < 0
trigger21 = stateno = 1402 && AnimElemtime(12) >= 0 && AnimElemtime(14) < 0
trigger22 = stateno = 1500 && movecontact
trigger23 = stateno = 1501 && movecontact
trigger24 = stateno = 1502 && movecontact
trigger25 = stateno = 1503 && movecontact

;------------------------------------------------------------------------------
;Mega Sabre Attack 2
[State -1, Mega Shot Attack 2]
type = Null
value = 2210
triggerall = command ="Mega Sabre Attack 2"
triggerall = power >= 1000
triggerall = numprojID(1506) = 0
triggerall = statetype != A
triggerall = stateno !=2210
trigger1 = (statetype = S) || (statetype = C)
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 248 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact
trigger13 = stateno = 220 && movecontact
trigger14 = stateno = 250 && movecontact
trigger15 = stateno = 1000 && movecontact
trigger16 = stateno = 1101 && AnimElemtime(1) >= 0 && AnimElemtime(2) < 0  && movecontact
trigger17 = stateno = 1104 && AnimElemtime(1) >= 0 && AnimElemtime(2) < 0  && movecontact
trigger18 = stateno = 1200 && AnimElemtime(11) >= 0 && AnimElemtime(13)
trigger19 = stateno = 1203 && AnimElemtime(11) >= 0 && AnimElemtime(13)
trigger20 = stateno = 1400 && AnimElemtime(7) >= 0 && AnimElemtime(8) < 0
trigger21 = stateno = 1402 && AnimElemtime(12) >= 0 && AnimElemtime(14) < 0
trigger22 = stateno = 1500 && movecontact
trigger23 = stateno = 1501 && movecontact
trigger24 = stateno = 1502 && movecontact
trigger25 = stateno = 1503 && movecontact

;Mega Sabre Attack 1
[State -1, Mega Shot Attack 1]
type = Null
value = 2200
triggerall = command ="Mega Sabre Attack 1"
triggerall = power >= 1000
triggerall = numprojID(1506) = 0
triggerall = statetype != A
triggerall = stateno !=2200
trigger1 = (statetype = S) || (statetype = C)
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 248 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact
trigger13 = stateno = 220 && movecontact
trigger14 = stateno = 250 && movecontact
trigger15 = stateno = 1000 && movecontact
trigger16 = stateno = 1101 && AnimElemtime(1) >= 0 && AnimElemtime(2) < 0  && movecontact
trigger17 = stateno = 1104 && AnimElemtime(1) >= 0 && AnimElemtime(2) < 0  && movecontact
trigger18 = stateno = 1200 && AnimElemtime(11) >= 0 && AnimElemtime(13)
trigger19 = stateno = 1203 && AnimElemtime(11) >= 0 && AnimElemtime(13)
trigger20 = stateno = 1400 && AnimElemtime(7) >= 0 && AnimElemtime(8) < 0
trigger21 = stateno = 1402 && AnimElemtime(12) >= 0 && AnimElemtime(14) < 0
trigger22 = stateno = 1500 && movecontact
trigger23 = stateno = 1501 && movecontact
trigger24 = stateno = 1502 && movecontact
trigger25 = stateno = 1503 && movecontact

;------------------------------------------------------------------------------
;Super Sabre Combo Dash
[State -1, Super Sabre Combo Dash]
type = Null
value = 2500
triggerall = Var(40) = 0
triggerall = command ="Super Sabre Combo Dash"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = stateno !=2500
trigger1 = (statetype = S) || (statetype = C)
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 248 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact
trigger13 = stateno = 220 && movecontact
trigger14 = stateno = 250 && movecontact
trigger15 = stateno = 1000 && movecontact
trigger16 = stateno = 1101 && movecontact
trigger17 = stateno = 1104 && movecontact
trigger18 = stateno = 1200 && AnimElemtime(11) >= 0 && AnimElemtime(13)
trigger19 = stateno = 1203 && AnimElemtime(11) >= 0 && AnimElemtime(13)
trigger20 = stateno = 1400 && AnimElemtime(7) >= 0 && AnimElemtime(8) < 0
trigger21 = stateno = 1402 && AnimElemtime(12) >= 0 && AnimElemtime(14) < 0
trigger22 = stateno = 1500 && movecontact
trigger23 = stateno = 1501 && movecontact
trigger24 = stateno = 1502 && movecontact
trigger25 = stateno = 1503 && movecontact
trigger26 = stateno = 2010 && AnimElemtime(4) >= 0 && AnimElemtime(11) < 0

;------------------------------------------------------------------------------
;Sabre Combo Dash 1
[State -1, Sabre Combo Dash 1]
type = ChangeState
value = 2000
triggerall = Var(40) = 0
triggerall = command ="Sabre Combo Dash 1"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = stateno !=2500
trigger1 = (statetype = S) || (statetype = C)
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 248 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact
trigger13 = stateno = 220 && movecontact
trigger14 = stateno = 250 && movecontact
trigger15 = stateno = 1000 && movecontact
trigger16 = stateno = 1101 && AnimElemtime(1) >= 0 && AnimElemtime(2) < 0  && movecontact
trigger17 = stateno = 1104 && AnimElemtime(1) >= 0 && AnimElemtime(2) < 0  && movecontact
trigger18 = stateno = 1200 && AnimElemtime(11) >= 0 && AnimElemtime(13)
trigger19 = stateno = 1203 && AnimElemtime(11) >= 0 && AnimElemtime(13)
trigger20 = stateno = 1400 && AnimElemtime(7) >= 0 && AnimElemtime(8) < 0
trigger21 = stateno = 1402 && AnimElemtime(12) >= 0 && AnimElemtime(15) < 0
trigger22 = stateno = 1500 && movecontact
trigger23 = stateno = 1501 && movecontact
trigger24 = stateno = 1502 && movecontact
trigger25 = stateno = 1503 && movecontact

;Sabre Combo Dash 2
[State -1, Sabre Combo Dash 2]
type = ChangeState
value = 2000
triggerall = Var(40) = 0
triggerall = command ="Sabre Combo Dash 2"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = stateno !=2500
trigger1 = (statetype = S) || (statetype = C)
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 248 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact
trigger13 = stateno = 220 && movecontact
trigger14 = stateno = 250 && movecontact
trigger15 = stateno = 1000 && movecontact
trigger16 = stateno = 1101 && AnimElemtime(1) >= 0 && AnimElemtime(2) < 0  && movecontact
trigger17 = stateno = 1104 && AnimElemtime(1) >= 0 && AnimElemtime(2) < 0  && movecontact
trigger18 = stateno = 1200 && AnimElemtime(11) >= 0 && AnimElemtime(13)
trigger19 = stateno = 1203 && AnimElemtime(11) >= 0 && AnimElemtime(13)
trigger20 = stateno = 1400 && AnimElemtime(7) >= 0 && AnimElemtime(8) < 0
trigger21 = stateno = 1402 && AnimElemtime(12) >= 0 && AnimElemtime(15) < 0
trigger22 = stateno = 1500 && movecontact
trigger23 = stateno = 1501 && movecontact
trigger24 = stateno = 1502 && movecontact
trigger25 = stateno = 1503 && movecontact

;Nightmare Sabre Combo Dash 1
[State -1, Nightmare Sabre Combo Dash 1]
type = null
value = 2020
triggerall = command ="Nightmare Sabre Combo Dash 1"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = stateno !=2500
trigger1 = (statetype = S) || (statetype = C)
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 248 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact
trigger13 = stateno = 220 && movecontact
trigger14 = stateno = 250 && movecontact
trigger15 = stateno = 1000 && movecontact
trigger16 = stateno = 1101 && AnimElemtime(1) >= 0 && AnimElemtime(2) < 0  && movecontact
trigger17 = stateno = 1104 && AnimElemtime(1) >= 0 && AnimElemtime(2) < 0  && movecontact
trigger18 = stateno = 1200 && AnimElemtime(11) >= 0 && AnimElemtime(13)
trigger19 = stateno = 1203 && AnimElemtime(11) >= 0 && AnimElemtime(13)
trigger20 = stateno = 1400 && AnimElemtime(7) >= 0 && AnimElemtime(8) < 0
trigger21 = stateno = 1402 && AnimElemtime(13) >= 0 && AnimElemtime(15) < 0
trigger22 = stateno = 1500 && movecontact
trigger23 = stateno = 1501 && movecontact
trigger24 = stateno = 1502 && movecontact
trigger25 = stateno = 1503 && movecontact

;Nightmare Sabre Combo Dash 2
[State -1, Nightmare Sabre Combo Dash 2]
type = null
value = 2020
triggerall = command ="Nightmare Sabre Combo Dash 1"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = stateno !=2500
trigger1 = (statetype = S) || (statetype = C)
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 248 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact
trigger13 = stateno = 220 && movecontact
trigger14 = stateno = 250 && movecontact
trigger15 = stateno = 1000 && movecontact
trigger16 = stateno = 1101 && AnimElemtime(1) >= 0 && AnimElemtime(2) < 0  && movecontact
trigger17 = stateno = 1104 && AnimElemtime(1) >= 0 && AnimElemtime(2) < 0  && movecontact
trigger18 = stateno = 1200 && AnimElemtime(11) >= 0 && AnimElemtime(13)
trigger19 = stateno = 1203 && AnimElemtime(11) >= 0 && AnimElemtime(13)
trigger20 = stateno = 1400 && AnimElemtime(7) >= 0 && AnimElemtime(8) < 0
trigger21 = stateno = 1402 && AnimElemtime(13) >= 0 && AnimElemtime(15) < 0
trigger22 = stateno = 1500 && movecontact
trigger23 = stateno = 1501 && movecontact
trigger24 = stateno = 1502 && movecontact
trigger25 = stateno = 1503 && movecontact

;------------------------------------------------------------------------------
; Ryuenjin 1
[State -1, Ryuenjin 1]
type = ChangeState
value = 1100
triggerall = Var(40) = 0
triggerall = command = "Ryuenjin 1"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 248 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact
trigger13 = stateno = 220 && movecontact
trigger14 = stateno = 250 && movecontact

; Ryuenjin 2
[State -1, Ryuenjin 2]
type = ChangeState
value = 1103
triggerall = Var(40) = 0
triggerall = command = "Ryuenjin 2"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 248 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact
trigger13 = stateno = 220 && movecontact
trigger14 = stateno = 250 && movecontact

;Omega Ryuenjin 1
[State -1, Omega Ryuenjin 1]
type = ChangeState
value = 1101
triggerall = command = "Ryuenjin 1"
triggerall = statetype != S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 248 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact
trigger13 = stateno = 220 && movecontact
trigger14 = stateno = 250 && movecontact

;Omega Ryuenjin 2
[State -1, Omega Ryuenjin 2]
type = ChangeState
value = 1104
triggerall = command = "Ryuenjin 2"
triggerall = statetype != S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 248 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact
trigger13 = stateno = 220 && movecontact
trigger14 = stateno = 250 && movecontact

;------------------------------------------------------------------------------
; 108 Shiki Yami Barai EX
[State -1, 108 Shiki Yami Barai EX]
type = null
value = 1010
triggerall = command = "108 Shiki Yami Barai Ex"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = numprojID(1000) = 0
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact


;------------------------------------------------------------------------------
; Z-Buster 1
[State -1, Z-Buster 1]
type = ChangeState
value = 1000
triggerall = numprojID(1000) = 0
triggerall = command = "Z-Buster 1"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 248 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact
trigger13 = stateno = 220 && movecontact
trigger14 = stateno = 250 && movecontact

[State -1, Z-Buster 2]
type = changeState
value = 1003
triggerall = Var(40) = 0
triggerall = command = "Z-Buster2"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 248 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact
trigger13 = stateno = 220 && movecontact
trigger14 = stateno = 250 && movecontact

; Air Z-Buster 1
[State -1, Air Z-Buster 1]
type = null
value = 1001
triggerall = Var(40) = 0
triggerall = command = "Z-Buster 1"
triggerall = statetype != S
triggerall = numprojID(1000) = 0
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 248 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact
trigger13 = stateno = 220 && movecontact
trigger14 = stateno = 250 && movecontact
trigger15 = stateno = 102
trigger16 = stateno = 103

; Air Z-Buster 1
[State -1, Air Z-Buster 1]
type = null
value = 1004
triggerall = Var(40) = 0
triggerall = command = "Z-Buster2"
triggerall = statetype != S
triggerall = numprojID(1000) = 0
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 248 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact
trigger13 = stateno = 220 && movecontact
trigger14 = stateno = 250 && movecontact
trigger15 = stateno = 102
trigger16 = stateno = 103

;------------------------------------------------------------------------------
; Hienkiaku 1
[State -1, Hienkiaku 1]
type = ChangeState
value = 1200
triggerall = Var(40) = 0
triggerall = command = "Hienkiaku 1"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 248 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact
trigger13 = stateno = 220 && movecontact
trigger14 = stateno = 250 && movecontact

;------------------------------------------------------------------------------
; Hienkiaku 2
[State -1, 75 Hienkiaku 2]
type = ChangeState
value = 1203
triggerall = Var(40) = 0
triggerall = command = "Hienkiaku 2"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 248 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact
trigger13 = stateno = 220 && movecontact
trigger14 = stateno = 250 && movecontact

;------------------------------------------------------------------------------
; Nightmare teleport
[State -1, Nightmare teleport]
type = Null
value = 1300
triggerall = command = "Nightmare teleport 1"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 248 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact
trigger13 = stateno = 220 && movecontact
trigger14 = stateno = 250 && movecontact

; Nightmare teleport 2
[State -1, Nightmare teleport 2]
type = Null
value = 1301
triggerall = command = "Nightmare teleport 2"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 248 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact
trigger13 = stateno = 220 && movecontact
trigger14 = stateno = 250 && movecontact

; Nightmare teleport 3
[State -1, Nightmare teleport 3]
type = null
value = 1302
triggerall = command = "Nightmare teleport 3"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 248 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact
trigger13 = stateno = 220 && movecontact
trigger14 = stateno = 250 && movecontact

; Nightmare teleport 4
[State -1, Nightmare teleport 4]
type = Null
value = 1303
triggerall = command = "Nightmare teleport 4"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 248 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact
trigger13 = stateno = 220 && movecontact
trigger14 = stateno = 250 && movecontact
;------------------------------------------------------------------------------
; Hadangeki 1
[State -1, Hadangeki 1]
type = null
value = 1400
triggerall = Var(40) = 0
triggerall = command = "Hadangeki 1"
triggerall = statetype != A
triggerall = numprojID(1400) = 0
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 248 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact
trigger13 = stateno = 220 && movecontact
trigger14 = stateno = 250 && movecontact

;------------------------------------------------------------------------------
; Hadangeki 2
[State -1, 910 Hadangeki 2]
type = null
value = 1402
triggerall = Var(40) = 0
triggerall = command = "Hadangeki 2"
triggerall = statetype != A
triggerall = numprojID(1400) = 0
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 248 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact
trigger13 = stateno = 220 && movecontact
trigger14 = stateno = 250 && movecontact

;------------------------------------------------------------------------------
;-202 Shiki Koto Tsuki You EX
[State -1, 202 Shiki Koto Tsuki You EX]
type = null
value = 1506
triggerall = command = "202 Shiki Koto Tsuki You EX"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact

;------------------------------------------------------------------------------
;Z-Sabre Attack 1
[State -1, Z-Sabre Attacku 1]
type = ChangeState
value = 1500
triggerall = Var(40) = 0
triggerall = command = "Z-Sabre Attack 1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact

;------------------------------------------------------------------------------
;-Z-Sabre Attack 2
[State -1, Z-Sabre Attack 2]
type = ChangeState
value = 1504
triggerall = Var(40) = 0
triggerall = command = "Z-Sabre Attack 2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
trigger11 = stateno = 300 && movecontact
trigger12 = stateno = 315 && movecontact

;------------------------------------------------------------------------------
;Power Charge
[State -1, Power Charge]
type = ChangeState
value = 900
triggerall = power!=powermax
triggerall = command != "holdfwd"
triggerall = command = "z"
triggerall = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
;Dash cancel
[State -1, Dash cancel]
type = changestate
value = 110
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl
;trigger2 = stateno = 205 && movecontact
;trigger3 = stateno = 210 && movecontact
;trigger4 = stateno = 215 && movecontact
;trigger5 = stateno = 235 && movecontact
;trigger6 = stateno = 248 && movecontact
;trigger7 = stateno = 400 && movecontact
;trigger8 = stateno = 410 && movecontact
;trigger9 = stateno = 430 && movecontact
;trigger10 = stateno = 440 && movecontact
;trigger11 = stateno = 300 && movecontact
;trigger12 = stateno = 315 && movecontact
;trigger13 = stateno = 220 && movecontact
;trigger14 = stateno = 250 && movecontact
;trigger15 = stateno = 1000 && movecontact
;trigger16 = stateno = 1101 && movecontact
;trigger17 = stateno = 1104 && movecontact
;trigger18 = stateno = 1200 && movecontact
;trigger19 = stateno = 1203 && movecontact
;trigger20 = stateno = 1400 && movecontact
;trigger21 = stateno = 1402 && movecontact
;trigger22 = stateno = 1500 && movecontact
;trigger23 = stateno = 1501 && movecontact
;trigger24 = stateno = 1502 && movecontact
;trigger25 = stateno = 1503 && movecontact

;Dash cancel
[State -1, Dash cancel]
type = changestate
value = 110
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = statetype != S
triggerall = power >= 1000
trigger1 = ctrl
;trigger2 = stateno = 205 && movecontact
;trigger3 = stateno = 210 && movecontact
;trigger4 = stateno = 215 && movecontact
;trigger5 = stateno = 235 && movecontact
;trigger6 = stateno = 248 && movecontact
;trigger7 = stateno = 400 && movecontact
;trigger8 = stateno = 410 && movecontact
;trigger9 = stateno = 430 && movecontact
;trigger10 = stateno = 440 && movecontact
;trigger11 = stateno = 300 && movecontact
;trigger12 = stateno = 315 && movecontact
;trigger13 = stateno = 220 && movecontact
;trigger14 = stateno = 250 && movecontact
;trigger15 = stateno = 1000 && movecontact
;trigger16 = stateno = 1101 && movecontact
;trigger17 = stateno = 1104 && movecontact
;trigger18 = stateno = 1200 && movecontact
;trigger19 = stateno = 1203 && movecontact
;trigger20 = stateno = 1400 && movecontact
;trigger21 = stateno = 1402 && movecontact
;trigger22 = stateno = 1500 && movecontact
;trigger23 = stateno = 1501 && movecontact
;trigger24 = stateno = 1502 && movecontact
;trigger25 = stateno = 1503 && movecontact


;------------------------------------------------------------------------------
;-Agarre 2
[State -1, Agarre 2]
type = ChangeState
value = 830
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall =p2statetype != L
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H


;------------------------------------------------------------------------------
; Agarre 1
[State -1, Agarre 1]
type = ChangeState
value = 800
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall =p2statetype != L
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;------------------------------------------------------------------------------
; Correr adelante
[State -1, Correr adelante]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

; Air Dash adelante
[State -1, Air Dash adelante]
type = ChangeState
value = 102
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------------------------------------------------
; Saltos de escape atrás
[State -1,Saltos de escape atrás]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

; Air Dash atrás
[State -1, Air Dash atrás]
type = ChangeState
value = 103
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl

;------------------------------------------------------------------------------
;Golpe de rechace con poder
[State -1, Golpe de rechace con poder]
type = ChangeState
value = 260
triggerall = command = "Golpe_de_rechace"
triggerall = power >= 1000 && life > 0 && statetype != A
trigger1 = stateno = 150
trigger2 = stateno = 152
;------------------------------------------------------------------------------
;Golpe de rechace
[State -1, Golpe de rechace]
type = ChangeState
value = 255
triggerall = command = "Golpe_de_rechace"
trigger1 = statetype = S && ctrl


;------------------------------------------------------------------------------
;Aereo golpe de rechace
[State -1, Aereo golpe de rechace]
type = ChangeState
value = 655
triggerall = command = "Aereo_golpe_de_rechace"
triggerall = stateno != 105
trigger1 = statetype = A && ctrl
trigger2 = stateno = 102
trigger3 = stateno = 103

;------------------------------------------------------------------------------
;Evasión atrás
[State -1, Evasión atrás]
type = ChangeState
value = 301
triggerall =  command = "recovery" && command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
;Evasión adelante
[State -1, Evasión adelante]
type = ChangeState
value = 300
triggerall = command = "recovery"
trigger1 = statetype != A
trigger1 = ctrl


;------------------------------------------------------------------------------
;Evasión adelante 2
[State -1, Evasión adelante 2]
type = ChangeState
value = 302
triggerall = command = "recovery" && command = "holdfwd"
triggerall = power >= 1000 && life > 0 && statetype != A
trigger1 = stateno = 150
trigger2 = stateno = 152


;------------------------------------------------------------------------------
;Evasión atrás 2
[State -1, Evasión atrás 2]
type = ChangeState
value = 303
triggerall = command = "recovery" && command = "holdback"
triggerall = power >= 1000 && life > 0 && statetype != A
trigger1 = stateno = 150
trigger2 = stateno = 152

;------------------------------------------------------------------------------
; Burla
[State -1, Burla]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
; Puño ligero de pie
[State -1, Puño ligero de pie]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "Puño_especial_1"
triggerall = command != "Puño_especial_2"
triggerall = P2BodyDist X >= 18
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 205) && time > 7
trigger4 = (stateno = 215) && time > 7
trigger5 = (stateno = 235) && time > 7
trigger6 = (stateno = 206) && time > 9
trigger7 = (stateno = 400) && time > 5
trigger8 = (stateno = 430) && time > 5
ignorehitpause = 1
;------------------------------------------------------------------------------
; Puño ligero de pie 2
[State -1, Puño ligero de pie 2]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "Puño_especial_1"
triggerall = command != "Puño_especial_2"
triggerall = P2BodyDist X <= 18
trigger1 = statetype = S &&  ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 205) && time > 7
trigger4 = (stateno = 215) && time > 7
trigger5 = (stateno = 235) && time > 7
trigger6 = (stateno = 206) && time > 9
trigger7 = (stateno = 400) && time > 5
trigger8 = (stateno = 430) && time > 5
ignorehitpause = 1
;------------------------------------------------------------------------------
;-Puño especial 1
[State -1, Puño especial 1 ]
type = ChangeState
value = 206
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "Puño_especial_2"
triggerall = command  = "Puño_especial_1"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 205) && time > 7
trigger4 = (stateno = 215) && time > 7
trigger5 = (stateno = 235) && time > 7
trigger6 = (stateno = 206) && time > 9
trigger7 = (stateno = 400) && time > 5
trigger8 = (stateno = 430) && time > 5
;------------------------------------------------------------------------------
; Puño medio de pie
[State -1, Puño medio de pie]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2BodyDist X >= 15
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 205) && time > 7
trigger4 = (stateno = 206) && time > 9
trigger5 = (stateno = 230) && time > 7
trigger6 = (stateno = 235) && time > 7
trigger7 = (stateno = 400) && time > 5
trigger8 = (stateno = 430) && time > 5
ignorehitpause = 1
;------------------------------------------------------------------------------
;-Puño especial 2
[State -1, Puño especial 2]
type = ChangeState
value = 215
triggerall = command = "Puño_especial_2"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 205) && time > 7
trigger4 = (stateno = 206) && time > 9
trigger5 = (stateno = 220) && time > 3
trigger6 = (stateno = 230) && time > 7
trigger7 = (stateno = 235) && time > 7
trigger8 = (stateno = 248) && time > 5
trigger9 = (stateno = 400) && time > 5
trigger10 =(stateno = 430) && time > 5
ignorehitpause = 1
;------------------------------------------------------------------------------
; Puño fuerte de pie
[State -1, Puño fuerte de pie]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = (P2BodyDist X <= 15) || (command = "Puño_fuerte_de_pie_1")
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 205) && time > 7
trigger4 = (stateno = 206) && time > 9
trigger5 = (stateno = 230) && time > 7
trigger6 = (stateno = 235) && time > 7
trigger7 = (stateno = 400) && time > 5
trigger8 = (stateno = 430) && time > 5
ignorehitpause = 1
;------------------------------------------------------------------------------
; Patada ligera de pie 2
[State -1, Patada ligera de pie 2]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = command != "holddown"
;triggerall = P2BodyDist X <= 28
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 205) && time > 7
trigger4 = (stateno = 400) && time > 5
trigger5 = (stateno = 430) && time > 5
;------------------------------------------------------------------------------
; Patada ligera de pie
[State -1, Patada ligera de pie]
type = ChangeState
value = 230
triggerall = command !=  "Patada_media_de_pie"
triggerall = command =  "a"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 205) && time > 7
trigger3 = (stateno = 230) && time > 11
trigger4 = (stateno = 400) && time > 5
trigger5 = (stateno = 430) && time > 5
ignorehitpause = 1
;------------------------------------------------------------------------------
; Ge Shiki Gou Fu You
[State -1, Ge Shiki Gou Fu You]
type = ChangeState
value = 240
triggerall = command ="Ge Shiki Gou Fu You"    ;command = "b"
triggerall = command != "holddown"
;triggerall = P2BodyDist X <= 20
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 205) && time > 7
trigger4 = (stateno = 206) && time > 9
trigger5 = (stateno = 220) && time > 3
trigger6 = (stateno = 230) && time > 7
trigger7 = (stateno = 235) && time > 7
trigger8 = (stateno = 248) && time > 5
trigger9 = (stateno = 400) && time > 5
trigger10 =(stateno = 430) && time > 5
;------------------------------------------------------------------------------
; Patada fuerte de pie 1
[State -1, Patada fuerte de pie 1]
type = ChangeState
value = 248
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = (P2BodyDist X <= 5) ;(command = "Puño_fuerte_de_pie_1")
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 205) && time > 7
trigger4 = (stateno = 206) && time > 9
trigger5 = (stateno = 230) && time > 7
trigger6 = (stateno = 235) && time > 7
trigger7 = (stateno = 400) && time > 5
trigger8 = (stateno = 430) && time > 5
ignorehitpause = 1



;------------------------------------------------------------------------------
; Patada fuerte de pie 2
[State -1, Patada fuerte de pie 2]
type = ChangeState
value = 250
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;------------------------------------------------------------------------------
; Puño ligero agachado
[State -1, Puño ligero agachado]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && time > 12
trigger3 = (stateno = 430) && time > 12

;------------------------------------------------------------------------------
; Puño fuerte agachado
[State -1, Puño fuerte agachado]
type = ChangeState
value = 420
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger3 = (stateno = 400) && time > 12
trigger3 = (stateno = 430) && time > 12
;------------------------------------------------------------------------------
; Patada ligera agachado
[State -1, Patada ligera agachado]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && time > 12
trigger3 = (stateno = 430) && time > 12
;------------------------------------------------------------------------------
; Patada media agachado
[State -1, Patada media agachado ]
type = ChangeState
value = 450
triggerall = command ="holddownfwd"
triggerall = command = "b"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 430) && time > 4
trigger3 = (stateno = 400) && time > 4

;------------------------------------------------------------------------------
; Patada media agachado
[State -1, Patada media agachado ]
type = ChangeState
value = 450
triggerall = command ="holddownback"
triggerall = command = "b"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 430) && time > 4
trigger3 = (stateno = 400) && time > 4
;------------------------------------------------------------------------------
; Patada fuerte agachado
[State -1, Patada fuerte agachado]
type = ChangeState
value = 450
triggerall = command != "holddownback"
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C &&  ctrl
trigger2 = (stateno = 400) && time > 4
trigger3 = (stateno = 430) && time > 4

;------------------------------------------------------------------------------
; Saltando Puño ligero neutral
[State -1, Saltando Puño ligero neutral]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = stateno != 105
;triggerall =stateno != 600
triggeraLL = statetype = A
trigger1 = vel x = 0 && ctrl
trigger1 = ANIM != 51

;------------------------------------------------------------------------------
; Saltando Puño ligero al frente
[State -1, Saltando Puño ligero al frente]
type = ChangeState
value = 605
triggerall = command = "x"
triggerall = stateno != 105
;triggerall =stateno != 605
triggeraLL = statetype = A
trigger1 = vel x != 0 && ctrl
trigger2 = ANIM = 51 && ctrl
trigger3 = stateno = 102
trigger4 = stateno = 103

;------------------------------------------------------------------------------
; Saltando Puño medio neutral
[State -1, Saltando Puño medio neutral ]
type = ChangeState
value = 630
triggerall = command = "holddown"
triggerall = command = "a"
triggerall = stateno != 105
triggeraLL = statetype = A
trigger1 = vel x = 0 && ctrl
trigger1 = ANIM != 51

;------------------------------------------------------------------------------
; Saltando Puño fuerte al frente
[State -1, Saltando Puño fuerte al frente]
type = ChangeState
value = 630
triggerall = command = "holddown"
triggerall = command = "a"
triggerall = stateno != 105
triggeraLL = statetype = A
trigger1 = vel x != 0 && ctrl
trigger2 = ANIM = 51 && ctrl
;---------------------------------
;------------------------------------------------------------------------------
; Saltando Puño medio neutral
[State -1, Saltando Puño medio neutral ]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = stateno != 105
triggeraLL = statetype = A
trigger1 = vel x = 0 && ctrl
trigger1 = ANIM != 51

;------------------------------------------------------------------------------
; Saltando Puño fuerte al frente
[State -1, Saltando Puño fuerte al frente]
type = ChangeState
value = 620
triggerall = command = "y"
triggerall = stateno != 105
triggeraLL = statetype = A
trigger1 = vel x != 0 && ctrl
trigger2 = ANIM = 51 && ctrl
trigger3 = stateno = 102
trigger4 = stateno = 103
;------------------------------------------------------------------------------
; Saltando Patada ligera neutral
[State -1, Saltando Patada ligera neutral]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = stateno != 105
;triggerall = stateno != 630
triggeraLL = statetype = A
trigger1 = vel x = 0 && ctrl
trigger1 = ANIM!= 51

;------------------------------------------------------------------------------
; Saltando Patada ligera al frente
[State -1, Saltando Patada ligera al frente]
type = ChangeState
value = 635
triggerall = command = "a"
triggerall = stateno != 105
;triggerall = stateno != 635
triggeraLL = statetype = A
trigger1 = vel x != 0 && ctrl
trigger2 = ANIM = 51 && ctrl
trigger3 = stateno = 102
trigger4 = stateno = 103
;------------------------------------------------------------------------------
; Saltando Patada media neutral
[State -1, Saltando Patada media neutral]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall= stateno != 105
triggeraLL = statetype = A
trigger1 =  vel x = 0 && ctrl
trigger1 = ANIM != 51
;------------------------------------------------------------------------------
; Saltando Patada fuerte al frente
[State -1, Saltando Patada fuerte al frente]
type = ChangeState
value = 650
triggerall = command = "b"
triggerall = stateno != 105
triggeraLL = statetype = A
trigger1 = vel x != 0 && ctrl
trigger2 = ANIM= 51 && ctrl
trigger3 = stateno = 102
trigger4 = stateno = 103

;-------------------------------------------
[State -1, Combos]
type = VarSet
triggerall = Var(40) = 0
triggerall = StateType != A
trigger1 = hitdefattr = SC, SA
trigger2 = hitdefattr = SC, SP
var(20) = 2

[State -1, Combos]
type = VarSet
triggerall = Var(40) = 0
triggerall = StateType != A
trigger1 = hitdefattr = SC, HA
trigger2 = hitdefattr = SC, HP
var(20) = 3

[State -1, Combos]
type = VarSet
triggerall = Var(40) = 0
triggerall = StateType = A
trigger1 = hitdefattr = A, NA
trigger2 = hitdefattr = A, NP
var(20) = 4

[State -1, Combos]
type = VarSet
triggerall = Var(40) = 0
triggerall = Statetype = A
trigger1 = hitdefattr = A, SA
trigger2 = hitdefattr = A, SP
var(20) = 5

[State -1, Combos]
type = VarSet
triggerall = Var(40) = 0
triggerall = Statetype = A
trigger1 = hitdefattr = A, HA
trigger2 = hitdefattr = A, HP
var(20) = 6

