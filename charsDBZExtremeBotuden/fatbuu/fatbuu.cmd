;Before all, this "insults" is somewat a "joking" of how Dan probably see his own moves :P

;---[マニュアル設定]----------------------------------------------------------------------
[Remap]
x = x      ;Ｘボタン……………　弱Ｐ
y = y      ;Ｙボタン……………　中Ｐ
z = z      ;Ｚボタン……………　強Ｐ
a = a      ;Ａボタン……………　弱Ｋ
b = b      ;Ｂボタン……………　中Ｋ
c = c      ;Ｃボタン……………　強Ｋ
s = s      ;スタートボタン……　挑発

[Defaults]
Command.Time = 30
Command.Buffer.Time = 1


;-| Super Motions |--------------------------------------------------------

;Innocence Locomotive

[Command]
name = "InnocenceLocomotive"
command = ~D, DB, B, a+b

[Command]
name = "InnocenceLocomotive"
command = ~D, DB, B, a+c

[Command]
name = "InnocenceLocomotive"
command = ~D, DB, B, b+c

;Buu Breath

[Command]
name = "BuuBreath"
command = ~D, DF, F, a+b

[Command]
name = "BuuBreath"
command = ~D, DF, F, b+c

[Command]
name = "BuuBreath"
command = ~D, DF, F, a+c


;Angry Explosion
[Command]
name = "AngryExplosion"
command = ~D, DF, F, x+y
time = 20
[Command]
name = "AngryExplosion"
command = ~D, DF, F, x+z
time = 20
[Command]
name = "AngryExplosion"
command = ~D, DF, F, z+y
time = 20

;-| Special Motions |------------------------------------------------------

;Exploding Wave

[Command]
name = "ButtStompa"
command = ~55$D, $U, a

[Command]
name = "ButtStompb"
command = ~55$D, $U, b

[Command]
name = "ButtStompc"
command = ~55$D, $U, c

;Shocking Chocolate Munch

[Command]
name = "ShockingChocolate"
command = ~B, DB, D, DF, F,  x

[Command]
name = "ShockingChocolate"
command = ~B, DB, D, DF, F,  y

[Command]
name = "ShockingChocolate"
command = ~B, DB, D, DF, F,  z

;Headbutt Tackle
[Command]
name = "HeadbuttTacklex"
command = ~55$B, $F, x

[Command]
name = "HeadbuttTackley"
command = ~55$B, $F, y

[Command]
name = "HeadbuttTacklez"
command = ~55$B, $F, z

;innocence train
[Command]
name = "innocencetraina"
command = ~55$B, $F, a
time = 20

[Command]
name = "innocencetraina"
command = ~55$B, $F, ~a
time = 20

[Command]
name = "innocencetrainb"
command = ~55$B, $F,  b
time = 20

[Command]
name = "innocencetrainb"
command = ~55$B, $F, ~b
time = 20

[Command]
name = "innocencetrainc"
command = ~55$B, $F,  c
time = 20

[Command]
name = "innocencetrainc"
command = ~55$B, $F,  ~c
time = 20
;----------------------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = z+y
time = 1

[Command]
name = "rolling"
command = a+b
time = 1

[Command]
name = "rolling"
command = a+c
time = 1

[Command]
name = "rolling"
command = c+b
time = 1

;-------------------------------------
[Command]
name = "fwd_z"
command = /F,z
time = 1

[command]
name = "fwd_b"
command = /F, b
time = 1

[command]
name = "downfwd"
command = /DF, x
time = 1

[command]
name = "downfwd"
command = /DF, y
time = 1

[command]
name = "downfwd"
command = /DF, z
time = 1

[command]
name = "downfwd"
command = /DF, a
time = 1

[command]
name = "downfwd"
command = /DF, b
time = 1

[command]
name = "downfwd"
command = /DF, c
time = 1

[command]
name = "downback"
command = /DB, x
time = 1

[command]
name = "downback"
command = /DB, x
time = 1

[command]
name = "downback"
command = /DB, y
time = 1

[command]
name = "downback"
command = /DB, z
time = 1

[command]
name = "downback"
command = /DB, a
time = 1

