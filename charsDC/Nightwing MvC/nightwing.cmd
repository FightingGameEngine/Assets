
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

[Command]
name = "DU"
command = D, U
time = 8

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "trow"
command = y+z
time = 1

[Command]
name = "3P"
command = x+y+z
time = 1

[Command]
name = "3K"
command = a+b+c
time = 1

;-| Dir + Button |
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |
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

;-| Hold Dir |--
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
name = "hyper1"
command = ~D, DF, F, x+y
time = 40
[Command]
name = "hyper1"
command = ~D, DF, F, y+z

[Command]
name = "hyper2"
command = ~D, DF, F, a+b
[Command]
name = "hyper2"
command = ~D, DF, F, b+c

[Command]
name = "hyper3"
command = ~D, DB, B, x+y
[Command]
name = "hyper3"
command = ~D, DB, B, y+z

[Command]
name = "Knee Press Nightmare"
command = ~D, DB, B, a+b
time = 15
[Command]
name = "Knee Press Nightmare"
command = ~D, DB, B, b+c
time = 15

[Command]
name = "hyper5"
command = ~D, DF, F, a+x
[Command]
name = "hyper5"
command = ~D, DF, F, b+y
[Command]
name = "hyper5"
command = ~D, DF, F, z+c

[Command]
name = "Multibatarang"
command = ~D, DB, B, a+x
[Command]
name = "Multibatarang"
command = ~D, DB, B, b+y
[Command]
name = "Multibatarang"
command = ~D, DB, B, z+c



;-| Specials |--


[Command]
name = "NormalBatarang"
command = ~D, DF, F, x
[Command]
name = "EletricBatarang"
command = ~D, DF, F, y
[Command]
name = "ExplosiveBatarang"
command = ~D, DF, F, z

[Command]
name = "DiagonalBatarang"
command = ~D, DB, B, b
[Command]
name = "DiagonalBatarang"
command = ~D, DB, B, c
[Command]
name = "DiagonalBatarang"
command = ~D, DB, B, a

[Command]
name = "stomp"
command = ~B, F, z
[Command]
name = "smoke"
command = ~B, F, y
[Command]
name = "special02"
command = ~B, F, x

[Command]
name = "shock"
command = ~D, DB, B, x
[Command]
name = "Eletric wave"
command = ~D, DB, B, y
[Command]
name = "Eletric Shield"
command = ~D, DB, B, z

[Command]
name = "special_03B"
command = ~B, F, a
[Command]
name = "special_03B"
command = ~B, F, b
[Command]
name = "special_03B"
command = ~B, F, c

[Command]
name = "special8b"
command = ~D, DF, F, b
[Command]
name = "special8a"
command = ~D, DF, F, a
[Command]
name = "special8b"
command = ~D, DF, F, c


[Statedef -1]

[State -1, 1]
type = changestate
value = 200
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState >= 1 && p2life > 0  &&  life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 600)

;
; Combo 2 - Light Punch > Heavy Punch

[State -1, 2]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 200)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 210

;
; Combo 3 - Light Punch > Medium Punch

[State -1, 3]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 210)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 220

;
; Combo 4 - Medium Punch > Heavy Rolling Tiger Drill

[State -1, 4]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 220)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 250
;
; Combo 1 - Light Punch

[State -1, 1A]
type = changestate
value = 230
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 600)

;
; Combo 2 - Light Punch > Heavy Punch

[State -1, 2A]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 230)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 240

;
; Combo 3 - Light Punch > Medium Punch

[State -1, 3A]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 240)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 250

;
; Combo 4 - Medium Punch > Heavy Rolling Tiger Drill

[State -1, 4A]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 250)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 220

;
; Combo 1 - Light Punch

[State -1, 1B]
type = changestate
value = 200
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 600)

;
; Combo 2 - Light Punch > Heavy Punch

[State -1, 2B]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 200)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 210

;
; Combo 3 - Light Punch > Medium Punch

[State -1, 3B]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 210)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 240

;
; Combo 4 - Medium Punch > Heavy Rolling Tiger Drill

[State -1, 4B]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 240)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 250

;
; Combo 1 - Light Punch

[State -1, 1C]
type = changestate
value = 230
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 600)

;
; Combo 2 - Light Punch > Heavy Punch

[State -1, 2C]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 230)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 240

;
; Combo 3 - Light Punch > Medium Punch

[State -1, 3C]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 240)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 210

;
; Combo 4 - Medium Punch > Heavy Rolling Tiger Drill

[State -1, 4C]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 210)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 220

;
; Combo 1 - Light Punch

[State -1, 1D]
type = changestate
value = 200
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 600)

