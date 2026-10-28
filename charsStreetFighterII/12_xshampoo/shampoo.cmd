
;-| S特殊技 |--------------------------------------------------------
;Super1
[Command]
name = "super_1"
command = ~B, D, F, x+y
time = 30

;Super3
[Command]
name = "super_3"
command = ~F, D, B, b+y
time = 30

;Super_s
[Command]
name = "super_s"
command = ~D, F, D, F, b+y
time = 30



;-|  特殊技 |------------------------------------------------------
; QCF
[Command]
name = "fireball_x"
command = ~D, DF, F, x


[Command]
name = "fireball_y"
command = ~D, DF, F, y

[Command]
name = "fireball_a"
command = ~D, DF, F, a


[Command]
name = "fireball_b"
command = ~D, DF, F, b



[Command]
name = "uppercut_a"
command = ~F, D, DF, a


[Command]
name = "uppercut_b"
command = ~F, D, DF, b



[Command]
name = "uppercut_x"
command = ~F, D, DF, x



[Command]
name = "chshuang_a"
command = ~D, DB, B, a


[Command]
name = "chshuang_b"
command = ~D, DB, B, b


[Command]
name = "reversal_y"
command = ~F, B, F, y


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1


[Command]
name = "recovery"
command = a+b
time = 1


[Command]
name = "xy"
command = x+y
time = 1