[command]
name = "downback"
command = /DB, b
time = 1

[command]
name = "downback"
command = /DB, c
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
name = "s"
command = s
time = 1

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
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

[Command]
name = "undizzy"
command = ~B, F, B, F, B, F, B, F
time = 35

[Command]
name = "undizzy"
command = ~D, U, D, U, D, U, D, U
time = 35

;ULTIMATE GOD OF TAUNT

[Command]
name = "236_s"
command = ~D, DF, F, s

[Command]
name = "214_s"
command = ~D, DB, B, s

;-| super jump |-----------------------------------------------------------
[command]
name = "du"
command = ~D, $U
time = 8

[command]
name = "abc"
command = a+b+c
time = 8

;-| push back |-----------------------------------------------------------
[command]
name = "guardpush"
command = x+y
time = 10

[command]
name = "guardpush"
command = x+z
time = 10

[command]
name = "guardpush"
command = z+y
time = 10


[Statedef -1]

;===========================================================================
;Artificial Intelligence
;===========================================================================
;var(59) = AI variable
;var(50) = Difficulty variable

[State -1, AI ON] ; Turn the AI on when
Type = VarSet
TriggerAll = Var(59) < 1; it is not on yet and
TriggerAll = RoundState=2 ; the fight has started and is not over yet and
Trigger1 = AILevel>0 ; the computer is playing the character
v = 59
value= 1 ; value of 1 will mean the AI is on
Ignorehitpause=1

[State -1, AI OFF] ; Turn the AI off when
Type=VarSet
Trigger1=var(59)>0 ; it is on and
Trigger1=RoundState!=2 ; the round is not started yet or is already over
Trigger2=!IsHelper ; OR if we are a player, but
Trigger2=AILevel=0 ; the computer is not in control
v=59
value=0 ; value of 0 will mean the AI is off. values other than 0 and 1 are not used in this example, we have only one AI mode, the normal one.
Ignorehitpause=1

[State -1]
Type=VarSet
Trigger1=1
var(50)=(AILevel=1)*3+(AILevel=2)*7+(AILevel=3)*16+(AILevel=4)*30+(AILevel=5)*58+(AILevel=6)*90+ (AILevel=7)*150+(AILevel=8)*300

;--------------------------------------------------------------------------------------------------------------------------------
;--------------------------------------------------------------------------------------------------------------------------------

;You're boring him.....===========================================================================
[State -1, random taunt]
type = changestate
value = 195
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
triggerall = ctrl
triggerall = P2BodyDist X >= 50
triggerall = random <= 50
triggerall = life >= p2life+350
trigger1 = p2stateno = 5050
trigger2 = p2stateno = [5100,5101]
trigger3 = p2stateno = 5120   || p2stateno = 5020 || p2stateno = 5030

[State -1, Super Jump]
type = ChangeState
value = 40
triggerall = var(59) != 0 && roundstate =2; Applied if AI is activated
trigger1 = statetype != A ; AI level is based on level 1 - 8 - AIlevel is multipled by 10 meaning at AIlevel = 8 it has a 80% change of this move happening with 80% of the triggers that is activated.
trigger1 = movehit >= 2
trigger1 = stateno = 420 

[State -1,AI run fwd]
type = ChangeState
value = 100
triggerall = var(59) != 0
triggerall = statetype != A
trigger1 = ctrl
trigger1 = stateno != 100
trigger1 = Random < 20
trigger1 = (P2bodydist X >= 110)

[State -1,AI Air Dash]
type = ChangeState
value = 102
triggerall = var(59) != 0
triggerall = statetype != S
trigger1 = ctrl
trigger1 = stateno != 100
trigger1 = Random < 20
trigger1 = (P2bodydist X >= 110)

[State -1, AI Throw]
type = ChangeState
value = 800
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
triggerall = P2movetype != H
triggerall = P2statetype != A
triggerall = P2statetype != L
trigger1 = ctrl
trigger1 = Random <= 20
trigger1 = p2bodydist X < 3

