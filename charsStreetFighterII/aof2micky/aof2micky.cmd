
;-|bas basavant bas basarriere arriere+bouton croix y|-------------------------------------------------------------
[Command]
name = "COMBO"
command = ~D, DF, D, DB, B, y
time = 30

;-|avant arriere bas basavant avant+bouton carre z|-------------------------------------------------------------
[Command]
name = "FBDDFF"
command = ~F, B, D, DF, F, z
time = 20

;-|avant arriere bas basavant avant+bouton croix y|-------------------------------------------------------------
[Command]
name = "FBDDFF"
command = ~F, B, D, DF, F, y
time = 20

;-|avant basavant avant+bouton carre z|-------------------------------------------------------------
[Command]
name = "FDFF"
command = ~F, DF, F, z
time = 20

;-|avant basavant avant+bouton croix y|-------------------------------------------------------------
[Command]
name = "FDFF"
command = ~F, DF, F, y
time = 20

;-|avant arriere avant+bouton croix b|-------------------------------------------------------------
[Command]
name = "FBF"
command = ~F, B, F, b
time = 20

;-|avant arriere avant+bouton carre c|-------------------------------------------------------------
[Command]
name = "FBF"
command = ~F, B, F, c
time = 20

;-|bas bas-avant avant+bouton carre z|-------------------------------------------------------------
[Command]
name = "DDFFz"
command = ~D, DF, F, z
time = 20

[Command]
name = "DDFFz"
command = ~D, DF, F, y
time = 20

;-|bas bas-avant avant+bouton triangle c|-------------------------------------------------------------
[Command]
name = "DDFFc"
command = ~D, DF, F, c
time = 20

[Command]
name = "DDFFc"
command = ~D, DF, F, b
time = 20

;-|bas bas-arriere arriere+bouton carre z|-------------------------------------------------------------
[Command]
name = "DDBBz"
command = ~D, DB, B, z
time = 20

;-|bas bas-arriere arriere+bouton croix y|-------------------------------------------------------------
[Command]
name = "DDBBy"
command = ~D, DB, B, y
time = 20

;-|bas bas-arriere arriere+bouton triangle c-rond b|-------------------------------------------------------------
[Command]
name = "DDBBc"
command = ~D, DB, B, c
time = 20

[Command]
name = "DDBBc"
command = ~D, DB, B, b
time = 20

;-|arriere-2s avant+bouton croix y|-------------------------------------------------------------
[Command]
name = "bfb"
command = ~30$B,F,y
time = 20

;-|arriere-2s avant+bouton carre z|-------------------------------------------------------------
[Command]
name = "bfb"
command = ~30$B,F,z
time = 20

;-|bas-arriere-2s avant+bouton croix y|-------------------------------------------------------------
[Command]
name = "dbfy"
command = ~30$DB,F,y
time = 20

;-|arriere+bouton triangle c|-------------------------------------------------------------
[Command]
name = "bc"
command = /B,c
time = 1

;-|avant+bouton triangle c|-------------------------------------------------------------
[Command]
name = "fc"
command = /F,c
time = 1

;-|arriere+bouton rond b|-------------------------------------------------------------
[Command]
name = "bab"
command = /B,b
time = 1

;-|avant+bouton rond b|-------------------------------------------------------------
[Command]
name = "fob"
command = /F,b
time = 1

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
name = "recovery"
command = z+y
time = 10

[Command]
name = "cb";Required (do not remove)
command = c+b
time = 10


[Command]
name = "hold_z"
command = /$z

[Command]
name = "hold_y"
command = /$y

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

;---------------------------------------------

[Statedef -1]

;---------------------------------------------
[State -1, double projectile]
type = ChangeState
value = 270
triggerall = command = "FBDDFF"
trigger1 = statetype != A
trigger1 = power >= 2000
trigger1 = ctrl = 1

[State -1, power]
type = ChangeState
value = 6002
trigger1 = command = "recovery"
trigger1 = power < 3000
trigger1 = StateType = S
trigger1 = ctrl = 1

[State -1, arc]
type = ChangeState
value = 250
trigger1 = command = "DDFFz"
trigger1 = StateType = S
trigger1 = power >= 500
trigger1 = ctrl = 1

[State -1, arc vide]
type = ChangeState
value = 255
trigger1 = command = "DDFFz"
trigger1 = StateType = S
trigger1 = power < 500
trigger1 = ctrl = 1

[State -1, feu]
type = ChangeState
value = 260
trigger1 = command = "DDFFc"
trigger1 = StateType = S
trigger1 = power >= 500
trigger1 = ctrl = 1

[State -1, feu vide]
type = ChangeState
value = 265
trigger1 = command = "DDFFc"
trigger1 = StateType = S
trigger1 = power < 500
trigger1 = ctrl = 1

[State -1, 3 directs]
type = ChangeState
value = 240
trigger1 = command = "DDBBz"
trigger1 = StateType = S
trigger1 = power >= 500
trigger1 = ctrl = 1

