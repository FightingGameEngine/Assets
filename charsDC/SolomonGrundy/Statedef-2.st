;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]


;[State -2, Damage Dampener]; Scaling in action
type= attackmulset
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) < 3, 24, ifelse(enemynear, gethitvar(hitcount) >= 24, 2, 26 - enemynear, gethitvar(hitcount))) / 29.0
ignorehitpause= 1

;[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

[State 0, VarAdd]
type = VarAdd
trigger1 = time = 1
trigger1 = stateno =5000 ||stateno =5010 || stateno =5020 || stateno =5030
v = 1
value = var(3)

[State 0, VarAdd]
type = VarAdd
triggerall = numenemy > 0
trigger1 = enemy, Moveguarded
trigger1 = time = 1
trigger1 = anim =150 ||anim =152 || anim =154
v = 2
value = 30 + var(3)

[State 0, ChangeState]
type = selfstate
triggerall = stateno >= 150
triggerall = stateno <= 155
triggerall = statetype= S
trigger1 = var(2) >400
value = 5350
ctrl = 0

[State 0, ChangeState]
type = selfstate
triggerall = stateno >= 150
triggerall = stateno <= 155
triggerall = statetype= C
trigger1 = var(2) >400
value = 5351
ctrl = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = var(1) <=300
trigger1 = var(1) > 0
trigger1 = roundstate = 2
trigger1 = movetype = I
trigger1 = gametime % 2 =1
v = 1
value = -1

[State 0, VarAdd]
type = VarAdd
trigger1 = var(2) <=400
trigger1 = var(2) > 0
trigger1 = roundstate = 2
trigger1 = movetype = I
trigger1 = gametime % 2 =1
v = 2
value = -1

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(2)=%d, var(1)=%d, var(50)=%d, var(59)=%d, p2bodydist y=%d"
params = var(2), var(1), var(50), var(0), floor(p2bodydist y)

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno!=[3000,3999]
trigger1 = NumExplod(10010)>0
id =10010
;ignorehitpause =
;persistent =

[State 0, VarSet]
type = VarSet
triggerall = var(41) != 0
trigger1 =  ctrl
v = 41
value = 0

;-----------------------------------
;hurt sounds
;-----------------------------------
[State -2, ダメージボイス]
type = PlaySnd
triggerall = Time = 1
triggerall = Alive
triggerall = Random < 500
trigger1 = stateno = 5000 || stateno = 5010 || stateno = 5020
trigger2 = stateno = 5070 || stateno = 5080
;trigger3 = stateno = 5210 || stateno = 5220 || stateno = 5221 || stateno = 5222
value = 5000,0 + (Random%3)
channel = 0
;volume = 220

;regeneration
[State -2, LifeAdd]
type = LifeAdd
trigger1 = roundstate = 2
trigger1 = life > 0
trigger1 = (gametime%25) = 1
value = 1
kill = 0
absolute = 0
ignorehitpause =1
;persistent =


; END