;[State -1: Alpha Counter]
;type = ChangeState
;value = 910
;triggerall = var(59) != 0
;triggerall = power >= 1000
;trigger1 = statetype = S || statetype = C
;trigger1 = (stateno = [150,155]) && random < 499
;trigger1 = (p2bodydist x=[0,30]) && !(enemy,ctrl) && (p2bodydist y=[-20,5])

;Recover
[State -1]
type = ChangeState
value = 5210
triggerall = var(59) != 0
triggerall = canrecover = 1 && roundstate =2
triggerall = random < 499
triggerall = alive
triggerall = time > 20
trigger1 = stateno = 5050

[State -1: Recovery Roll]
type = ChangeState
triggerall = var(59) != 0
triggerall = Alive && Life > 0
triggerall = (StateNo = [5100, 5110]) && prevstateno !=3010
triggerall = Pos Y >= -5
triggerall = time > 10
trigger1 = random < 499
value = 895

;===========================================================================
; AI Guard
;===========================================================================

[State -1]
Type=Changestate
Triggerall=Inguarddist; Guard when in guard distance
Triggerall=var(59)>0; and the AI is on
Triggerall=ctrl; and we have control
Trigger1 = random< (var(50)*2+(AiLevel>=3)*100); chance is higher than for attacking, but not by too much.
value=120

[State -1]; The engine will still guard by through pressing the back button, we need to disable that.
Type=Assertspecial
Triggerall=StateNo!=[120,160]
Trigger1=var(59)>0
flag=noairguard
flag2=nocrouchguard
flag3=nostandguard

;---------------------------------------------------------------------------
;AI Guard (Standing)
[State -1, AI Guard (Standing)]
type = ChangeState
value = 130
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
triggerall = AIlevel > 4 || ((random < 499) && Time <= 1) ; Difficulty level
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
triggerall = enemy,NumProj = 1
triggerall = (ctrl && statetype != A) || (stateno = 100) || (stateno = 105)
triggerall = p2statetype != C
trigger1 =Enemynear,statetype = A && Enemynear,movetype = A
trigger1 = inguarddist

;---------------------------------------------------------------------------
;AI Guard (Crouching)
[State -1, AI Guard (Crouching)]
type = ChangeState
value = 131
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
triggerall = AIlevel > 4 || ((random < 499) && Time <= 1) ; Difficulty level
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
triggerall = enemy,numproj = 1 
triggerall = (ctrl && statetype != A) || (stateno = 100) || (stateno = 105)
triggerall = p2statetype = C
trigger1 =Enemynear,statetype = A && Enemynear,movetype = A
trigger1 = inguarddist

;---------------------------------------------------------------------------
;AI Guard (Air)
[State -1, AI Guard (Air)]
type = ChangeState
value = 132
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
triggerall = AIlevel > 4 || ((random < 499) && Time <= 1) ; Difficulty level
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
triggerall = enemy,NumProj = 1
triggerall = statetype = A
triggerall = ctrl
trigger1 = inguarddist
trigger1 =Enemynear,statetype = A && Enemynear,movetype = A

;---------------------------------------------------------------------------
;AI Guard Push (Air)
[State -1, Guard Push (Air)]
type = ChangeState
value = 173
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = stateno = 154
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
triggerall = AIlevel > 4 || ((random < 499) && Time <= 1) ; Difficulty level
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1) ; Difficulty level
trigger1 = statetype = A
ignorehitpause = 1



;---------------------------------------------------------------------------
;AI Guard Push (Crouch)
[State -1, Guard Push (Crouch)]
type = ChangeState
value = 172
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = stateno = 152
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
triggerall = AIlevel > 4 || ((random < 499) && Time <= 1) ; Difficulty level
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1) ; Difficulty level
trigger1 = statetype = C
ignorehitpause = 1

; Stand Still--If you win, STOP MOVING!!!
[State -1]
type = ChangeState
value = 0
triggerall = var(59) != 0
triggerall = roundstate = 3
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ai misc
;---------------------------------------------------------------------------
;==============================Ground Combo=============================================

;COMBO 1

;AI Standing Light Punch
[State -1,1]
type = ChangeState
value = 200
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A && P2Bodydist Y > -30 && enemynear, statetype != L
triggerall = ctrl = 1
trigger1 = P2BodyDist X = [0,25]
trigger1 = random = [0,400]
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,25]
trigger2 = random = [0,400]