[State -1, 3 directs vide]
type = ChangeState
value = 241
trigger1 = command = "DDBBz"
trigger1 = StateType = S
trigger1 = power < 500
trigger1 = ctrl = 1

[State -1, 2 directs 1 crochet]
type = ChangeState
value = 242
trigger1 = command = "DDBBy"
trigger1 = StateType = S
trigger1 = power >= 500
trigger1 = ctrl = 1

[State -1, 2 directs 1 crochet vide]
type = ChangeState
value = 243
trigger1 = command = "DDBBy"
trigger1 = StateType = S
trigger1 = power < 500
trigger1 = ctrl = 1

[State -1, poing tournoyant]
type = ChangeState
value = 245
trigger1 = command = "DDBBc"
trigger1 = StateType = S
trigger1 = power >= 500
trigger1 = ctrl = 1

[State -1, poing tournoyant vide]
type = ChangeState
value = 246
trigger1 = command = "DDBBc"
trigger1 = StateType = S
trigger1 = power < 500
trigger1 = ctrl = 1

;-------------------------------------------------

[State -1,projection]
type = ChangeState
value = 400
triggerall = command = "b" && command ="holdfwd"
trigger1 = StateType = S && ctrl
trigger1 = P2BodyDist x <= 10 && P2StateType = S && P2MoveType != H

;-------------------------------------------------

[State -1, coup de poing faible]
type = ChangeState
value = 200
trigger1 = command = "x"
trigger1 = StateType = S
trigger1 = ctrl = 1

[State -1, coup de poing]
type = ChangeState
value = ifelse (P2bodydist X >= 50, 201, 230)
trigger1 = command = "z"
trigger1 = StateType = S
trigger1 = ctrl = 1

[State -1, coup de poing puissant]
type = ChangeState
value = 202
trigger1 = command = "y"
trigger1 = StateType = S
trigger1 = ctrl = 1

[State -1, coup de poing faible accroupi]
type = ChangeState
value = 210
trigger1 = ctrl = 1
trigger1 = command = "x"
trigger1 = StateType = C

[State -1, coup de poing accroupi]
type = ChangeState
value = 211
trigger1 = ctrl = 1
trigger1 = command = "z"
trigger1 = StateType = C

[State -1, coup de poing puissant accroupi]
type = ChangeState
value = 212
trigger1 = command = "y"
trigger1 = StateType = C
trigger1 = ctrl = 1

[State -1, coup de poing faible sauté]
type = ChangeState
value = 220
trigger1 = command = "x"
trigger1 = StateType = A
trigger1 = ctrl = 1

[State -1, coup de poing sauté]
type = ChangeState
value = 221
trigger1 = command = "y"
trigger1 = StateType = A
trigger1 = ctrl = 1

[State -1, coup de poing puissant sauté]
type = ChangeState
value = 222
trigger1 = command = "z"
trigger1 = StateType = A
trigger1 = ctrl = 1

;-------------------------------------------------

[State -1, coup de pied faible]
type = ChangeState
value = 205
trigger1 = command = "a"
trigger1 = StateType = S
trigger1 = ctrl = 1

[State -1, coup de pied]
type = ChangeState
value = 206
trigger1 = command = "c"
trigger1 = StateType = S
trigger1 = ctrl = 1

[State -1, coup de pied puissant]
type = ChangeState
value = ifelse (P2bodydist X >= 40, 207, 235)
trigger1 = command = "b"
trigger1 = StateType = S
trigger1 = ctrl = 1

[State -1, coup de pied faible accroupi]
type = ChangeState
value = 215
trigger1 = command = "a"
trigger1 = StateType = C
trigger1 = ctrl = 1

[State -1, coup de pied accroupi]
type = ChangeState
value = 216
trigger1 = command = "c"
trigger1 = StateType = C
trigger1 = ctrl = 1

[State -1, coup de pied puissant accroupi]
type = ChangeState
value = 217
trigger1 = command = "b"
trigger1 = StateType = C
trigger1 = ctrl = 1

[State -1, coup de pied faible sauté]
type = ChangeState
value = 225
trigger1 = command = "a"
trigger1 = StateType = A
trigger1 = ctrl = 1

[State -1, coup de pied sauté]
type = ChangeState
value = 226
trigger1 = command = "c"
trigger1 = StateType = A
trigger1 = ctrl = 1

[State -1, coup de pied puissant sauté]
type = ChangeState
value = 227
trigger1 = command = "b"
trigger1 = StateType = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, Power Up]
type = ChangeState
value = 6002
triggerall = command = "hold_z" && command = "hold_y"
trigger1 = statetype = S
trigger1 = power < 3000 
trigger1 = ctrl

;----------------------------------------------------------------------------

[State -1, provoquation]
type = ChangeState
value = 6001
trigger1 = command = "start"
trigger1 = StateType = S
trigger1 = ctrl = 1