;
; Combo 2 - Light Punch > Heavy Punch

[State -1, 2D]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 200)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 210

;
; Combo 3 - Light Punch > Medium Punch

[State -1, 3D]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 210)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 230

;
; Combo 4 - Medium Punch > Heavy Rolling Tiger Drill

[State -1, 4D]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 230)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 240

;
; Combo 1 - Light Punch

[State -1, 1E]
type = changestate
value = 200
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 600)

;
; Combo 2 - Light Punch > Heavy Punch

[State -1, 2E]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 200)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 220

;
; Combo 3 - Light Punch > Medium Punch

[State -1, 3E]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 220)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 230

;
; Combo 4 - Medium Punch > Heavy Rolling Tiger Drill

[State -1, 4E]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 230)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 250

;
; Combo 1 - Light Punch

[State -1, 1F]
type = changestate
value = 200
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 600)

;
; Combo 2 - Light Punch > Heavy Punch

[State -1, 2F]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 200)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 400

;
; Combo 3 - Light Punch > Medium Punch

[State -1, 3F]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 400)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 410

;
; Combo 4 - Medium Punch > Heavy Rolling Tiger Drill

[State -1, 4F]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 410)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 420

;
; Combo 1 - Light Punch

[State -1, 1G]
type = changestate
value = 230
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 600)

;
; Combo 2 - Light Punch > Heavy Punch

[State -1, 2G]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 230)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 430

;
; Combo 3 - Light Punch > Medium Punch

[State -1, 3G]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 430)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 440

;
; Combo 4 - Medium Punch > Heavy Rolling Tiger Drill

[State -1, 4G]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 440)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 450

;
; Combo 1 - Light Punch

[State -1, 1X]
type = changestate
value = 200
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 600)
;
; Combo 2 - Light Punch > Heavy Punch

[State -1, 2X]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 200)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 210

;
; Combo 3 - Light Punch > Medium Punch

[State -1, 3X]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 210)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 230

;
; Combo 4 - Medium Punch > Heavy Rolling Tiger Drill

[State -1, 4X]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 230)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 240

;
; Combo 2 - Light Punch > Heavy Punch

[State -1, 5X]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 240)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 400

;
; Combo 3 - Light Punch > Medium Punch

[State -1, 6X]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 400)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 410

;
; Combo 4 - Medium Punch > Heavy Rolling Tiger Drill

[State -1, 7X]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 410)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 430

;
; Combo 2 - Light Punch > Heavy Punch

[State -1, 8X]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 430)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 440

;
; Combo 3 - Light Punch > Medium Punch

[State -1, 9X]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 440)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 210

;
; Combo 4 - Medium Punch > Heavy Rolling Tiger Drill

[State -1, 10X]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 210)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 220

;
; Combo 4 - Medium Punch > Heavy Rolling Tiger Drill

[State -1, 11X]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 220)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 240
;
; Combo 4 - Medium Punch > Heavy Rolling Tiger Drill

[State -1, 11X]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 240)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 250
;
; Combo 4 - Medium Punch > Heavy Rolling Tiger Drill

[State -1, 12X]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 250)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 420
;
; Combo 1 - Light Punch

[State -1, 1S]
type = changestate
value = 200
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 400)

;
; Combo 2 - Light Punch > Heavy Punch

[State -1, 2S]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 200)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 210

;
; Combo 3 - Light Punch > Medium Punch

[State -1, 3S]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 210)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 220
;
; Combo 1 - Light Punch

[State -1, 1T]
type = changestate
value = 230
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 400)

;
; Combo 2 - Light Punch > Heavy Punch

[State -1, 2T]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 230)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 240

;
; Combo 3 - Light Punch > Medium Punch

[State -1, 3T]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 240)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 250

;
; Combo 1 - Light Punch

[State -1, 1U]
type = changestate
value = 200
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 400)

;
; Combo 2 - Light Punch > Heavy Punch

[State -1, 2U]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 200)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 230

;
; Combo 3 - Light Punch > Medium Punch

[State -1, 3U]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 230)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 240

;
; Combo 1 - Light Punch

[State -1, 1V]
type = changestate
value = 230
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 400)

;
; Combo 2 - Light Punch > Heavy Punch

[State -1, 2V]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 230)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 200

;
; Combo 3 - Light Punch > Medium Punch

[State -1, 3V]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 200)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 210
;
; Combo 1 - Light Punch

[State -1, 1Y]
type = changestate
value = 400
triggerall = (statetype = C) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 400)
;
; Combo 2 - Light Punch > Heavy Punch

[State -1, 2Y]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 400)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 430