;AI Standing Medium Punch
[State -1,2]
type = ChangeState
value = 210
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 200 
trigger1 = movecontact 
trigger2 = stateno = 230 
trigger2 = movecontact 
trigger3 = stateno = 400 
trigger3 = movecontact 
trigger4 = stateno = 430 
trigger4 = movecontact 

;AI Standing Strong Punch 
[State -1,2]
type = ChangeState
value = 220
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 210 
trigger1 = movecontact 
trigger2 = stateno = 240 
trigger2 = movecontact 
trigger3 = stateno = 410 
trigger3 = movecontact 
trigger4 = stateno = 440
trigger4 = movecontact 

;AI Standing Strong Punch 
[State -1,2]
type = ChangeState
value = 225
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 220 
trigger1 = movecontact 
trigger2 = stateno = 250 
trigger2 = movecontact 

;COMBO 2

;AI Standing Light Punch
[State -1,1]
type = ChangeState
value = 230
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A && P2Bodydist Y > -30 && enemynear, statetype != L
triggerall = ctrl = 1
trigger1 = P2BodyDist X = [0,25]
trigger1 = random = [0,400]
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,25]
trigger2 = random = [0,400]


;AI Standing Medium Punch
[State -1,2]
type = ChangeState
value = 240
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 200 
trigger1 = movecontact 
trigger2 = stateno = 230 
trigger2 = movecontact 
trigger3 = stateno = 400 
trigger3 = movecontact 
trigger4 = stateno = 430 
trigger4 = movecontact 

;AI Standing Strong Punch 
[State -1,2]
type = ChangeState
value = 250
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 210 
trigger1 = movecontact 
trigger2 = stateno = 240 
trigger2 = movecontact 
trigger3 = stateno = 410 
trigger3 = movecontact 
trigger4 = stateno = 440
trigger4 = movecontact 

;COMBO 3

;AI Crouching Light Punch
[State -1,1]
type = ChangeState
value = 400
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A && P2Bodydist Y > -30 && enemynear, statetype != L
triggerall = ctrl = 1
trigger1 = P2BodyDist X = [0,25]
trigger1 = random = [0,400]
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,25]
trigger2 = random = [0,400]

;AI Crouching Medium Punch
[State -1,2]
type = ChangeState
value = 410
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 400 
trigger1 = movecontact 
trigger2 = stateno = 200 
trigger2 = movecontact 
trigger3 = stateno = 230 
trigger3 = movecontact 
trigger4 = stateno = 430 
trigger4 = movecontact 

;AI launcher
[State -1,3]
type = ChangeState
value = 420
triggerall = var(59) != 0 
triggerall = statetype != A && roundstate =2
triggerall = random = [0,400]
trigger1 = stateno = 410 
trigger1 = movecontact 
trigger2 = stateno = 210
trigger2 = movecontact 
trigger3 = stateno = 240 
trigger3 = movecontact 
trigger4 = stateno = 440 
trigger4 = movecontact 

;COMBO 4

;AI Crouching Light Kick
[State -1,1]
type = ChangeState
value = 430
triggerall = var(59) != 0 && roundstate =2 
triggerall = statetype != A && P2Bodydist Y > -30 && enemynear, statetype != L
triggerall = ctrl = 1
trigger1 = P2BodyDist X = [0,25]
trigger1 = random = [0,400]
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,25]
trigger2 = random = [0,400]

;AI Crouching Medium Kick
[State -1,2]
type = ChangeState
value = 440
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A && enemynear, statetype = L
trigger1 = stateno = 400 
trigger1 = movecontact 
trigger2 = stateno = 200 
trigger2 = movecontact 
trigger3 = stateno = 230 
trigger3 = movecontact 
trigger4 = stateno = 430 
trigger4 = movecontact 


;AI Crouch Strong Kick
[State -1,2]
type = ChangeState
value = 450
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 410 
trigger1 = movecontact 
trigger2 = stateno = 210 
trigger2 = movecontact 
trigger3 = stateno = 240 
trigger3 = movecontact 
trigger4 = stateno = 440 
trigger4 = movecontact 

