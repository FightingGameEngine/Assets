;-| Super Motions |------------------------------------------------------

[Command]
name = "ADIÓS"
command = ~F, B, F, a+x+b+y
time = 30

[Command]
name = "SHSHTOCHO"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, x+y
time = 35

[Command]
name = "SHSH"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, y
time = 35

[Command]
name = "SHSH"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, x
time = 35


[Command]
name = "HBG_ab"
command = ~D, B, D, DF, F, a+b
time = 30 ;20

[Command]
name = "HBG_b"
command = ~D, B, D, DF, F, b
time = 30 ;20

[Command]
name = "HBG_a"
command = ~D, B, D, DF, F, a
time = 30 ;20

[Command]
name = "GalacticaF"
command = ~B, DB, D, DF, F, B, DB, D, DF, F, y
time = 46

[Command]
name = "Galactica"
command = ~B, DB, D, DF, F, B, DB, D, DF, F, x
time = 46

[Command]
name = "Super HKD"
command = ~D, DB, B, D, DB, B, y
time = 23

[Command]
name = "Super HKD"
command = ~D, DB, B, D, DB, B, x
time = 23

[Command]
name = "Super MT2"
command = ~D, DF, F, D, DF, F, y
time = 23

[Command]
name = "Super MT"
command = ~D, DF, F, D, DF, F, x
time = 23
;-| Special Motions |------------------------------------------------------

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "rap_y"
command = ~y, y, y
time = 24

[Command]
name = "rap_x"
command = ~x, x, x  ;, x
time = 24

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCB"
command = ~D, DB, B, x

[Command]
name = "QCB"
command = ~D, DB, B, y

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-|Super Salto Evil |------------------------------------------------------
[Command]
name = "supersaltoevil"
command = $D, $U
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_b"
command = /$D,b
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

;=============================================================================
[Statedef -1]

;Hyper Destrozo
[State -1, Hyper Destrozo]
type = ChangeState
value = 2299;2300
triggerall = command = "ADIÓS"
triggerall = (power >= 3000) && (life <= 300)
trigger1 = (statetype = s) && ctrl

;Super Hiryuu Shouten Ha
[State -1, Super Hiryuu Shouten Ha]
type = ChangeState
value = 2200
triggerall = command = "SHSHTOCHO"
triggerall = power >= 3000
triggerall = p2bodydist X < 15
triggerall = p2statetype = S || p2statetype = C
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 220) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 400) && movecontact
trigger6 = (stateno = 410) && movecontact
trigger7 = (stateno = 420) && movecontact

;Super Hiryuu Shouten Ha
[State -1, Super Hiryuu Shouten Ha]
type = ChangeState
value = 2100
triggerall = command = "SHSH"
triggerall = power >= 2000
triggerall = p2bodydist X < 15
triggerall = p2statetype = S || p2statetype = C
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 220) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 400) && movecontact
trigger6 = (stateno = 410) && movecontact
trigger7 = (stateno = 420) && movecontact

;Heaven's Bill Gates fuerte SDM
[State -1, Heaven's Bill Gates]
type = ChangeState
value = 2011
triggerall = command = "HBG_ab"
triggerall = power >= 2000
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 220) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 400) && movecontact
trigger6 = (stateno = 410) && movecontact
trigger7 = (stateno = 420) && movecontact

;Heaven's Bill Gates fuerte
[State -1, Heaven's Bill Gates]
type = ChangeState
value = 2008
triggerall = command = "HBG_b"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 220) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 400) && movecontact
trigger6 = (stateno = 410) && movecontact
trigger7 = (stateno = 420) && movecontact

;Heaven's Bill Gates
[State -1, Heaven's Bill Gates]
type = ChangeState
value = 2000
triggerall = command = "HBG_a"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 220) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 400) && movecontact
trigger6 = (stateno = 410) && movecontact
trigger7 = (stateno = 420) && movecontact

;Galactica
[State -1, Galactica]
type = ChangeState
value = 1702
triggerall = command = "GalacticaF"
trigger1 = (statetype = s) && ctrl

;Galactica
[State -1, Galactica]
type = ChangeState
value = 1700
triggerall = command = "Galactica"
trigger1 = (statetype = s) && ctrl

;Super Hiryuu Kourin Dan
[State -1, super Hiryuu Kourin Dan]
type = ChangeState
value = 1600
triggerall = command = "Super HKD"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 220) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 400) && movecontact
trigger6 = (stateno = 410) && movecontact
trigger7 = (stateno = 420) && movecontact
trigger8 = (stateno = 420) && movecontact

;Super Mouko Takabisha fuerte
[State -1, super Mouko Takabisha fuerte]
type = ChangeState
value = 1599
triggerall = command = "Super MT2"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 220) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 400) && movecontact
trigger6 = (stateno = 410) && movecontact
trigger7 = (stateno = 420) && movecontact

;Super Mouko Takabisha débil
[State -1, super Mouko Takabisha débil]
type = ChangeState
value = 1598
triggerall = command = "Super MT"
triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 220) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 400) && movecontact
trigger6 = (stateno = 410) && movecontact
trigger7 = (stateno = 420) && movecontact

;Patada a lo Robert fuerte
[State -1, patada a lo Robert]
type = ChangeState
value = 1590
triggerall = command = "QCB_b"
trigger1 = (statetype = a) && ctrl

