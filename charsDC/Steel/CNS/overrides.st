; States file for {character} -- Overrides and Common states
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   2: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State -2, debug]       ; (debug clipboard)
type = DisplayToClipboard
trigger1 = 1 ;Alive
text = "PalNo: %d - Pos Y: %f"
params = PalNo, Pos Y

[State -2, PosSet]
type = PosSet
trigger1 = Alive
z = 0.9

[State -2, jump landing sound]   ; custom jump-landing sound
triggerall = Time = 1
trigger1 = stateno = 52
trigger2 = stateno = 106
type = PlaySnd
persistent = 0
value = 8,1

;[State -2, fall landing sound]   ; custom fall-landing sound
;trigger1 = stateno = [5100, 5110]
;trigger1 = Time = 1
;type = PlaySnd
;persistent = 0
;value = 8,2

[State -2, superjump opponent locator]
type = Helper
triggerall = (NumHelper(0) = 0)
trigger1 = (Pos Y < -200) && (P2Dist Y > 50)
ID = 0
pos = 0,-120
postype = p2
stateno = 910
facing = 1

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[State -3, metal hit sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = Stateno = 5000 || stateno = 5010 || Stateno = 5020
trigger2 = Stateno = 5070 || stateno = 5080
trigger1 = movetype = H
value = 40,2

[State -3, metal hit ground]
type = PlaySnd
triggerall = Time = 1
trigger1 = Stateno = 5100 | Stateno = 5110
trigger1 = movetype = H
value = 40,0

;-------------------------------------------------------------------

[State -3, VarRandom]
type = VarRandom
trigger1 = StateNo = 5000
trigger1 = time = 1
v = 0

[State -3, Hit Sound]
type = PlaySnd
triggerall = alive
triggerall = time = 1
triggerall = var(50) < 500
trigger1 = Stateno = 5010 || Stateno = 5020
trigger2 = Stateno = 5070 || stateno = 5080
trigger2 = random < 500
value = 200, 2 + ((Random * 2) / 1000)
channel = 1

;-------------------------------------------------------------------

[Statedef -3]
[State -3, Landing Dust]
type = Explod
triggerall =  NumExplod(60) < 1
triggerall = Time = 3
trigger1 = StateNo = 52 ;Jump land
trigger2 = StateNo = 101 ;Run-fdw land
trigger3 = StateNo = 106 ;Run-back land
trigger4 = PrevStateNo = 52 && StateNo = 11 ;Jump land/crouch
persistent = 0
ID = 60
anim = 60
postype = p1
pos = 7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State -3, Jump Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = StateNo = 40
value = 40,1

[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1 && Var(20) != 2
trigger1 = StateNo = 52 ;Jump land
trigger2 = StateNo = 101 ;Run-fwd land
trigger3 = StateNo = 106 ;Run-back land
value = 8, 1

;--------------------------------------------------
; Level-up sounds (uses Var(2))
[State -3, levelup var 0]
type = VarSet
trigger1 = power < 1000
v =  2
value = 0

[State -3, levelup snd 1]
type = PlaySnd
trigger1 = (power >= 1000) && (power < 2000) && (var(2) < 1) && (RoundState = 2)
value = 12,0

[State -3, levelup var 1]
type = VarSet
trigger1 = (power >= 1000) && (power < 2000)
v =  2
value = 1

[State -3, levelup snd 2]
type = PlaySnd
trigger1 = (power >= 2000) && (power < 3000) && (var(2) < 2) && (RoundState = 2)
value = 12,1

[State -3, levelup var 2]
type = VarSet
trigger1 = (power >= 2000) && (power < 3000)
v =  2
value = 2

[State -3, levelup snd 3]
type = PlaySnd
trigger1 = (power >= 3000) && (var(2) < 3) && (RoundState = 2)
value = 12,2

[State -3, levelup var 3]
type = VarSet
trigger1 = (power >= 3000)
v =  2
value = 3

;--------------------------------
; based on FlowaGirl and Ethan Lives codes
; taken with permission from McCready's Guido char
[State -3, Finish Hit Explod - Helper]
type = Helper
triggerall = WinKO && NumHelper(8900) = 0
trigger1 = RoundState = 3
helpertype = Normal
name = "Finish Hit Explod"
id = 8900
pos = 0, 0
postype = p1
facing = 0
stateno = 8900
keyctrl = 0
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

; desperation quote
[State -3, PlaySnd]
type = PlaySnd
trigger1 = (Life <= 150) && (var(50) = 0)
value = S11,1

[State -3, VarSet]
type = VarSet
trigger1 = Life <= 150
v = 50
value = 1

;---------------------------------------------------------
; "Win by hyper" effect
;---------------------------------------------------------

[State -2, Hyper KO Helper]
type = Helper
triggerall = WinKO
triggerall = NumHelper(101) = 0
trigger1 = StateNo = 1053
trigger2 = StateNo = 1054
trigger3 = StateNo = 1057
trigger4 = StateNo = 1071
name = "Hyper KO Helper"
ID = 101
StateNo = 9070
postype = p1
pos = 0, 0
ownpal = 1
ignorehitpause = 1

;---------------------------------------------------------
; Hyper KO Helper State

[Statedef 9070]
type = A
movetype = I
physics = N
anim = 8930

[State 9070, 1]
type = AssertSpecial
trigger1 = NumExplod(222) = 1
flag = NoBG
flag2 = NoFG
flag3 = NoBarDisplay

[State 9070, 2]
type = Explod
trigger1 = time = 0
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1
sprpriority = -10
scale = .85, 1.10
removetime = 75
postype = left
bindtime = -1
anim = 116
id = 222
facing = 1
ownpal = 1
pos = 0,0

[State 9070, 3]
type = PlaySnd
trigger1 = time = 0
value = 50, 3

;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------


;----------------------- (CREDITOS)---------------------------;

;QUIERO EN ESTA PARTE AGRADECER A TODOS QUIENES DE UNA
;FORMA AYUDARON A LA LLEGADA DE ESTE PELEADOR MUGEN
;PRIMERO AL GRUPO SCRUFFY DRAGON NOMBRARE ALGUNOS DE
;LOS MIEMBROS QUE ESTUVIERON MAS CERCA Y PENDIENTES DEL PROGRESO
;DE MI PERSONAJE:
;WUCASH, MAGUS, VOLZILLA, MEDELLIN, SHADDYSCOPIO, KAL-ELVIS, ZVITOR.
;UN ESPECIAL AGRADECIMIENTO POR SU GRAN AYUDA Y APORTE CON LOS SONIDOS:
;KAGEUCHI, KOJUNHO
;A TODOS QUIENES DIERON SU OPINION EN EL TEMA DEL FORO Y LOS CLIPS
;DE AVANCES EN EL YOUTUBE
;A LOS USUARIOS DEL WEB SITE CVG UNITED Y MARVEL OUTSIDERS GRACIAS
;EN ESPECIAL AL SUPERHUMAN "SEI" MUCHAS GRACIAS POR TU APORTE CON LAS PALETAS
;Y LA PORTADA
;A LOS SIGUIENTES CREADORES MUGEN POR EL USO DE ALGUNOS ELEMENTOS CODING
;YA QUE GRACIAS A ELLOS NO PODRIA ALCANZAR LOS MOVIMIENTOS ESPECIALES
;HYPERS Y OTROS ELEMENTOS QUE ME AYUDARON A ENTENDER Y A APRENDER LO BASICO
;ACERCA DEL CODING O PROGRAMACION GRACIAS POR SU APORTE:
;SodonHID ,Ilusionista, MystikBlaze, Thomas Hsieh, N-Mario, eSkRo, Acey,
;Luvly Angel, Sander71113, Big Eli King, Hannibal, aiduzzi, McCready, Splode
;A LOGANIR Y BLACK DRAGON CON SU FANTASTICO PERSONAJE THOR
;ME AYUDARON APRENDER Y ALCANZAR UN NIVEL DE CREACION MUGEN
;A LAS IMAGENES DEL WEB SITE "SPRITES DATABASE" Y POR SU RIPEADOR ULTIMECIA
;A CAPCOM POR SU GRAN PLATAFORMA DE PELEA 2D
;A DC Y A LOS CREADORES DE JOHN HENRY IRONS "STEEL"
;LOUISE SIMONSON
;JON BOGOANOVE
;""( ESTE PERSONAJE ESTA DEDICADO A MI PRINCIPAL INSPIRACION PARA ENTRAR
;AL MUNDO DE LA CREACION DE PERSONAJES MUGEN )""
;MUGEN CREADOR --------------------    ; H A N N I B A L ;
;CON SU PERSONAJE MUGEN "SUPERMAN"
;GRACIAS POR CREAR ESTE ESTUPENDO PERSONAJE Y POR TU APORTE CON
;ALGUNOS ELEMENTOS UTILIZADOS GRACIAS HANNIBAL.....!!
;A MI HERMANO EDWIN POR SU PACIENCIA, OPINION Y COMPANIA MIENTRAS
;MI TRABAJO TOMABA CADA VEZ MAS FORMA GRACIAS "BRO"
;A DIOS POR DARME LO NECESARIO PARA CONTINUAR HASTA ESTE PUNTO DE CREACION
;DE MI PERSONAJE Y VER APLICADO MIS CONOCIMIENTOS DE DISEÑADOR GRAFICO.
;GRACIAS A TODOS POR SU APOYO Y APORTES YA QUE CON ELLO ME AYUDARON A
;FINALIZAR LA PRIMERA VERSION BETA DE MI PERSONAJE

; G R A C I A S   A   T O D O S ;

;COMENTARIOS PUEDEN ESCRIBIRME A MI EMAIL ( JORGE_NEW@HOTMAIL.COM )
;O A MI PROFILE DE SCRUFFY DRAGON PRODUCTIONS