;================================AI AIR COMBO=============================================

[State -1]
type = ChangeState
value = 600
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype = A
triggerall = (random < (AILevel* 100))
trigger1 = p2bodydist x <= 65 && p2bodydist y = [-70,65]
trigger1 = vel y > 0 && p2statetype != A||p2statetype = A
trigger1 = ctrl 

[State -1]
type = ChangeState
value = 630
triggerall = var(59) != 0 && roundstate =2
trigger1 = stateno = 600
trigger1 = movecontact >= 2

[State -1]
type = ChangeState
value = 610
triggerall = var(59) != 0 && roundstate =2
trigger1 = stateno = 630
trigger1 = movecontact >= 2


[State -1]
type = ChangeState
value = 640
triggerall = var(59) != 0 && roundstate =2
trigger1 = stateno = 610 
trigger1 = movecontact >= 2


[State -1]
type = ChangeState
value = 620
triggerall = var(59) != 0 && roundstate =2
trigger1 = stateno = 640 && random = [0,499]
trigger1 = movecontact >= 2

[State -1]
type = ChangeState
value = 650
triggerall = var(59) != 0  && roundstate =2
trigger1 = stateno = 640 && random = [0,499]
trigger1 = movecontact >= 2

;===========================================================================

[State -1,3]
type = ChangeState
value = 670
triggerall = var(59) != 0 && roundstate =2 && random = [0,499]
triggerall = statetype != A
trigger1 = stateno = 640 


;AI 
[State -1,3]
type = ChangeState
value = 1302
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 220 
trigger1 = movecontact 
trigger2 = stateno = 250  
trigger2 = movecontact 
trigger3 = stateno = 440  
trigger3 = movecontact 
trigger4 = stateno = 410  
trigger4 = movecontact 

;AI 
[State -1,3]
type = ChangeState
value = 1002
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 220 
trigger1 = movecontact 
trigger2 = stateno = 250  
trigger2 = movecontact 
trigger3 = stateno = 440  
trigger3 = movecontact 
trigger4 = stateno = 410  
trigger4 = movecontact 

;=======================================================================================

[State -1, Buu Breath]
type = changestate
value = 3100
triggerall = statetype = S && var(59) != 0 && random <= 400
triggerall = movetype != H 
triggerall = power >= 1000  
trigger1 = stateno = 1302 
trigger1 = movehit = 1
trigger1 = animtime = -33
trigger2 = stateno = 225 
trigger2 = movehit = 1

[State -1, Buu Breath]
type = changestate
value = 3000
triggerall = statetype = S && var(59) != 0 && random <= 400
triggerall = movetype != H 
triggerall = power >= 1000  
trigger1 = stateno = 450 
trigger1 = movehit = 1
trigger1 = animtime = -28

[State -1, Buu Breath]
type = changestate
value = 3200
triggerall = statetype = S && var(59) != 0 && random <= 400
triggerall = movetype != H 
triggerall = power >= 1000  
trigger1 = stateno = 250 
trigger1 = movehit = 1
trigger2 = stateno = 220 
trigger2 = movehit = 1

;===========================================================================
; Skill Section
;===========================================================================

;HYPER COMBOS

;Angry Explosion
[State -1, Angry Explosion]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 3000
triggerall = var(59) = 0
triggerall = command = "AngryExplosion"&&power>=1000
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,499])
trigger3 = (stateno = [1000,1999])

;Buu Breath 
[State -1,Buu Breath]
type = ChangeState
value = 3100
;triggerall = !var(0)
triggerall = var(59) = 0
triggerall = power >= 1000 && statetype != A
triggerall = command = "BuuBreath"
triggerall = statetype != a
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (stateno = [200,420]) || (stateno = [1000,1900])
trigger2 = movecontact


;Innocence Locomotive
[State -1, Innocence Locomotive]
type = ChangeState
value = 3200
triggerall = var(59) = 0
triggerall = !Win;KO
triggerall = command = "InnocenceLocomotive"
triggerall = power >= 1000
triggerall = statetype != a
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (stateno = [200,420]) || (stateno = [1000,1900])
trigger2 = movecontact