;
; Combo 3 - Light Punch > Medium Punch

[State -1, 3Y]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 430)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 440
;
; Combo 1 - Light Punch

[State -1, 1Z]
type = changestate
value = 400
triggerall = (statetype = C) && var(59) && p2statetype != L && RoundState >= 1
triggerall = life > 0 && p2life > 0
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && Random <= 400)
;
; Combo 2 - Light Punch > Heavy Punch

[State -1, 2Z]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 400)
trigger1 = (movehit)
trigger1 = (random = [0,500])
value = 430

;
; Combo 3 - Light Punch > Medium Punch

[State -1, 3Z]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 430)
trigger1 = (movehit)
trigger1 = (random = [501,999])
value = 440
;
; Combo 4 - Medium Punch > Heavy Rolling Tiger Drill

[State -1, 4Z]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 440)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 450

;===========================================================================
;
; Combo 1 - Light Punch

[State -1, Normal]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall = (ctrl)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 40)
trigger1 = (random = [501,999])
value = 200
;
; Combo 1 - Light Punch

[State -1, Normal]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall =  (ctrl)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 40)
trigger1 = (random = [501,999])
value = 210
;
; Combo 1 - Light Punch

[State -1, Normal]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall = (ctrl)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 40)
trigger1 = (random = [501,999])
value = 220
;
; Combo 1 - Light Punch

[State -1, Normal]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall = (ctrl)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 40)
trigger1 = (random = [501,999])
value = 230

[State -1, Normal]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall = (ctrl)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 40)
trigger1 = (random = [501,999])
value = 240

[State -1, Normal]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall = (ctrl)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 40)
trigger1 = (random = [501,999])
value = 250

;
; Combo 1 - Light Punch

[State -1, Normal]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = C)
triggerall = (p2statetype != A)
triggerall = (ctrl)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 40)
trigger1 = (random = [501,999])
value = 400
;
; Combo 1 - Light Punch

[State -1, Normal]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = C)
triggerall = (p2statetype != A)
triggerall = (ctrl)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 40)
trigger1 = (random = [501,999])
value = 410
;
; Combo 1 - Light Punch

[State -1, Normal]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = C)
triggerall = (p2statetype != A)
triggerall = (ctrl)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 40)
trigger1 = (random = [501,999])
value = 420

[State -1, Normal]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = C)
triggerall = (p2statetype != A)
triggerall = (ctrl)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 40)
trigger1 = (random = [501,999])
value = 430

[State -1, Normal]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = C)
triggerall = (p2statetype != A)
triggerall = (ctrl)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 40)
trigger1 = (random = [501,999])
value = 440

[State -1, Normal]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = C)
triggerall = (p2statetype != A)
triggerall = (ctrl)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 40)
trigger1 = (random = [501,999])
value = 450

;-- specials & hypers --
[State -1, 1]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall = (ctrl) && (!IsHelper)
triggerall = life < 1000 && p2life > 0
trigger1 = (p2bodydist x <= 80)
trigger1 = (random < 600)
value = 3200

[State -1, 4S]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 220)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 1710

[State -1, Esgrima]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall = (ctrl) && (!IsHelper)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 80)
trigger1 = (random < 400)
value = 1710

[State -1, Esgrima2]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 250)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 1700

[State -1, Esgrima2]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall = (ctrl) && (!IsHelper)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 80)
trigger1 = (random < 400)
value = 1700

[State -1, 1]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall = (ctrl) && (!IsHelper)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 80)
trigger1 = (random < 400)
value = 1600


[State -1, Shock]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 210)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 1500

[State -1, Shock]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall = (ctrl) && (!IsHelper)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 80)
trigger1 = (random < 400)
value = 1500

[State -1, Eletric Shield]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 240)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 1400

[State -1, Eletric Shield]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall = (ctrl) && (!IsHelper)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 80)
trigger1 = (random < 400)
value = 1400

[State -1, Eletrc wave]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 440)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 1300

[State -1, Eletric wave]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall = (ctrl) && (!IsHelper)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 80)
trigger1 = (random < 400)
value = 1300

[State -1, ShoryuCombo]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
trigger1 = (stateno = 420)
trigger1 = (movehit)
trigger1 = (power > 1000)
trigger1 = (random = [501,999])
value = 1100

[State -1, ShoryuCombo]
type = changestate
Triggerall = roundstate >= 1
triggerall = var(59)
triggerall = (statetype = S)
triggerall = (p2statetype != A)
triggerall = (ctrl) && (!IsHelper)
triggerall = life > 0 && p2life > 0
trigger1 = (p2bodydist x <= 80)
trigger1 = (random < 400)
value = 1100

