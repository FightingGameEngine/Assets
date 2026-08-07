; These 11 Single Button and Hold Dir commands must be placed here at the top
; of the CMD, above all other commands, and in the standard order shown here,
; in order for the "Compatibly Partnered" version (9742) of the helper AI
; activation method to work with different partners in simul team mode.
; (When the partner is not compatible, then it's best to just use the regular
; version (9741) and rely on the XOR method for backup in case a human
; partner's input turns off the CPU partner's AI.)
;   (Now, even if you do not intend to give your character any custom AI, it
; would still be nice if you would place the commands at the top of your CMD,
; for the sake of other characters which do use this AI activation method.
; And then, define Anim 9741 in your AIR file to indicate to other characters
; that your character is compatible.
;   It may slightly increase the chances of faulty AI activation if the user
; is using characters with a poor implementation of the old humanly-impossible
; commands AI activation method when fighting against your character, but
; other than that, there's really no particular reason not to.  And you can
; change the names of the commands if you want.  For compatibility, all that
; really matters is the "command" and "time" parameters.)
;
; Another important point to make, is that if you want to add additional
; definitions for any of these basic command names, then there are limits on
; what kind of parameters you can use, in order to ensure the reliability of
; the helper method.  That is, if you add definitions for any of these first
; 11 commands, then you must follow these rules when doing so:
; - Don't use any command string that includes any tildes. (e.g. no "~x",
;   no "~30D")
; - In the command string, don't include any direction that isn't preceeded by
;   a slash. (e.g. no "F", no "$D")
; - Don't put any non-slashed buttons in a command string redefining one of
;   the Hold Dir command names.
; - Using a command string that includes any commas (e.g. no "a,b"), and/or
;   setting the time parameter to greater than 1, may be safe, but I wouldn't
;   risk it.
; - The first definition of each of these commands must be in the order
;   specified below.  Any additional definitions can be placed anywhere after
;   the first one.
; An example of what is permissible, is adding a definition for the "z" button
; like so (and placed anywhere after the normal one):
;	[Command]
;	name = "z"
;	command = y+b
;	time = 1
; Other than that particular common type of redefinition, it's probably best
; to simply avoid adding definitions for these 11 command names altogether.
; And remember, this paragraph just has to do with the helper method.  You'll
; still need to make changes to the XOR code, no matter what type of redefining
; you use with the commands used by it.
;
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

;-| Hold Button |----------------------------------------------------------
; Please define Anim 74140108 in your AIR file if AND ONLY IF you place these
; 7 Hold Button commands immediately after the 11 Single Button and Hold Dir
; commands at the very top of your CMD list, as demonstrated here.
; In this version of the AI code, these commands are only used by the XOR
; method, and thus are optional.  But there remains a possibility that a
; future version of the helper method might be helped by having these
; commands placed here, and Anim 74140108 would then be used to indicate
; that a partner character has a compatible CMD.

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

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
name = "holdstart"
command = /s
time = 1

;--- None of your own command definitions should be above this line. ---


;-| Supers |-----------------------------------------------------------
[Command]
name = "meteo1"
command = ~D, DF, F, z+c
time = 25

[Command]
name = "meteo2"
command = ~D, DB, B, z+c
time = 25

[Command]
name = "qcf_2p"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "qcf_2p"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "qcf_2p"
command = ~D, DF, F, D, DF, F, z
time = 30

[Command]
name = "qcb_2p"
command = ~D, DB, B, D, DB, B, x
time = 30

[Command]
name = "qcb_2p"
command = ~D, DB, B, D, DB, B, y
time = 30

[Command]
name = "qcb_2p"
command = ~D, DB, B, D, DB, B, z
time = 30

[Command]
name = "qcf_2k"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "qcf_2k"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "qcf_2k"
command = ~D, DF, F, D, DF, F, c
time = 30

[Command]
name = "qcb_2k"
command = ~D, DF, F, D, DF, F, a+b
time = 30

[Command]
name = "qcb_2k"
command = ~D, DF, F, D, DF, F, b+c
time = 30

[Command]
name = "qcb_2k"
command = ~D, DF, F, D, DF, F, a+c
time = 30

;-| Specials |-----------------------------------------------------------

[Command]
name = "hcb_x"
command = ~F, D, B, x
time = 15

[Command]
name = "hcb_x"
command = ~F, DF, D, DB, B, x
time = 15

[Command]
name = "hcb_y"
command = ~F, D, B, y
time = 15

[Command]
name = "hcb_y"
command = ~F, DF, D, DB, B, y
time = 15

[Command]
name = "hcb_z"
command = ~F, D, B, z
time = 15

[Command]
name = "hcb_z"
command = ~F, DF, D, DB, B, z
time = 15

[Command]
name = "qcf_x"
command = ~D, DF, F, x
time = 15

[Command]
name = "qcf_y"
command = ~D, DF, F, y
time = 15

[Command]
name = "qcf_z"
command = ~D, DF, F, z
time = 15

[Command]
name = "anti_x"
command = ~F, D, F, x
time = 15

[Command]
name = "anti_y"
command = ~F, D, F, y
time = 15

[Command]
name = "anti_z"
command = ~F, D, F, z
time = 15

[Command]
name = "qcf_a"
command = ~D, DF, F, a
time = 15

[Command]
name = "qcf_b"
command = ~D, DF, F, b
time = 15

[Command]
name = "qcf_c"
command = ~D, DF, F, c
time = 15

[Command]
name = "qcb_x"
command = ~D, DB, B, x
time = 15

[Command]
name = "qcb_y"
command = ~D, DB, B, y
time = 15

[Command]
name = "qcb_z"
command = ~D, DB, B, z
time = 15

[Command]
name = "qcb_a"
command = ~D, DB, B, a
time = 15

[Command]
name = "qcb_b"
command = ~D, DB, B, b
time = 15

[Command]
name = "qcb_c"
command = ~D, DB, B, c
time = 15


;-| Recovery Roll |-----------------------------------------------------------
[Command]
name = "recovery_roll"
command = ~B, DB, D, a
time = 15

[Command]
name = "recovery_roll"
command = ~B, DB, D, ~a
time = 15

[Command]
name = "recovery_roll"
command = ~B, DB, D, b
time = 15