;---------------------------------------------------------------------------;

;SUPERS

;Shocking Chocolate Munch

[State -1, Shocking Chocolate Munch]
type = ChangeState
value = 1200 
triggerall = var(59) = 0
triggerall = command = "ShockingChocolate"  
triggerall = statetype = S 
trigger1 = ctrl && (stateno = 20 && time > 4 || (stateno = [100,109])) = 0

;innocence train

[State -1, INNOCENCE TRAIN]
type = ChangeState
value = 1300
triggerall = command = "innocencetraina"  
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200, 420]
trigger2 = movecontact

[State -1, INNOCENCE TRAIN]
type = ChangeState
value = 1301
triggerall = command = "innocencetrainb"  
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200, 420]
trigger2 = movecontact

[State -1, INNOCENCE TRAIN]
type = ChangeState
value = 1302
triggerall = command = "innocencetrainc"  
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200, 420]
trigger2 = movecontact

;Headbutt Tackle 
[State -1, Headbutt Tackle]
type = ChangeState
value = 1000
triggerall = var(59) = 0 && RoundState = 2 && Alive
triggerall = command = "HeadbuttTacklex"
triggerall = Numprojid(7000) = 0 && Numprojid(7001) = 0 && Numprojid(7002) = 0 && Numprojid(7025) = 0
triggerall = statetype != A
trigger1 = ctrl 
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a   
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = (stateno = [101,102]) ;Dash!
trigger15 = (stateno = 105)  ;Back Dash!

[State -1, Headbutt Tackle]
type = ChangeState
value = 1001
triggerall = var(59) = 0 && RoundState = 2 && Alive
triggerall = command = "HeadbuttTackley"
triggerall = Numprojid(7000) = 0 && Numprojid(7001) = 0 && Numprojid(7002) = 0 && Numprojid(7025) = 0
triggerall = statetype != A
trigger1 = ctrl 
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a   
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = (stateno = [101,102]) ;Dash!
trigger15 = (stateno = 105)  ;Back Dash!

[State -1, Headbutt Tackle]
type = ChangeState
value = 1002
triggerall = var(59) = 0 && RoundState = 2 && Alive
triggerall = command = "HeadbuttTacklez"
triggerall = Numprojid(7000) = 0 && Numprojid(7001) = 0 && Numprojid(7002) = 0 && Numprojid(7025) = 0
triggerall = statetype != A
trigger1 = ctrl 
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a   
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = (stateno = [101,102]) ;Dash!
trigger15 = (stateno = 105)  ;Back Dash!


;Butt Stomp
[State -1, Butt Stomp]
type = ChangeState
value = 1100
triggerall = var(59) = 0 && RoundState = 2 && Alive
triggerall = command = "ButtStompa"
triggerall = statetype != A
trigger1 = ctrl || stateno = 40  
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a   
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = (stateno = [101,102]) ;Dash!
trigger15 = (stateno = 105)  ;Back Dash!

[State -1, Butt Stomp]
type = ChangeState
value = 1101
triggerall = var(59) = 0 && RoundState = 2 && Alive
triggerall = command = "ButtStompb"
triggerall = statetype != A
trigger1 = ctrl || stateno = 40  
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a   
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = (stateno = [101,102]) ;Dash!
trigger15 = (stateno = 105)  ;Back Dash!

[State -1, Butt Stomp]
type = ChangeState
value = 1102
triggerall = var(59) = 0 && RoundState = 2 && Alive
triggerall = command = "ButtStompc"
triggerall = statetype != A
trigger1 = ctrl || stateno = 40  
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a   
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = (stateno = [101,102]) ;Dash!
trigger15 = (stateno = 105)  ;Back Dash!



[State -1]
type = ChangeState
value = 800
triggerall = roundstate = 2 &&  var(59) = 0
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl


; 前転挑発
[State -1]
type = ChangeState
value = ifelse(!var(0),805,807)
triggerall = roundstate = 2 && !var(12) && !var(59)
triggerall = command = "236_s"
triggerall = var(59) = 0
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && animelem = 2,> 0
trigger3 = stateno = 210 && animelem = 3,> 0
trigger4 = stateno = 220 && animelem = 3,> 0
trigger5 = stateno = 230 && animelem = 3,> 0
trigger6 = stateno = 240 && animelem = 3,> 0
trigger7 = stateno = 250 && animelem = 5,> 0
trigger8 = stateno = 400 && animelem = 2,> 0
trigger9 = stateno = 410 && animelem = 3,> 0
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && animelem = 3,> 0
trigger12 = stateno = 440 && animelem = 3,> 0
trigger13 = stateno = 450 && animelem = 2,> 0

; 後転挑発
[State -1]
type = ChangeState
value = ifelse(!var(0),806,808)
triggerall = roundstate = 2 && !var(12) && !var(59)
triggerall = command = "214_s"
triggerall = var(59) = 0
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && animelem = 2,> 0
trigger3 = stateno = 210 && animelem = 3,> 0
trigger4 = stateno = 220 && animelem = 3,> 0
trigger5 = stateno = 230 && animelem = 3,> 0
trigger6 = stateno = 240 && animelem = 3,> 0
trigger7 = stateno = 250 && animelem = 5,> 0
trigger8 = stateno = 400 && animelem = 2,> 0
trigger9 = stateno = 410 && animelem = 3,> 0
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && animelem = 3,> 0
trigger12 = stateno = 440 && animelem = 3,> 0
trigger13 = stateno = 450 && animelem = 2,> 0

[State -1, Stomp Kick]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 670
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 620) && movecontact
trigger5 = (stateno = 630) && movecontact
trigger6 = (stateno = 640) && movecontact
trigger7 = (stateno = 650) && movecontact

[State -1, Collarbone Breaker]
type = ChangeState
value = 225
triggerall = var(59) = 0
triggerall = (command = "fwd_z") && (command != "holddown")
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,220]) && movecontact
trigger3 = (stateno = [230,440]) && movecontact

;Super Jump
[state -1]
type = changestate
value = 40
triggerall = var(59) = 0
triggerall = command = "abc"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 420

;run Fwd
[state -1, run Fwd]
type = changestate
value = 102
triggerall = statetype = a
triggerall = var(59) = 0
trigger1 = (command = "FF") && (stateno !=[100,106])
trigger1 = ctrl

;Run Fwd
[state -1, run Fwd]
type = changestate
value = 100
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = (statetype = s) && (stateno !=[100,106])
trigger1 = ctrl

;---------------------------------------------------------------------------
;run back
[state -1, run back]
type = changestate
value = 105
triggerall = var(59) = 0
trigger1 = command = "BB"
trigger1 = (statetype = s) && (stateno !=[100,106])
trigger1 = ctrl


[State -1]
type = ChangeState
value = 195
triggerall = var(59) = 0
triggerall = Var(29) = 0
triggerall = command = "s"
triggerall = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 196
triggerall = var(59) = 0
triggerall = Var(29) = 0
triggerall = command = "s"
triggerall = statetype = C
trigger1 = ctrl

[State -1]
type = ChangeState
value = 197
triggerall = var(59) = 0
triggerall = Var(29) = 0
triggerall = command = "s"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400) && movecontact
trigger5 = (stateno = 430) && movecontact
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [230,240]) && movecontact
trigger4 = (stateno = [400,410]) && movecontact
trigger5 = (stateno = [430,440]) && movecontact

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 410 && movecontact
trigger6 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 630) && movecontact

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(59) = 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 630) && movecontact
trigger4 = (stateno = 610) && movecontact

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = var(59) = 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,640]) && movecontact

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

; Push Block (Stand)
[State -1]
type = ChangeState
value = 171
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = [150,151]

;Push Block (crouching)
[State -1]
type = ChangeState
value = 172
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = [152,153]

;Push Block (aerial)
[State -1]
type = ChangeState
value = 173
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10

[State -1, Forward Recovery Roll]
type = ChangeState
value = 890
triggerall = var(59) = 0
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

[State -1, Backward Recovery Roll]
type = ChangeState
value = 895
triggerall = var(59) = 0
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1