;Player
;
; Amalgam Hyper
;[State -1, Amalgam]
;type = ChangeState
;value = 4000
;triggerall = command = "Amalgam"
;triggerall = power >= 3000
;triggerall = StateType != A
;triggerall = MoveType != H
;trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 3000
triggerall = Command = "Knee Press Nightmare"
trigger1 = Power >= 1000 && var(30)=0 && var(47)=0
trigger2 = (Power >= 1000 || fvar(0) > 0) && (var(30)=[1,2])
triggerall = !StateType = A && (Ctrl || (var(40)=[1,3]))

[State -1]
type = ChangeState
value = 3100
triggerall = command = "hyper1" && power >= 1000
trigger1 = (statetype = s) && ctrl

[State -1]
type = ChangeState
value = 3200
triggerall = command = "hyper2" && power >= 1000
trigger1 = (statetype = s) && ctrl

[State -1]
type = ChangeState
value = 3333
triggerall = command = "hyper3" && power >= 1000
trigger1 = (statetype = s) && ctrl

[State -1]
type = ChangeState
value = 3400
triggerall = command = "hyper5" && power >= 1000
trigger1 = (statetype = s) && ctrl

[State -1]
type = ChangeState
value = 3500
triggerall = command = "Multibatarang" && power >= 1000
trigger1 = (statetype = s) && ctrl

;
;stomp
[State -1,stomp]
type = ChangeState
value = 1600
triggerall = command = "stomp"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && ( stateno = 200 || stateno = 240 || stateno = 220 || stateno = 260 )
trigger3 = movecontact && ( stateno = 300 || stateno = 305 || stateno = 320 || stateno = 325 )

;
;eletric shield
[State -1,eletric shield]
type = ChangeState
value = 1400
triggerall = command = "Eletric Shield" || command = "Eletric Shield" || command = "Eletric Shield"
triggerall = p2stateno != 1066
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && ( stateno = 200 || stateno = 240 || stateno = 220 || stateno = 260 )
trigger3 = movecontact && ( stateno = 300 || stateno = 305 || stateno = 320 || stateno = 325 )

;
;eletric wave
[State -1, eletric wave]
type = ChangeState
value = 1300
triggerall = numhelper(1050) < 1 && numhelper(1060) < 1 && numhelper(1070) < 1 && numhelper(1085) < 1
triggerall = p2stateno != 1066
triggerall = command = "Eletric wave"
triggerall = statetype != A && enemy, movetype != H
trigger1 = ctrl

;--
;SPECIAL_03_B
[State -1, 1201]
type = ChangeState
value = 1210
triggerall = command = "special_03B" &&  statetype != A
trigger1 = ctrl
trigger2 = movecontact && ( stateno = 200 || stateno = 240 || stateno = 220 || stateno = 260 )
trigger3 = movecontact && ( stateno = 300 || stateno = 305 || stateno = 320 || stateno = 325 )

[State -1,1210]
type = ChangeState
value = 1210
triggerall = var(25) = 1 && statetype != A
trigger1 = movecontact && stateno= 325
trigger1 = random <= 200
trigger2 = ctrl && P2bodydist X = [80,120]
trigger2 = random <= 100

;
;Esgrim
[State -1,Esgrim]
type = ChangeState
value = 1700+ifelse(command = "special8b",10,0)
triggerall = command = "special8a" || command = "special8b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && ( stateno = 200 || stateno = 240 || stateno = 220 || stateno = 260 )
trigger3 = movecontact && ( stateno = 300 || stateno = 305 || stateno = 320 || stateno = 325 )

;
;smoke grenade
[State -1,smoke grenade]
type = ChangeState
value = 1800
triggerall = command = "smoke"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && ( stateno = 200 || stateno = 240 || stateno = 220 || stateno = 260 )
trigger3 = movecontact && ( stateno = 300 || stateno = 305 || stateno = 320 || stateno = 325 )

;--
;SPECIAL_02
[State -1, 1100]
type = ChangeState
value = 1100
triggerall = command = "special02" && statetype != A
trigger1 = ctrl
trigger2 = movecontact && ( stateno = 200 || stateno = 240 || stateno = 220 || stateno = 260 )
trigger3 = movecontact && ( stateno = 300 || stateno = 305 || stateno = 320 || stateno = 325 )

;
;shock
[State -1,shock]
type = ChangeState
value = 1500
triggerall = command = "shock"
triggerall = p2stateno != 1066
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && ( stateno = 200 || stateno = 240 || stateno = 220 || stateno = 260 )
trigger3 = movecontact && ( stateno = 300 || stateno = 305 || stateno = 320 || stateno = 325 )

