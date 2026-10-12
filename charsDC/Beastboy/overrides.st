
;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]


[State -2, nodizzy]
type = RemoveExplod
trigger1 = (Anim != 5300) && (NumExplod(5301) > 0)
ID = 5305

[State -2, ダメージボイス]
type = PlaySnd
triggerall = Time = 1
triggerall = Alive
triggerall = Random < 500
trigger1 = stateno = 5000 || stateno = 5010 || stateno = 5020
trigger2 = stateno = 5070 || stateno = 5080
;trigger3 = stateno = 5210 || stateno = 5220 || stateno = 5221 || stateno = 5222
value = 5000,0+ (Random%4)
channel = 0
;volume = 220