[Command]
name = "recovery_roll"
command = ~B, DB, D,~b
time = 15

[Command]
name = "recovery_roll"
command = ~B, DB, D,c
time = 15

[Command]
name = "recovery_roll"
command = ~B, DB, D,~c
time = 15


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| Super Jump |-----------------------------------------------------------
[Command]
name = "DU"
command = D, U
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
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
name = "2A"
command = x+y
time = 1

[Command]
name = "2A"
command = x+z
time = 1

[Command]
name = "2A"
command = y+z
time = 1

[Command]
name = "2A"
command = a+b
time = 1

[Command]
name = "2A"
command = a+c
time = 1

[Command]
name = "2A"
command = b+c
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

;-| CPU |--------------------------------------------------------------
; Note that if you make any changes to the basic one-button or recovery
; commands, you'll need to make the same changes to their matching commands here
; and/or in the XOR VarSet controller.  That includes things like, for example:
;  * changing the recovery command to use a different combination of buttons.
;  * renaming the b button command as "d", or the start button command as "s".
;  * switching the button names around, e.g. so button y triggers "a" and button a triggers "y".
;  * having more than one way to trigger the same command name.
; If you understand how the XOR method works, the proper changes should be obvious.
; If you don't understand it, then simply disable the lines in the XOR VarSet
; controller that correspond to the commands you've altered.

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1


;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.

[Statedef -1]