[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "b+y"
command = b+y
time = 1


;-| Dir + Button |---------------------------------------------------------
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
name = "back_x"
command = /B,x
time = 1


[Command]
name = "back_y"
command = /B,y
time = 1


[Command]
name = "back_z"
command = /B,z
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
name = "fwd_ab"
command = /F, a+b
time = 1


[Command]
name = "down_ab"
command = D, a+b
time = 30

;[Command]
;name = "back_ab"
;command = /B, a+b
;time = 1
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

;-| Hold Dir |--------------------------------------------------------------
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


[Command]
name = "holdab"
command = /$a+b
time = 1


[Command]
name = "holdxy"
command = /$x+y
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
;---------------------------------------------------------------------------
[Statedef -1]
;---------------------------------------------------------------------------
;Super_1
[State -1, [State -1]
type = ChangeState
value = 2700
triggerall = command = "super_1"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA


;---------------------------------------------------------------------------
;Super_2
[State -1, [State -1]
type = ChangeState
value = 2200
triggerall = command = "down_ab"
triggerall = power >= 2000
trigger1 = statetype = A
trigger1 = statetype != S
trigger1 = ctrl = 1
trigger2 = p2movetype != H
trigger2 = statetype != S
trigger2 = hitdefattr = SC, NA, SA


;---------------------------------------------------------------------------
;Super_3
[State -1, [State -1]
type = ChangeState
value = 2800
triggerall = command = "super_3"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA


;Super_s
[State -1, [State -1]
type = ChangeState
value = 2900
triggerall = command = "super_s"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA


;---------------------------------------------------------------------------
;集氣
[State -1, [State -1]
type = ChangeState
value = 6000
triggerall = power < 3000
trigger1 = command = "ab"
trigger1 = statetype = S
trigger1 = ctrl = 1
;trigger2 = command = "xy"
;trigger2 = statetype = S
;trigger2 = ctrl = 1


;---------------------------------------------------------------------------
;前跑
[State -1, [State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;後跑
[State -1, [State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;摔技1 (close dir+b)
; Complicated? Skip the throws and look at stand_a, etc, first.
; This is disabled right now. Remove the "null;" below when you
; want to use it.
[State -1, [State -1]
type = ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 10 ;Near P2
trigger1 = command = "fwd_y";p2 stand
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_y";p2 crouch
trigger2 = stateno != 100    ;Not running
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_y";p2 stand
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_y";p2 crouch
trigger4 = p2statetype = C
trigger4 = p2movetype != H


;---------------------------------------------------------------------------
;Air_Throw1 (close dir+b)
; This is disabled right now. Remove the "null;" below when you
; want to use it.
[State -1, [State -1]
type = ChangeState
value = 950
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 9
triggerall = p2bodydist Y > -22
triggerall = p2bodydist Y < 22
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = command = "fwd_y"
trigger2 = command = "back_y"


;===========================================================================
;下衝
[State -1, [State -1]
type = ChangeState
value = 1000
trigger1 = command = "down_a"
trigger1 = statetype = A
trigger1 = statetype != S
trigger1 = ctrl = 1



[State -1, [State -1]
type = ChangeState
value = 1000
trigger1 = command = "down_b"
trigger1 = statetype = A
trigger1 = statetype != S
trigger1 = ctrl = 1


;===========================================================================

[State -1, [State -1]
type = ChangeState
value = 1014
triggerall = command = "fireball_a"
triggerall = numproj = 0          
trigger1 = statetype = S
trigger1 = ctrl = 1


;===========================================================================

[State -1, [State -1]
type = ChangeState
value = 1016
triggerall = command = "fireball_b"
triggerall = numproj = 0         
trigger1 = statetype = S
trigger1 = ctrl = 1


;===========================================================================
;氣功(輕拳) x
[State -1, [State -1]
type = ChangeState
value = 1010
triggerall = command = "fireball_x"
triggerall = numproj = 0          
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;氣功(重拳) y
[State -1, [State -1]
type = ChangeState
value = 1020
triggerall = command = "fireball_y"
triggerall = numproj = 0         
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;上升(輕腳) a
[State -1, [State -1]
type = ChangeState
value = 1030
trigger1 = command = "uppercut_a"
trigger1 = statetype != A
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;上升(重腳) b
[State -1, [State -1]
type = ChangeState
value = 1040
trigger1 = command = "uppercut_b"
trigger1 = statetype != A
trigger1 = ctrl = 1


;---------------------------------------------------------------------------

;躍進踢(重腳) A
[State -1, [State -1]
type = ChangeState
value = 1050
triggerall = command = "chshuang_a"
trigger1 = statetype = S
trigger1 = ctrl = 1


;躍進踢(重腳) b
[State -1, [State -1]
type = ChangeState
value = 1060
triggerall = command = "chshuang_b"
trigger1 = statetype = S
trigger1 = ctrl = 1


;空_氣功 x
[State -1, [State -1]
type = ChangeState
value = 2300
triggerall = numproj = 0
triggerall = command = "fireball_x"
trigger1 = statetype = A
trigger1 = ctrl = 1


;空_氣功 y
[State -1, [State -1]
type = ChangeState
value = 2400
triggerall = numproj = 0
triggerall = command = "fireball_y"
trigger1 = statetype = A
trigger1 = ctrl = 1


;Reversal1
[State -1, [State -1]
type = ChangeState
value = 1100
triggerall = command = "reversal_y"
trigger1 = statetype = S
trigger1 = statetype != A
trigger1 = ctrl = 1


;===========================================================================
;Stand_A
[State -1, [State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;Stand_B
[State -1, [State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;Stand_X
[State -1, [State -1]
type = ChangeState
value = 300
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;Stand_Y
[State -1, [State -1]
type = ChangeState
value = 310
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;----------------------------------------------------------------------------------

;Crouch_A
[State -1, [State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_B
[State -1, [State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;Crouch_X
[State -1, [State -1]
type = ChangeState
value = 500
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;Crouch_Y
[State -1, [State -1]
type = ChangeState
value = 510
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1



;---------------------------------------------------------------------------
;by
[State -1, [State -1]
type = ChangeState
triggerall = command = "b+y"
triggerall = command = "holddown"
value = 520
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------


;Jump_A
[State -1, [State -1]
type = ChangeState
value = 600
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;Jump_B
[State -1, [State -1]
type = ChangeState
value = 610
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;Jump_X
[State -1, [State -1]
type = ChangeState
value = 700
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;Jump_Y
[State -1, [State -1]
type = ChangeState
value = 710
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;----------------------------------------------------------------------------