;Patada a lo Robert débil
[State -1, patada a lo Robert]
type = ChangeState
value = 1580
triggerall = command = "QCB_a"
trigger1 = (statetype = a) && ctrl

;Jaarr fuerte
[State -1, jaarr fuerte]
type = ChangeState
value = 1560
triggerall = command = "QCB_b"
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 220) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 420) && movecontact

;Jaarr débil
[State -1, jaarr débil]
type = ChangeState
value = 1550
triggerall = command = "QCB_a"
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 220) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 420) && movecontact

;Amaguri Ken fuerte
[State -1, Amaguri Ken fuerte]
type = ChangeState
value = 1510
triggerall = command = "rap_y"
trigger1 = (statetype = s) && ctrl

;Amaguri Ken débil
[State -1, Amaguri Ken débil]
type = ChangeState
value = 1500
triggerall = command = "rap_x"
trigger1 = (statetype = s) && ctrl

;Zenten Missile Kick fuerte
[State -1, Zenten Missile Kick fuerte]
type = ChangeState
value = 1310
triggerall = command = "QCF_b"
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 220) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 240) && movecontact
trigger7 = (stateno = 400) && movecontact
trigger8 = (stateno = 410) && movecontact
trigger9 = (stateno = 420) && movecontact

;Zenten Missile Kick débil
[State -1, Zenten Missile Kick débil]
type = ChangeState
value = 1300
triggerall = command = "QCF_a"
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 220) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 240) && movecontact
trigger7 = (stateno = 400) && movecontact
trigger8 = (stateno = 410) && movecontact
trigger9 = (stateno = 420) && movecontact
;---------------------------------
;Hiryuu Shouten Ha
[State -1, Hiryuu Shouten Ha]
type = ChangeState
value = 1200
triggerall = command = "QCB"
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 220) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 420) && movecontact
trigger9 = (stateno = 430) && movecontact
;---------------------------------

;Mouko Takabisha (fuerte)
[State -1, Mouko Takabisha]
type = ChangeState
value = 1100
triggerall = command = "QCF_y"
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 400) && movecontact
trigger6 = (stateno = 410) && movecontact
trigger7 = (stateno = 420) && movecontact
;----------------------------------

;Mouko Takabisha (débil)
[State -1, Mouko Takabisha]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 220) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 400) && movecontact
trigger6 = (stateno = 410) && movecontact
trigger7 = (stateno = 420) && movecontact
trigger8 = (stateno = 210) && (time >= 9)

;=============================================================================
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = command = "FF"
trigger1 = (statetype = s) && ctrl
;trigger1 = command = "FF" ;   AVANZAR
;trigger2 = stateno = 100  ;     EN
;trigger2 = movecontact    ;   SALTO

;-----------------------------------------------------------------------------
;Run back
[State -1, run back]
type = ChangeState
value = 105
triggerall = command = "BB"
trigger1 = (statetype = s) && ctrl

;---------------------------------------------
;super salto evil
[State -1, Run Fwd]
type = ChangeState
value = 666
triggerall = command ! = "supersaltoevil"
trigger1 = statetype = S
trigger1 = ctrl

;--------------------------------------------

;Puño débil
[State -1, puño debil]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time >= 10 && time <= 14         ;time combo
;------------------------------------
;Puño fuerte cerca p2
[State -1, puño fuerte cerca p2]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist X < 5.5
trigger1 = (statetype = s) && ctrl

;------------------------------------
;Puño fuerte
[State -1, puño fuerte]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && movecontact   ;combo pata déb - puño fuerte
trigger3 = (stateno = 220) && movecontact   ; combo p close -  "     "

;------------------------------------
;Patada débil
[State -1, patada débil]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact ; combo puño debil _ pat fuert
trigger3 = (stateno = 230) && (time >= 10) && (time <= 14); time combo

;------------------------------------
;Patada fuerte cerca p2
[State -1, patada fuerte cerca p2]
type = ChangeState
value = 250
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist X < 5.5
trigger1 = (statetype = s) && ctrl

;------------------------------------
;Patada fuerte
[State -1, patada fuerte]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = (statetype = s) && ctrl

;------------------------------------
;Puño grande agachado
[State -1, puño grande agachado]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = (statetype = c) && ctrl

;------------------------------------
;Puño pequeño agachado
[State -1, puño pequeño agachado]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = (statetype = c) && ctrl
trigger2 = stateno = 400
trigger2 = time >= 6.3

;------------------------------------
;Patada pequeña agachado
[State -1, patada pequeña agachado]
type = ChangeState
value = 420
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = (statetype = c) && ctrl
trigger2 = stateno = 420
trigger2 = time >= 6.3

;------------------------------------
;Patada grande agachado
[State -1, patada grande agachado]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = (statetype = c) && ctrl

;------------------------------------
;Patada cayendo
[State -1, patada cayendo]
type = ChangeState
value = 640
triggerall = command = "down_b"
trigger1 = (statetype = a) && ctrl

;------------------------------------
;Puño pequeño aire
[State -1, puño pequeño aire]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = (statetype = a) && ctrl

;------------------------------------
;Puño grande aire
[State -1, puño grande aire]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = (statetype = a) && ctrl

;------------------------------------
;Patada pequeña aire
[State -1, patada pequeña aire]
type = ChangeState
value = 620
triggerall = command = "a"
trigger1 = (statetype = a) && ctrl

;------------------------------------
;Patada pequeña aire
[State -1, patada pequeña aire]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = (statetype = a) && ctrl