;--[ AI ]------------------------------;
; The main purpose of having these next two controllers here at the top of
; StateDef -1 is to make sure the AI helper never changes to a different state,
; but they also improve efficiency by preventing Mugen from wasting time
; processing the entire State -1 for the helper.
[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

; This is generally the best place to put most of your AI directives.  For
; example, this controller would only be executed when the CPU is in control:
;
; [State -1, Haha!]
; type = ChangeState
; trigger1 = var(0) ; (Or use "var(58)>0" if you've chosen not to
;                   ; use the Simplifier variable/controller.)
; trigger1 = ctrl
; trigger1 = StateType = S
; trigger1 = MoveType = I
; trigger1 = P2MoveType = H
; trigger1 = NumEnemy = 1
; trigger1 = Enemy,GetHitVar(HitTime) > 60
; trigger1 = PrevStateNo != 195
; trigger1 = Random < 99
; value = 195

;--[ Infinite Tests ]----------------------------------------------
;[State -1,ChangeState]
;type = ChangeState
;triggerall = !var(0) && statetype != A
;trigger1 = enemynear,statetype = L
;trigger1 = ctrl
;value = 430
;
;[State -1,ChangeState]
;type = ChangeState
;triggerall = !var(0)
;trigger1 = (stateno = [430,440]) && movecontact
;trigger2 = (stateno = [230,240]) && movecontact
;value = ifelse(stateno = 430,440,ifelse(stateno = 230,240,1310))
;
;[State -1,ChangeState]
;type = ChangeState
;triggerall = !var(0) && statetype = A
;triggerall = !var(21) && p2bodydist x < 10
;trigger1 = stateno = 1300 && movecontact
;value = 960
;

;--[ Basics ]----------------------------------------------
;--[ Air Recover ]--------------------------------
[State -1,ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = var(0)&&  stateno = 5050 && alive
trigger1 = vel y > 0 && canrecover; && random <= 100
value = 5200

;--[ Ground Recover ]--------------------------------
[State -1,ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = alive
triggerall = var(0)&&  stateno = 5100
trigger1 = random <= 500
value = 6500

;--[ Throw 1]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = Var(0) && StateType != A && Ctrl
triggerall = (P2BodyDist X = [0,40]) && P2StateType = S
trigger1 =  Random >= 950 && P2stateno = 100 && ctrl
trigger2 = Random <= 50 && ctrl
value = ifelse(random >=500,900,910)
persistent = 0

;--[ Throw 2]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = Var(0)
triggerall = StateType = A
triggerall = (P2BodyDist X = [0,10]) && P2StateType = A
trigger1 = Random >= 950 && ctrl && p2bodydist y = [-40,40]
trigger2 = (stateno = [1300,1320]) && movecontact
trigger3 = (stateno = 620) && movecontact && random <= 250
trigger4 = (stateno = 640) && movecontact && random <= 250
value = ifelse(random >=500 && frontedgedist >=75,950,ifelse((stateno=[1300,1320]),950,960))
persistent = 0

;--[ Dash ]--------------------------------
[State -1,ChangeState]
type = ChangeState
triggerall = (stateno != [100,106]) && pos y = 0
triggerall = random <= var(41)
triggerall = Var(0) && !(enemynear,hitdefattr =SCA,HA,HP,HT)
triggerall = ctrl && statetype != A && frontedgebodydist >= 70 && (stateno !=[100,105]) && pos y = 0
trigger1 = random <= 500 && (p2bodydist x = [40,320]) && p2movetype != A
trigger2 = numhelper(1005) != 0
trigger3 = roundstate = 2 && prevstateno = [190,194]
trigger4 = stateno = 52 && prevstateno = 7005
trigger5 = (prevstateno = 1600 || prevstateno = 1610 || prevstateno = 1620) && random >= 500
trigger6 = enemynear,stateno = 0 && random >= 500
value = 100

;--[ Air  Dash 1 ]--------------------------------
[State -1,ChangeState]
type = ChangeState
triggerall = stateno != 102
triggerall = random <= var(41)
triggerall = var(34) = 0 && var(27) = 0 && (enemynear,numproj =0)||(enemynear, NumHelper = 0) && p2movetype != A
triggerall = pos y >= -150
triggerall = Var(0) && !(enemynear,hitdefattr =SCA,HA,HP,HT) && Pos Y < ((enemynear,pos y)-(enemynear,const(size.height)))
triggerall = ctrl = 1 && statetype = A && frontedgebodydist >= 70 && stateno !=1301
trigger1 = ctrl && random <= 200 && (p2bodydist x = [140,320]) && p2movetype != A && stateno !=102
trigger2 = numhelper(1005) != 0
trigger2 = p2movetype = H && random >= 650 && (p2bodydist y = [-(var(30)/2),var(30)/2]) && stateno !=102
value = 102

;--[ Air  Dash 2 ]--------------------------------
[State -1,ChangeState]
type = ChangeState
triggerall = stateno != 102
triggerall = stateno != 1201
triggerall = random <= var(41)
triggerall = var(34) = 0 && var(27) = 0
triggerall = (enemynear,numproj !=0)||(enemynear, NumHelper != 0)
triggerall = Var(0) && !(enemynear,hitdefattr =SCA,HA,HP,HT)
triggerall = ctrl = 1 && statetype = A && frontedgebodydist >= 70 && stateno !=1301
trigger1 = backedgedist > 6
trigger1 = p2movetype = H && random >= 650 && Pos Y < ((enemynear,pos y)-(enemynear,const(size.height)))
value = 102

;--[ Dash Back ]--------------------------------
[State -1,ChangeState]
type = ChangeState
triggerall = (stateno != [100,106]) && pos y = 0
triggerall = random <= var(41)
triggerall = Var(0) && EnemyNear, Facing != Facing
triggerall = statetype != A && backedgebodydist >= 10 && ctrl && pos y = 0 && (stateno!= [100,105])
trigger1 = enemy,movetype = I && enemy,vel x >= 5 && random <= 50
trigger2 = enemy,movetype = A && enemy,vel x >= 2 && random >= 950
trigger3 = (enemynear,hitdefattr = SCA,NT,ST,HT) && random >= 750
trigger4 = prevstateno = 6300 && random <= 320; && animtime = 0
trigger5 = (StateType != A) && (inguarddist) && !(enemynear,hitdefattr = SCA,HA)
trigger5 = (ctrl) && (p2movetype!=A)
trigger6 = (enemynear,hitdefattr !=SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT) && p2movetype = A && random >= 500
trigger7 = (ctrl) && p2bodydist x >= 75 && (enemynear,numproj !=0)||(enemynear, NumHelper != 0)
value = 105

;--[ Jump ]--------------------------------
[State -1,ChangeState]
type = ChangeState
triggerall = ifelse(p2name = "evil ken",Random <=250,1)
triggerall = Stateno != [40,50]
triggerall = random <= var(41)
triggerall = Var(0) && !(enemynear,hitdefattr =SCA,HA)
triggerall = statetype != A && (ctrl || stateno = 100 || stateno = 105)
trigger1 = stateno = 100 && random <=500 && p2bodydist x >= 200 && p2movetype != A
trigger2 = stateno = 105 && (p2bodydist x >= 75 || enemynear,vel x > 0) && random <=250
trigger3 = stateno = 105 && backedgedist <= 30 && random >=500
trigger4 = stateno = 105 && backedgedist <= 50 && (ctrl) && (enemynear,numproj !=0)||(enemynear, NumHelper != 0)
value = 40

;--[ Wall Cling ]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = var(0)
triggerall = var(34) = 0 && var(27) = 0
triggerall = backedgedist <= 6
triggerall = ctrl && StateType = A && (pos y=[-300,-50])
trigger1 =  random <=250 && p2bodydist x>= 200
trigger2 = (enemynear,hitdefattr = SCA,NP,SP,HP)
trigger3 = (inguarddist) && (enemynear,hitdefattr = SCA,NP,SP,HP)
trigger3 = (ctrl) && (p2movetype!=A)
trigger4 = (enemynear,numproj !=0)||(enemynear, NumHelper != 0) && Pos Y < ((enemynear,pos y)-(enemynear,const(size.height))) && backedgedist < 20
value = 1200
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = var(0)
triggerall = var(34) = 0 && var(27) = 0
triggerall = frontedgedist <= 6
triggerall = ctrl && StateType = A && (pos y=[-300,-50])
trigger1 = random <=250 && p2bodydist x<= -200
trigger2 =(enemynear,hitdefattr = SCA,NP,SP,HP)
trigger3 =(inguarddist) && (enemynear,hitdefattr = SCA,NP,SP,HP)
trigger4 = (ctrl) && (p2movetype!=A)
trigger5 = (enemynear,numproj !=0)||(enemynear, NumHelper != 0) && Pos Y < ((enemynear,pos y)-(enemynear,const(size.height))) && frontedgedist < 20
value = 1210
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = var(0)
trigger1 = stateno = 1200 && animtime = 0
trigger1 = (enemynear,numproj !=0)||(enemynear, NumHelper != 0)
trigger2 = stateno = 1210 && animtime = 0
trigger2 = (enemynear,numproj !=0)||(enemynear, NumHelper != 0)
value = 1201
persistent = 0

[State -1, roll/dodge]
type=changestate
value=ifelse(random<600,800800,830830)
trigger1= var(0) && numenemy
trigger1= roundstate=2 && statetype!=A && (ctrl || stateno = 100 || stateno = 105) && random<50
trigger1= enemynear,movetype=A && p2bodydist x<80*const(size.xscale)

[State -1, powercharge]
type=changestate
value=16060
trigger1= var(0) && numenemy
trigger1= roundstate=2 && statetype!=A && ctrl
trigger1= power<const(data.power) && power<powermax
trigger1= random<50 && !inguarddist && p2movetype!=A && p2dist x>=160*const(size.xscale)

;--[ Super Attacks ]----------------------------------------------
;--[ Maximum Spider ]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = Var(0) && StateType != C
triggerall = enemynear,ctrl = 0
triggerall = backedgedist >= 0
triggerall = power >= 1000 && prevstateno != 620 && prevstateno != 650 && !(p2bodydist x >= 240) && (enemynear,statetype != L)
trigger1 = ctrl && p2statetype = A && random <= 20 && (enemynear,ctrl = 0) && p2bodydist x <= 150
trigger2 = numhelper(1005) != 0
trigger2 = ctrl && helper(1005),numtarget >= 1 && p2movetype = H && random >= 350 && (stateno = 52 || (prevStateNo = 52))
trigger3 = stateno = 3000 && movehit && hitcount >= 4 && random <= (hitcount)*50
trigger4 = (prevstateno = [6300,6320]) && !(enemynear,hitdefattr=A,HA)
trigger5 = ctrl && enemy,numproj > 0 && random >= 600
trigger6 = ctrl && numhelper(7010) !=0
value = 2000
persistent = 0

;--[ Crawler Assualt ]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = !(enemynear,hitdefattr =SCA,HA,HP,HT)
triggerall = Var(0) && StateType != A && pos Y = 0 && power >= 1000
trigger1 =  (ctrl || stateno = 100 || stateno = 105) && p2statetype = L && (p2bodydist x = [-10,30]) && p2stateno != [5120,5205]
trigger2 = (StateNo = [200,440]) && MoveGuarded = 1 && Random >= 900
trigger3 = stateno = 450 && movecontact && random > 500
trigger4 = prevstateno = 915 && p2movetype = H && random > 700
value = 3000
persistent = 0

;--[ Ultimate Web Throw ]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = Var(0) && StateType != A && pos Y = 0 && (p2bodydist x = [60,200]) && enemynear,pos y >= -100
triggerall = power >= 1000
triggerall = enemynear,ctrl = 0
trigger1 = (ctrl || stateno = 100 || stateno = 105) && p2stateno = 100 && random >= 955
trigger2 = (ctrl || stateno = 100 || stateno = 105) && enemynear,vel x >= 1 && !(enemynear,hitdefattr = SCA,NP,SP,HP) && random >= 700
trigger3 = (ctrl || stateno = 100 || stateno = 105) && p2movetype = H && enemynear,pos y <= -25 && random >= 980
trigger4 = prevstateno = 6310 && stateno = 140 && random >= 700; && animtime = 0
value = 4000
persistent = 0

;--[ Seperation Anxeity ]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = Var(0) && StateType != A && pos Y = 0 && p2bodydist x > 40 && numprojid(6005) =0
triggerall = power >= 3000 && statetype != A && p2statetype != L
triggerall = enemynear,ctrl = 0
trigger1 = stateno = 220 && movehit && time >= 10 && p2movetype != A && ifelse((enemynear,life<= 500),random >= 750,random >=250)
trigger2 = p2statetype = S && stateno = 250 && movehit  && p2movetype != A && ifelse((enemynear,life<= 500),random >= 750,random >=250)
trigger3 = (ctrl || stateno = 100 || stateno = 105) && (enemynear,ctrl =0) && enemynear,pos y >= -50 && enemynear,statetype != L && ifelse((enemynear,life<= 500),random >= 900,random >=250)
value = 6000
persistent = 0

;--[ Special Attacks ]----------------------------------------------

;--[ Web Ball Starter 1]--------------------------------
[State -1,ChangeState]
type = ChangeState
triggerall = numhelper(1005) != 0
triggerall = !var(21)
triggerall = random <= var(41)
triggerall = ifelse(statetype = A,!var(21),1)
triggerall = Var(0) && !(enemynear,hitdefattr =SCA,HA,HP,HT)
triggerall = stateno != 100 && ifelse(statetype = A,(p2bodydist y =[(p2bodydist x-5),p2bodydist x-55]),p2bodydist y >= 200) && ifelse(statetype != A,random >= 500,random <= 200)
trigger1 = ctrl && enemy,vel y > 0 && enemy,pos y > -80 && random <= 200
trigger2 = statetype = A && stateno = 650 && movecontact && random <= 500 && frontedgedist >= 75
trigger3 = (enemynear,numproj > 0) && random >= 500
value = ifelse(p2bodydist x >= 250,1010+((statetype=A)*100),1000+((statetype=A)*100))

;--[ Web Ball Starter 2]--------------------------------
[State -1,ChangeState]
type = ChangeState
triggerall = numhelper(1005) != 0
triggerall = random <= var(41)
triggerall = ifelse(statetype = A,!var(21),1)
triggerall = Var(0) && stateno != 100  && stateno != 105 && !(enemynear,hitdefattr =SCA,HA,HP,HT)
triggerall = ifelse(statetype != A,(enemynear,statetype != L) && random <= 100,random <= 200)
trigger1 = (ctrl || stateno = 100 || stateno = 105) && p2bodydist x >= 150 && random <= 100
value = 1020+((statetype=A)*100)

;--[ Web Swing Starter 1]--------------------------------
[State -1,ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = var(34) < 3
triggerall = Var(0)
triggerall = !(enemynear,hitdefattr =SCA,HA,HP,HT) && (enemynear,numproj =0)||(enemynear, NumHelper = 0)
trigger1 = ctrl && p2bodydist x >= 60 && (p2bodydist y = [-60,60]) && ifelse(stateno = 100,random >= 900,random = 999)
trigger2 = moveguarded && (stateno = [600,650]) && (Pos Y = [(enemynear,pos y),((enemynear,pos y)+(enemynear,const(size.head.pos.y)))])
trigger3 = ctrl && (prevstateno = 52 || stateno = 52) && p2bodydist x >= 100 && random >= 750
trigger4 = ctrl && stateno = 102 && p2bodydist x <= 40 && vel y <= -4 && (Pos Y = [(enemynear,pos y),((enemynear,pos y)+(enemynear,const(size.head.pos.y)))])
trigger5 = ctrl && statetype = A && p2bodydist x <= -30 && (p2dist y = [var(30)/2,var(30)+((var(30)<=60)*25)])&& random <= 550
trigger6 = stateno = 450 && movecontact && p2bodydist x > 50
trigger7 = stateno = 102 && frontedgedist < 6 && p2bodydist x < -100
value = ifelse(p2bodydist x >= 200,1320,ifelse(p2bodydist x >= 130,1310,1300))

;--[ Anti-Air Starter 1]--------------------------------
[State -1,ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = (stateno != [1400,1420]) && pos y = 0 || (prevstateno !=[1400,1420])
triggerall = Var(0)
triggerall = StateType != A
triggerall = p2statetype != C && p2bodydist x >= 5 && (enemynear,vel x >= 0)
trigger1 = (ctrl || stateno = 100 || stateno = 105) && (p2bodydist x = [10,135]) && (enemynear,pos y = [-50,-120]) && random <= 500
trigger2 = stateno = 450 && movecontact && p2bodydist x<= 50
value = ifelse((p2bodydist x >= 100 || enemynear,pos y <= -90),1420,ifelse(p2bodydist x >= 50 || enemynear,pos y <= -50,1410,ifelse(p2movetype = A && p2bodydist y <= -50  && (inguarddist),1620,1400)))

;--[ Anti-Air Starter 2]--------------------------------
[State -1,ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = Var(0)
triggerall = statetype != A
trigger1 = (ctrl || stateno = 100 || stateno = 105) && (p2bodydist y = [-180,-60]) && (p2bodydist x = [-20,100]); && random >= 500
trigger2 = stateno = 220 && movehit
trigger3 = stateno = 140 && (prevstateno = [6300,6310]) && !(enemynear,hitdefattr=SCA,HA); && (enemynear,ctrl = 0)
value = ifelse((enemy,vel x < 0) && p2bodydist x >= 20 && p2dist y <= -20,1510,ifelse(p2bodydist x <= 30 &&((enemynear,vel x = [-3,3])) && p2dist y <= -20,1520,ifelse(p2dist y >= -20,1500,1420)))

;--[ Starter Attacks ]----------------------------------------------
;--[ Combo Starter 1 ]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = Var(0) && !(enemynear,hitdefattr =SCA,HA,HP,HT)
triggerall = StateType != A && p2statetype != A && p2statetype != L && (p2bodydist X = [0,50])
;triggerall = ifelse(numpartner = 1,(TeamMode = simul)&&(partner, name="Spiderman")&&(partner, AuthorName="Seth Zankuten") && !(partner,hitdefattr =SCA,NT,ST,HT) && (enemynear,movetype = H),Var(0))
trigger1 = p2statetype != C && Random <= 350 && (ctrl || stateno = 100 || stateno = 105)
trigger2 = stateno = 200 && moveguarded
trigger3 = random >= 750 && stateno = 52 && prevstateno = 50 || (prevstateno = [600,650])
value = ifelse(stateno = 200,420,ifelse(p2movetype = A,400,200))
persistent = 0

;--[ Combo Starter 2 ]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = Var(0) && !(enemynear,hitdefattr =SCA,HA,HP,HT)
triggerall = StateType != A && p2statetype != A && p2statetype != L && (p2bodydist X = [0,50])
trigger1 = p2statetype != C && (ctrl || stateno = 100 || stateno = 105) && Random >= 750
trigger2 = stateno = 230 && moveguarded
value = ifelse(stateno = 230,450,ifelse(p2movetype = A,430,230))
persistent = 0

;--[ Combo Starter 3 ]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = Var(0) && !(enemynear,hitdefattr =SCA,HA,HP,HT)
triggerall = StateType != A && (ctrl || stateno = 100 || stateno = 105) && p2statetype != A
trigger1 = p2statetype = C && p2bodydist X <= 50 && Random <= 550
trigger2 = p2statetype = S && (p2bodydist X = [0,45]) && Random >= 990
trigger3 = (p2bodydist X = [0,20]) && p2statetype = L && Random <= 300; && prevstateno != 400
value = Ifelse(random >= 400 || prevstateno != 11,430,400)

;--[ Combo Starter 4 ]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = Var(0) && !(enemynear,hitdefattr =SCA,HA,HP,HT)
triggerall = StateType != A && (ctrl || stateno = 100 || stateno = 105) && p2statetype != A && (p2bodydist X = [0,45])
;triggerall = ifelse(numpartner = 1,(TeamMode = simul)&&(partner, name="Spiderman")&&(partner, AuthorName="Seth Zankuten") && !(partner,hitdefattr =SCA,NT,ST,HT) && (enemynear,movetype = H),Var(0))
trigger1 = p2statetype != A && p2movetype = A && Random >= 550
value = Ifelse(random >= 400,430,400)

;--[ OTG Starter 1 ]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = Var(0) && !(enemynear,hitdefattr =SCA,HA,HP,HT)
triggerall = StateType != A && p2statetype = L && (ctrl || stateno = 100 || stateno = 105)
;triggerall = ifelse(numpartner = 1,(TeamMode = simul)&&(partner, name="Spiderman")&&(partner, AuthorName="Seth Zankuten") && !(partner,hitdefattr =SCA,NT,ST,HT) && (enemynear,movetype = H),Var(0))
trigger1 = (p2bodydist X = [0,45])&& Random >= 900
value = 430
persistent = 0

;--[ Dash-In Starter ]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = numhelper(1005) != 0
triggerall = random <= var(41)
triggerall = Var(0) && !(enemynear,hitdefattr =SCA,HA,HP,HT)
triggerall = StateType != A
trigger1 = (StateNo = 100) && p2bodydist x <= 60
value = ifelse(stateno = 100 && random >= 650,210,ifelse(stateno = 100 && p2movetype = H,220,430))
persistent = 0

;--[ Air Combo Starter 1 ]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = Var(0) && StateType = A && !(enemynear,hitdefattr =SCA,HA,HP,HT)
triggerall = StateType = A && Ctrl && p2statetype = A && (p2bodydist x = [-10,60]) && (p2bodydist y = [-70,70])
trigger1 = prevstateno != 600 && stateno = 701 && time = var(18)
value = ifelse(random >= 420,600,630)
persistent = 0

;--[ Air Combo Starter 2 ]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = Var(0) && StateType = A && !(enemynear,hitdefattr =SCA,HA,HP,HT)
triggerall = StateType = A && Ctrl && p2statetype = A && (p2bodydist x = [-10,60]) && (p2bodydist y = [0,var(30)])
trigger1 = ctrl && stateno != 701
value = ifelse(random >= 420,610,640)
persistent = 0

;--[ Jump-In Combo Starter 1 ]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = Var(0) && StateType = A && !(enemynear,hitdefattr =SCA,HA,HP,HT)
triggerall = StateType != S && Ctrl && p2statetype = S  && (p2bodydist x = [0,75])
trigger1 = Statetype = A && vel y > 0+((var(30)>=100)*3) && p2dist y = [var(30)/2,var(30)+((var(30)<=60)*50)]
value = IfElse(p2bodydist x <= 15,600,IfElse(StateNo = 600 && p2bodydist x <= 40 ,630,IfElse(StateNo = 630,640,650)))
persistent = 0

;--[ Jump-In Combo Starter 2 ]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = Var(0) && StateType = A && !(enemynear,hitdefattr =SCA,HA,HP,HT)
triggerall = StateType != S && Ctrl && (p2bodydist x = [-60,65]) && stateno = 102 && (p2bodydist y = [10,var(30)]) ;&& (p2dist y = [var(30)/2,var(30)+((var(30)<=60)*50)])
;triggerall = ifelse(numpartner = 1,(TeamMode = simul)&&(partner, name="Spiderman")&&(partner, AuthorName="Seth Zankuten") && !(partner,hitdefattr =SCA,NT,ST,HT) && (enemynear,movetype = H),Var(0))
trigger1 = Statetype = A && vel y > 0 ;+((var(30)>=100)*3) ; && (p2dist y = [var(30)/2,var(30)+((var(30)<=60)*50)])
trigger2 = Statetype = A && (p2dist y  = [20,-75])
value = IfElse(vel x <= 6,600,IfElse((vel x = [6,9]),630,IfElse(vel x > 8,650,1300)))
persistent = 0

;--[ NON-EX Combos Attacks ]----------------------------------------------
;--[ Jump-In Rave 1 ]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = Var(0) && StateType = A && !(enemynear,hitdefattr =SCA,HA,HP,HT)
triggerall = p2statetype = S
trigger1 = (StateNo = [600,640]) && (MoveContact); && (p2bodydist x = [-10,70])
value = IfElse(Stateno = 600,630,IfElse(StateNo = 630 && p2bodydist x <= 40 ,610,IfElse(StateNo = 610,640,650)))
persistent = 0

;--[ Jump-In Rave 2 ]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = Var(0) && !(enemynear,hitdefattr =SCA,HA,HP,HT)
triggerall = p2statetype = S && StateType = A
trigger1 = (StateNo = [600,620]) && (MoveContact); && (p2bodydist x = [-10,70])
value = IfElse(Stateno = 600,610,IfElse(StateNo = 610,620,650))
persistent = 0

;--[ Air Rave 1 ]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = Var(0) && !(enemynear,hitdefattr =SCA,HA,HP,HT)
triggerall = p2statetype = A && StateType = A && var(18) = 12
trigger1 = (StateNo = [600,630]) && (MoveContact) && stateno != 620; && (p2bodydist x = [-10,70])
value = IfElse(StateNo = 600,630,IfElse(StateNo = 630,610,640));IfElse(StateNo = 610,640,IfElse(StateNo = 640 && palno != 11,1320,IfElse(StateNo = 1320,950,IfElse(palno = 11,650,1320))))))
persistent = 0

;--[ Air Rave 2 ]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = var(0) && p2statetype = A && StateType = A && var(18) = 2
trigger1 = (StateNo = [600,610]) && (MoveContact)
value = IfElse(StateNo = 600,610,650)
persistent = 0

;--[ Air Rave 2 ]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = var(0) && p2statetype = A && StateType = A && var(18) = 2
trigger1 = (StateNo = [630,640]) && (MoveContact)
value = IfElse(StateNo = 630,640,650)
persistent = 0

;--[ Air Rave Finisher ]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = Var(0)&& StateType = A && !(enemynear,hitdefattr =SCA,HA,HP,HT)
trigger1 = (StateNo = 640) && (MoveContact)
value = IfElse(StateNo = 640 && random >= (frontedgedist > 40)*750,1320,650)
persistent = 0

;--[ Combo 1 ]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = Var(0) && StateType != A && !(enemynear,hitdefattr =SCA,HA,HP,HT)
trigger1 = (StateNo = [200,210]) && (MoveContact) && Random >= 900
value = IfElse(StateNo = 200,210+(random >=900)*200+(random<=350)*10,IfElse(StateNo = 210 && p2bodydist x >= 55,1510,ifelse(p2statetype != A,450,40)))
persistent = 0

;--[ Combo  1.5 ]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = Var(0) && StateType != A && (palno != 12) && !(enemynear,hitdefattr =SCA,HA,HP,HT)
trigger1 = StateNo = 220 && (MoveContact) && Random <= 250 && Random >= 900
value = IfElse(random >= 500 && p2bodydist x <= 60,1420,IfElse(StateNo = 220 && power >= 3000,6000,ifelse(power>=1000 && frontedgedist <= 100,3000,1500)))
persistent = 0

;--[ Combo 2 ]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = Var(0) && StateType != A && !(enemynear,hitdefattr =SCA,HA,HP,HT)
trigger1 = (StateNo = [230,250]) && (MoveContact) && Random >= 900
value = IfElse(StateNo = 230,240+((random >=500)||(prevstateno = 52))*200,IfElse(StateNo = 240,1700,IfElse(StateNo = 240,250,IfElse(StateNo = (p2statetype=S)*250,1300,40))))
persistent = 0

;--[ Combo 3 ]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = Var(0) && StateType != A && !(enemynear,hitdefattr =SCA,HA,HP,HT)
trigger1 = (StateNo = [400,420]) && (MoveContact) && Random >= 900
value = IfElse(StateNo = 400,410+(random >=700)*-200,420)
persistent = 0

;--[ Combo 4 ]--------------------------------
[State -1, ChangeState]
type = ChangeState
triggerall = random <= var(41)
triggerall = Var(0) && StateType != A && !(enemynear,hitdefattr =SCA,HA,HP,HT)
trigger1 = (StateNo = [430,440]) && (MoveContact) && Random >= 900
trigger2 = (StateNo = 250) && (MoveContact) && Random <= 300
value = IfElse(StateNo = 430,440+((random >=750)&&(p2statetype = A))*-200,IfElse(StateNo = 440,250,1000))
persistent = 0

;---------------------------------------------------------------------------
;--{Super Attacks}-------------------------
;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 6000
triggerall = !var(0)
triggerall = power >= 3000
triggerall = command = "qcb_2k"
triggerall = statetype != A
trigger1 = (ctrl || stateno = 100 || stateno = 105)
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10= stateno = 420 && movecontact
trigger11= stateno = 430 && movecontact
trigger12= stateno = 440 && movecontact
trigger13= stateno = 450 && movecontact

[State -1, ]
type = ChangeState
value = 2000
triggerall = !var(0)
triggerall = power >= 1000
triggerall = command = "qcf_2p"
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10= stateno = 420 && movecontact
trigger11= stateno = 430 && movecontact
trigger12= stateno = 440 && movecontact
trigger13= stateno = 450 && movecontact
trigger14= stateno = 600 && movecontact
trigger15= stateno = 610 && movecontact
trigger16= stateno = 620 && movecontact
trigger17= stateno = 630 && movecontact
trigger18= stateno = 640 && movecontact
trigger19= stateno = 650 && movecontact
trigger20= stateno = 100 || stateno = 105

[State -1, ]
type = ChangeState
value = 3000
triggerall = !var(0)
triggerall = power >= 1000
triggerall = command = "qcf_2k"
triggerall = statetype != A
trigger1 = (ctrl || stateno = 100 || stateno = 105)
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10= stateno = 420 && movecontact
trigger11= stateno = 430 && movecontact
trigger12= stateno = 440 && movecontact
trigger13= stateno = 450 && movecontact

[State -1, ]
type = ChangeState
value = 4000
triggerall = !var(0)
triggerall = power >= 1000
triggerall = command = "qcb_2p"
triggerall = statetype != A
trigger1 = (ctrl || stateno = 100 || stateno = 105)
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10= stateno = 420 && movecontact
trigger11= stateno = 430 && movecontact
trigger12= stateno = 440 && movecontact
trigger13= stateno = 450 && movecontact

;--{Special Attacks}-------------------------
[State -1, ]
type = ChangeState
value = 1500
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = command = "hcb_x"
triggerall = statetype != A
trigger1 = (ctrl || stateno = 100 || stateno = 105)
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10= stateno = 420 && movecontact
trigger11= stateno = 430 && movecontact
trigger12= stateno = 440 && movecontact
trigger13= stateno = 450 && movecontact

[State -1, ]
type = ChangeState
value = 1510
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = command = "hcb_y"
triggerall = statetype != A
trigger1 = (ctrl || stateno = 100 || stateno = 105)
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10= stateno = 420 && movecontact
trigger11= stateno = 430 && movecontact
trigger12= stateno = 440 && movecontact
trigger13= stateno = 450 && movecontact

[State -1, ]
type = ChangeState
value = 1520
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = command = "hcb_z"
triggerall = statetype != A
trigger1 =(ctrl || stateno = 100 || stateno = 105)
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10= stateno = 420 && movecontact
trigger11= stateno = 430 && movecontact
trigger12= stateno = 440 && movecontact
trigger13= stateno = 450 && movecontact

[State -1, ]
type = ChangeState
value = 1400
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = command = "anti_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10= stateno = 420 && movecontact
trigger11= stateno = 430 && movecontact
trigger12= stateno = 440 && movecontact
trigger13= stateno = 450 && movecontact

[State -1, ]
type = ChangeState
value = 1410
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = command = "anti_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10= stateno = 420 && movecontact
trigger11= stateno = 430 && movecontact
trigger12= stateno = 440 && movecontact
trigger13= stateno = 450 && movecontact

[State -1, ]
type = ChangeState
value = 1420
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = command = "anti_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10= stateno = 420 && movecontact
trigger11= stateno = 430 && movecontact
trigger12= stateno = 440 && movecontact
trigger13= stateno = 450 && movecontact

[State -1, ]
type = ChangeState
value = 1000
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = NumHelper(1005) = 0
triggerall = command = "qcf_x"
triggerall = statetype != A
trigger1 = (ctrl || stateno = 100 || stateno = 105)
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10= stateno = 420 && movecontact
trigger11= stateno = 430 && movecontact
trigger12= stateno = 440 && movecontact
trigger13= stateno = 450 && movecontact

[State -1, ]
type = ChangeState
value = 1010
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = NumHelper(1005) = 0
triggerall = command = "qcf_y"
triggerall = statetype != A
trigger1 = (ctrl || stateno = 100 || stateno = 105)
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10= stateno = 420 && movecontact
trigger11= stateno = 430 && movecontact
trigger12= stateno = 440 && movecontact
trigger13= stateno = 450 && movecontact

[State -1, ]
type = ChangeState
value = 1020
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = NumHelper(1005) = 0
triggerall = command = "qcf_z"
triggerall = statetype != A
trigger1 = (ctrl || stateno = 100 || stateno = 105)
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10= stateno = 420 && movecontact
trigger11= stateno = 430 && movecontact
trigger12= stateno = 440 && movecontact
trigger13= stateno = 450 && movecontact

[State -1, ]
type = ChangeState
value = 1100
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = NumHelper(1005) = 0
triggerall = !var(21)
triggerall = command = "qcf_x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact
trigger7 = stateno = 650 && movecontact

[State -1, ]
type = ChangeState
value = 1110
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = NumHelper(1005) = 0
triggerall = !var(21)
triggerall = command = "qcf_y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact
trigger7 = stateno = 650 && movecontact

[State -1, ]
type = ChangeState
value = 1120
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = NumHelper(1005) = 0
triggerall = !var(21)
triggerall = command = "qcf_z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact
trigger7 = stateno = 650 && movecontact

;Wall Cling (back)
[State -1]
type = ChangeState
value = 1200
triggerall = command = "holdfwd"
triggerall = var(34) = 0 && var(27) = 0
trigger1 = Pos Y < -50
trigger1 = Pos Y > -300
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger1 = BackEdgeDist < 2
trigger1 = Stateno != 1201
trigger1 = Stateno != 1202
trigger1 = Stateno != 1210

;Wall Cling (front)
[State -1]
type = ChangeState
value = 1210
triggerall = command = "holdback"
triggerall = stateno != 102
trigger1 = Pos Y < -50
trigger1 = Pos Y > -300
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger1 = FrontEdgeDist < 2
trigger1 = Stateno != 1200
trigger1 = Stateno != 1201
trigger1 = Stateno != 1202

[State -1, ]
type = ChangeState
value = 1300
triggerall = (!var(20))
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = command = "qcb_a"
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10= stateno = 420 && movecontact
trigger11= stateno = 430 && movecontact
trigger12= stateno = 440 && movecontact
trigger13= stateno = 450 && movecontact
trigger14= stateno = 600 && movecontact
trigger15= stateno = 610 && movecontact
trigger16= stateno = 620 && movecontact
trigger17= stateno = 630 && movecontact
trigger18= stateno = 640 && movecontact
trigger19= stateno = 650 && movecontact
trigger20= stateno = 100 || stateno = 105

[State -1, ]
type = ChangeState
value = 1310
triggerall = (!var(20))
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = command = "qcb_b"
triggerall = var(34)< 3
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10= stateno = 420 && movecontact
trigger11= stateno = 430 && movecontact
trigger12= stateno = 440 && movecontact
trigger13= stateno = 450 && movecontact
trigger14= stateno = 600 && movecontact
trigger15= stateno = 610 && movecontact
trigger16= stateno = 620 && movecontact
trigger17= stateno = 630 && movecontact
trigger18= stateno = 640 && movecontact
trigger19= stateno = 650 && movecontact
trigger20= stateno = 100 || stateno = 105

[State -1, ]
type = ChangeState
value = 1320
triggerall = (!var(20))
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = command = "qcb_c"
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10= stateno = 420 && movecontact
trigger11= stateno = 430 && movecontact
trigger12= stateno = 440 && movecontact
trigger13= stateno = 450 && movecontact
trigger14= stateno = 600 && movecontact
trigger15= stateno = 610 && movecontact
trigger16= stateno = 620 && movecontact
trigger17= stateno = 630 && movecontact
trigger18= stateno = 640 && movecontact
trigger19= stateno = 650 && movecontact
trigger20= stateno = 100 || stateno = 105

[State -1,37]
type = ChangeState
value = 800800
trigger1= var(0)<=0
triggerall = statetype != A && (ctrl || stateno = 100 || stateno = 105)
trigger1 = command = "x" && command = "a" && command = "holdfwd"

[State -1,37]
type = ChangeState
value = 830830
trigger1= var(0)<=0
triggerall = statetype != A && (ctrl || stateno = 100 || stateno = 105)
trigger1 = command = "x" && command = "a"

[State -1, powercharge]
type=changestate
value=16060
trigger1= var(0)<=0
trigger1= command="holdb" && command="holdy"
trigger1= roundstate=2 && statetype!=A && ctrl
trigger1= power<const(data.power) && power<powermax

[State -1, Counter]
type = ChangeState
value = 10900
triggerall = command = "z" && command = "c"
triggerall = power >= 1000
trigger1 = stateno = [150,153]

;--{Throw Attacks}-------------------------
[State -1, ]
type = ChangeState
value = 900
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = command != "holddown"
triggerall = statetype = S && enemynear,statetype = S
triggerall = p2bodydist x <= 10
triggerall = ctrl
trigger1 = command = "holdfwd" && command = "z"

[State -1, ]
type = ChangeState
value = 910
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = command != "holddown"
triggerall = statetype = S && enemynear,statetype = S
triggerall = p2bodydist x <= 10
triggerall = ctrl
trigger1 = command = "holdfwd" && command = "c"

[State -1, ]
type = ChangeState
value = 950
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = pos y <= -30
triggerall = statetype = A && enemynear,statetype = A
triggerall = p2bodydist x <= 10
triggerall = command = "holdfwd" && command = "z"
trigger1 = ctrl && p2bodydist y = [-20,20]
trigger2 = stateno = 1300 && movecontact
trigger3 = stateno = 1310 && movecontact
trigger4 = stateno = 1320 && movecontact

[State -1, ]
type = ChangeState
value = 960
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = pos y <= -30
triggerall = statetype = A && enemynear,statetype = A
triggerall = p2bodydist x <= 10 && p2bodydist y = [-20,20]
triggerall = command = "holdfwd" && command = "c"
trigger1 = ctrl

;--{Normal Attacks}-------------------------
[State -1, ]
type = ChangeState
value = 200
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = command != "holddown"
trigger1 = command = "x"
trigger1 = statetype != A
trigger1 = (ctrl || stateno = 100 || stateno = 105)

[State -1, ]
type = ChangeState
value = 210
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = (ctrl || stateno = 100 || stateno = 105)
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

[State -1, ]
type = ChangeState
value = 220
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = (ctrl || stateno = 100 || stateno = 105)
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact

[State -1, ]
type = ChangeState
value = 230
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = (ctrl || stateno = 100 || stateno = 105)

[State -1, ]
type = ChangeState
value = 240
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = (ctrl || stateno = 100 || stateno = 105)
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

[State -1, ]
type = ChangeState
value = 250
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = (ctrl || stateno = 100 || stateno = 105)
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact

[State -1, ]
type = ChangeState
value = 400
triggerall = ifelse(var(41)>500,!var(0),1)
trigger1 = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = (ctrl || stateno = 100 || stateno = 105)

[State -1, ]
type = ChangeState
value = 410
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = (ctrl || stateno = 100 || stateno = 105)
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

[State -1, ]
type = ChangeState
value = 420
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = (ctrl || stateno = 100 || stateno = 105)
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact

[State -1, ]
type = ChangeState
value = 430
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = (ctrl || stateno = 100 || stateno = 105)

[State -1, ]
type = ChangeState
value = 440
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = (ctrl || stateno = 100 || stateno = 105)
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

[State -1, ]
type = ChangeState
value = 450
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = (ctrl || stateno = 100 || stateno = 105)
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact

[State -1, ]
type = ChangeState
value = 600
triggerall = ifelse(var(41)>500,!var(0),1)
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ]
type = ChangeState
value = 610
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

[State -1, ]
type = ChangeState
value = 620
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

[State -1, ]
type = ChangeState
value = 630
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact

[State -1, ]
type = ChangeState
value = 640
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact

[State -1, ]
type = ChangeState
value = 650
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact

[State -1, ]
type = ChangeState
value = 195
triggerall = ifelse(var(41)>500,!var(0),1)
triggerall = stateno != 100
triggerall = stateno != 102
triggerall = stateno != 105
triggerall = stateno != 195
trigger1 = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, ]
type = ChangeState
value = 100
triggerall = ifelse(var(41)>500,var(0),1)
triggerall = stateno != 100
triggerall = stateno != 102
triggerall = stateno != 105
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, ]
type = ChangeState
value = 102
triggerall = ifelse(var(41)>500,var(0),1)
triggerall = var(34) = 0 && var(27) = 0
triggerall = stateno != 100
triggerall = stateno != 102
triggerall = stateno != 105
triggerall = stateno != 1201
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, ]
type = ChangeState
value = 105
triggerall = !var(0)
triggerall = stateno != 100
triggerall = stateno != 102
triggerall = stateno != 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Fall]
type = VarSet
triggerall = alive
trigger1 = command = "recovery_roll"
trigger1 = stateno = 5050 || stateno = 5071 || stateno = 5100
v = 40
value = 1

[State -1, roll]
type = ChangeState
triggerall = alive
trigger1 = Var(40) = 1
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 6500