;--
;Diagonal Batarang
[State -1, Diagonal Batarang]
type = ChangeState
value = 1080
triggerall = numhelper(1050) < 1 && numhelper(1060) < 1 && numhelper(1070) < 1 && numhelper(1085) < 1 && (numhelper(1350) < 1 || numhelper(1360) < 1 || numhelper(1370) < 1 )
triggerall = command = "DiagonalBatarang"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && ( stateno = 200 || stateno = 240 || stateno = 220 || stateno = 260 )
trigger3 = movecontact && ( stateno = 300 || stateno = 305 || stateno = 320 || stateno = 325 )

;--
; Batarang
[State -1, Eletric Batarang]
type = ChangeState
value = 1010
triggerall = numhelper(1050) < 1 && numhelper(1060) < 1 && numhelper(1070) < 1 && numhelper(1085) < 1&& numhelper(1086) < 1&& numhelper(1087) < 1 && (numhelper(1350) < 1 || numhelper(1360) < 1 || numhelper(1370) < 1 )
triggerall = command = "EletricBatarang"
triggerall = statetype != A && enemy, movetype != H
trigger1 = ctrl
trigger2 = movecontact && ( stateno = 200 || stateno = 240 || stateno = 220 || stateno = 260 )
trigger3 = movecontact && ( stateno = 300 || stateno = 305 || stateno = 320 || stateno = 325 )

[State -1, Batarang]
type = ChangeState
value = 1000+ifelse(command="ExplosiveBatarang",20,0)
triggerall = numhelper(1050) < 1 && numhelper(1060) < 1 && numhelper(1070) < 1 && numhelper(1085) < 1&& numhelper(1086) < 1&& numhelper(1087) < 1 && (numhelper(1350) < 1 || numhelper(1360) < 1 || numhelper(1370) < 1 )
triggerall = command = "NormalBatarang" || command = "ExplosiveBatarang"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && ( stateno = 200 || stateno = 240 || stateno = 220 || stateno = 260 )
trigger3 = movecontact && ( stateno = 300 || stateno = 305 || stateno = 320 || stateno = 325 )

;
; Hyper1 (whatever it may be...)
;


;
;trow
[State -1, Light Punch]
type = ChangeState
value = 800
triggerall = !Var(59)
triggerall = (Command = "z" || command = "c") && Command = "holdfwd"
triggerall = Command != "holddown"
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl
;
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 1045
trigger1 = command = "DU"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = command = "holdup" && Var(3) != 1
trigger2 = stateno = 420
trigger2 = movecontact = 1

;===========================================================================
;
;Stand Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;Stand Medium Punch
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact

;Stand Strong Punch
[State -1]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 230 && MoveContact
trigger5 = stateno = 240 && MoveContact

;
;Stand Light Kick
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact


;Stand Medium Kick
[State -1]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 230 && MoveContact

;Stand Strong Kick
[State -1]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 240 && MoveContact
trigger7 = stateno = 410 && MoveContact

;
;Taunt
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;
;Crouch Light Punch
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;Crouch Medium Punch
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact
trigger4 = stateno = 250 && MoveContact
trigger5 = stateno = 400 && MoveContact
trigger6 = stateno = 430 && MoveContact

;Crouch Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact
trigger4 = stateno = 210 && MoveContact
trigger5 = stateno = 240 && MoveContact
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 430 && MoveContact
trigger8 = stateno = 410 && MoveContact
trigger9 = stateno = 440 && MoveContact
;
;Crouch Light Kick
[State -1]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && MoveContact

;Crouch Medium Kick
[State -1]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact
trigger4 = stateno = 400 && MoveContact
trigger5 = stateno = 410 && MoveContact
trigger6 = stateno = 430 && MoveContact

;Crouch Strong Kick
[State -1]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact
trigger4 = stateno = 210 && MoveContact
trigger5 = stateno = 240 && MoveContact
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 430 && MoveContact
trigger8 = stateno = 410 && MoveContact
trigger9 = stateno = 440 && MoveContact

;
;Jump Light Punch
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;Jump Medium Punch
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 630 && MoveContact

;Jump Strong Punch A
[State -1]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 630 && MoveContact
trigger5 = stateno = 640 && MoveContact
trigger6 = stateno = 650 && MoveContact



;
;Jump Light Kick
[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact

;Jump Medium Kick
[State -1]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 630 && MoveContact
trigger4 = stateno = 610 && MoveContact

;Jump Strong Kick
[State -1]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 620 && MoveContact
trigger5 = stateno = 630 && MoveContact
trigger6 = stateno = 640 && MoveContact
