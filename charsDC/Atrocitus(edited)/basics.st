; States file for {character} -- Basics
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;  20: Launcher Limiter (statedef 220)
;  21: Ground Bounce (statedef 650)
;  22: OTG Limiter (statedef 1300)
;  23: Wall Bounce Limiter (statedef 250)
;  24: Capture Ball Limiter (statedef 1100)
;  25: Dizzy Limiter (statedef 1121)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Lose (on timeover)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170,0]
type = PlaySnd
trigger1 = Time = 10
value = 170,0

[State 170,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Draw game (on timeover)
[Statedef 175]
type = S
ctrl = 0
anim = 175
velset = 0,0

[State 175,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,2

[State 175,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Winposes
[Statedef 180]  ; winpose selector
type = S
ctrl = 0
velset = 0,0

[State 180,Winpose decider]
type = ChangeState
trigger1 = Time = 0
value = 181 + ((Random * 3) / 1000)     ; change the 1 to however many winposes you have

;-----------------------
; Winpose 01 - Clothes
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 182]
type = PlaySnd
trigger1 = AnimElem = 1
value = s1900,3
persistent = 0
channel = -1

[State 182]
type = PlaySnd
trigger1 = AnimElem = 1
value = s1900,3
persistent = 0
channel = -1

[State 181, Explod]
type = Explod
trigger1 = animelem = 6
anim = 1801 + random%8
ID = 1801
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 1
ontop = 0
shadow = 0,0,0
ownpal = 1

[State 181, Explod]
type = Explod
trigger1 = animelem = 5
anim = 1810;8000
ID = 1810;8000
pos = -10,-70
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 2
ontop = 1
shadow = 0,0,0
ownpal = 1

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,200]
flag = RoundNotOver

;-----------------------
; Winpose 02 - Grrrr
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182]
type = PlaySnd
trigger1 = AnimElem = 1
value = s1900,4
persistent = 0
channel = -1

[State 182]
type = PlaySnd
trigger1 = AnimElem = 1
value = s1900,4
persistent = 0
channel = -1

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = RoundNotOver

;-----------------------
; Winpose 03 - Number 1
[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 182]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1900,5
persistent = 0

[State 182]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1900,5
persistent = 0

[State 183,1]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[State 190, ChangeState]
type = null;ChangeState
trigger1 = enemynear, name = "Rogue"
trigger2 = enemynear, name = "Black Widow"
trigger3 = enemynear, name = "Psylocke_EOH" || enemynear, name = "Psylocke"
trigger4 = enemynear, name = "Scarlet Witch"
trigger5 = enemynear, name = "Emma Frost"
trigger6 = enemynear, name = "Storm"
trigger7 = enemynear, name = "Spiral"
trigger8 = enemynear, name = "Birdy"
trigger9 = enemynear, name = "Hope"
trigger10 = enemynear, name = "Wonder Woman"
trigger11 = enemynear, name = "Mystique"
trigger12 = enemynear, name = "MissMarvel"
trigger13 = enemynear, name = "Poison"
trigger14 = enemynear, name = "Shadowcat"
trigger15 = enemynear, name = "Wasp"
trigger16 = enemynear, name = "Black Cat"
trigger17 = enemynear, name = "Crystal of The Avengers"
trigger18 = enemynear, name = "Elektra"
trigger19 = enemynear, name = "Catwoman"
trigger20 = enemynear, name = "Starfire"
trigger21 = enemynear, name = "Supergirl Kara Zor-el" || enemynear, name = "Supergirl"
trigger22 = enemynear, name = "She-Hulk"
value = 196
ctrl = 0

[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
value = 191 + ((Random * 3) / 1000)     ; change the 1 to however many intros you have

;-----------------------
; Intro 01 - Apocalypse version 1
[Statedef 198]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = 190,0+random%4
channel = 20

[State 191, 1]
type = PlaySnd
trigger1 = animelem = 43
value = 8,1
channel = 20

[State 191, 2]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 0

;-----------------------
; Intro 02 - Apocalypse version 2
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = s1900,0
channel = -1

[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = s1900,0
channel = -1

[State 192, Explod]
type = Explod
trigger1 = time = 0
anim = 190
ID = 190
pos = -75,0
postype = p1
facing = 1
removetime = -2
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 1

[State 192, Explod]
type = Explod
trigger1 = time = 100
anim = 920
ID = 920
pos = 10,40
postype = p1
facing = 1
removetime = -2
scale = 1,1
sprpriority = 1
ontop = 0
shadow = 0,0,0
ownpal = 1


[State 192, Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

;[State 192, 1]
;type = PlaySnd
;trigger1 = Time = 60
;value = 190,0+random%4
;channel = 20

[State 192, 2]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 0

;-----------------------
; Intro 03 - Fists
[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 193, Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 193, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S1900,1
channel = -1

[State 193, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S1900,1
channel = -1


[State 193, 2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 0

;---------------------------------------------------------------------------
;Intro: Comming Down
[Statedef 191]
type = S
ctrl = 0
anim = 197
velset = 0,0

[State -2]
type = AfterImage
trigger1 = time = 0
time = 80
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  170,0,0
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add1;add1;AS250D250;none
Length = 15
FrameGap = 4

[State -2, PalFX]
type = PalFX
triggerall = anim = 197
trigger1 = timemod = 20,0
time = 25
add = 60,0,0
color = 128
sinadd = 60,0,0,50
ignorehitpause = 1

[State 191, 位置変更]
type = posset
trigger1 = time = 0
y = -300

[State 191, カメラ]
type = ScreenBound
trigger1 = 1
value = 0

[State 191, アニメ変更];バトル画面に切り替わった瞬間のフェードインの時、アニメを固定している
type = ChangeAnim
trigger1 = RoundState = 0
value = 197

[State 191, 特殊効果];試合が開始するまではこのコントローラを使おう（※２）
type = AssertSpecial
trigger1 = 1
flag = Intro ;イントロの状態

[State 191, ステート変更];アニメーションが終われば「通常立ち」のステートに変更する
type = Changestate
trigger1 = pos y > 0
value = 194
ctrl = 0

[State 191, 速度変更]
type = velset
trigger1 = RoundState != 0
y = 5

[State 191, 炎の音];
type = PlaySnd
trigger1 = time = 0
value = 190,4
persistent = 0
channel = -1

[State 191, 炎の音];
type = PlaySnd
trigger1 = time = 0
value = 8,0
persistent = 0
channel = -1

[State 191, 炎の音];
type = PlaySnd
trigger1 = time = 10
value = 1900,2
persistent = 0
channel = -1

[State 191, 炎の音];
type = PlaySnd
trigger1 = time = 10
value = 1900,2
persistent = 0
channel = -1



;着地
[Statedef 192]
type = S
ctrl = 0
anim = 47
velset = 0,0

[State 191, 位置変更]
type = posset
trigger1 = time = 0
y = 0



;---------------------------------------------------------------------------
;Intro: Comming Down
[Statedef 194]
type = S
ctrl = 0
anim = 199
velset = 0,0

[State 191, 特殊効果];試合が開始するまではこのコントローラを使おう（※２）
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, ステート変更];アニメーションが終われば「通常立ち」のステートに変更する
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;-----------------------
; Intro 04 - Crowd Running
[Statedef 199];4]
type = S
ctrl = 0
anim = 196
velset = 0,0

[State 191, 1]
type = PlaySnd
trigger1 = animelem = 16
trigger1 = animelem = 26
trigger1 = animelem = 36
value = 8,1
channel = 20

[State 194, 1]
type = Helper
trigger1 = Time = 10
postype = p1
pos = -100,10
stateno = 8100
helpertype = normal
ownpal = 0
keyctrl = 0

[State 194, 2]
type = Helper
trigger1 = Time = 12
postype = p1
pos = -400,0
stateno = 8101
helpertype = normal
ownpal = 0
keyctrl = 0

[State 194, 3]
type = Helper
trigger1 = Time = 8
postype = p1
pos = -170,15
stateno = 8102
helpertype = normal
ownpal = 0
keyctrl = 0

[State 194, 4]
type = Helper
trigger1 = Time = 15
postype = p1
pos = -230,-5
stateno = 8103
helpertype = normal
ownpal = 0
keyctrl = 0

[State 194, Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 194, 2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 0

;-----------------------
; Intro 05 - Against Girls
[Statedef 196]
type = S
ctrl = 0
anim = 194
velset = 0,0

[State 196, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S2000,11
channel = 20

;[State 196]
;type = PlaySnd
;trigger1 = AnimElem = 28
;value = 195,0
;channel = 20

[State 196, Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 196, 2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 0

;---------------------------------------------------------------------------
; Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2
poweradd = 100

[State 195]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1950,0
channel = -1

[State 195]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1950,0
channel = -1

[State 195, 2]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Punch
[StateDef 200]
anim = 200
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 30

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 30
guardflag = MA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = 0;S9990
sparkxy = 0,-85
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Medium Punch
[StateDef 210]
anim = 210
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 65

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 210, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,1

[State 210, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 45
guardflag = MA
pausetime = 9,13;9
hitsound = S2,1
guardsound = S3,0
sparkno = 0;S9991
sparkxy = 0,-85
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -2,-2;3,-6

[State 210, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Hard Punch
[StateDef 220]
anim = 220
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 96

[State 220, ChangeAnim]
type = ChangeAnim
triggerall = anim != 225
trigger1 = p2dist x < 100
value = 225

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2

[State 220, HitDef]
type = HitDef
triggerall = anim = 220
trigger1 = Time = 0
attr = S, NA
damage = 60
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = 0;S9992
sparkxy = 0,-60
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 12
guard.hittime  = 3
ground.velocity = -9 ,-2
airguard.velocity = -2.8,-.8
air.type = High
air.velocity = -11,-1
air.hittime = 20
fall = 1

[State 220, HitDef]
type = HitDef
triggerall = var(20) < 2
triggerall = anim = 225
trigger1 = Time = 0
attr = S, NA
damage = 60
guardflag = MA
pausetime = 6,6
hitsound = S2,2
guardsound = S3,0
sparkno = 0;S9992
sparkxy = 0,-85
animtype = Heavy
ground.type = Low
fall.animtype = up
ground.slidetime = 8
ground.hittime  = 20
guard.hittime  = 3
ground.velocity = 0,-14
guard.velocity = -4
air.velocity = 0,-12
airguard.velocity = -2,-3
p2stateno = 5060

[State 220, HitDef]
type = HitDef
triggerall = var(20) >= 2
triggerall = anim = 225
trigger1 = Time = 0
attr = S, NA
damage = 60
guardflag = MA
pausetime = 6,6
hitsound = S2,2
guardsound = S3,0
sparkno = 0;S9992
sparkxy = 0,-85
animtype = Heavy
ground.type = Low
fall.animtype = up
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -3,-1
guard.velocity = -4
air.velocity = -3,-1
airguard.velocity = -2,-3
fall = 1
air.fall = 1

[State 220, back to stance]
type = ChangeState
triggerall = var(59)
trigger1 = AIlevel >= 4
trigger1 = anim = 225
trigger1 = movehit
value = 700

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Hard Punch 2 (Air Combo Launcher)
[StateDef 225]
anim = 226
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 96

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2

[State 220, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 60
trigger1 = Time = 0
attr = S, NA
damage = 60
guardflag = MA
pausetime = 6,6
hitsound = S2,2
guardsound = S3,0
sparkno = 0;S9992
sparkxy = 0,-85
animtype = Heavy
ground.type = Low
fall.animtype = up
ground.slidetime = 8
ground.hittime  = 20
guard.hittime  = 3
ground.velocity = 0,-14
guard.velocity = -4
air.velocity = 0,-12
airguard.velocity = -2,-3
p2stateno = 5060

[State 220, back to stance]
type = ChangeState
triggerall = var(59)
trigger1 = AIlevel >= 4
trigger1 = movehit
value = 700

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Kick
[StateDef 230]
anim = 230
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 25

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 230, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 230, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 25
guardflag = MAFD
pausetime = 6,6
hitsound = S2,0
guardsound = S3,0
sparkno = 0;S9990
sparkxy = 0,-30
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3

[State 230, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Medium Kick
[StateDef 240]
anim = 240
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 65

[State 240, pos]
type = Velset
trigger1 = time = 0
x = 5

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 240, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 240, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 40
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = 0;S9991
sparkxy = 0,-65
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State 240, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Kick
[StateDef 250]
anim = 250
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 96

[State 250, ChangeAnim]
type = ChangeAnim
triggerall = anim != 255
trigger1 = time = 0
trigger1 = p2dist x < 100
value = 255

[State 250, pos]
type = Velset
triggerall = anim = 250
trigger1 = time = 0
x = 5

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 250, HitDef]
type = HitDef
triggerall = var(23) = 0
trigger1 = Time = 0
attr = S, NA
damage = 55
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = 0;S9992
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 12
guard.hittime  = 3
ground.velocity = -9 ,-7
airguard.velocity = -2.8,-.8
air.type = High
air.velocity = -9,-5
air.hittime = 20
fall = 1
p2stateno = 5045

[State 250, HitDef]
type = HitDef
triggerall = var(23) != 0
trigger1 = Time = 0
attr = S, NA
damage = 55
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = 0;S9992
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 12
ground.velocity = -9 ,-2
airguard.velocity = -2.8,-.8
air.type = High
air.velocity = -11,-1
air.hittime = 20
fall = 1

[State 250, VarSet]
type = VarSet
trigger1 = movehit
v = 23
value = 1

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 220, superjump launch]
type = ChangeState
trigger1 = command = "holdup" && movehit
value = 700
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Punch
[StateDef 400]
anim = 400
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 30

[State 400, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 400, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 400, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 30
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-65
animtype = Light
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -2
air.velocity = -3,-6

[State 400, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[StateDef 410]
anim = 410
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 65

[State 410, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 410, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 410, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 45
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-65
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8
guard.velocity = -10
air.velocity = -3,-6

[State 410, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Punch
[StateDef 420]
anim = 420
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 65

[State 420, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 420, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 420, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 55
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-55
animtype = Heavy
ground.type = Trip
ground.slidetime = 15
ground.hittime  = 15
guard.hittime  = 3
ground.velocity = -3,-5
guard.velocity = -5
air.velocity = -2,-3

[State 420, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 455
ID = 455
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
;removetime = -2
;sprpriority = 2
ontop = 1
removeongethit = 1

[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Kick
[StateDef 430]
anim = 430
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 25

[State 430, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 430, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 430, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 25
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,0
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -1
air.velocity = -2,-3

[State 430, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[StateDef 440]
anim = 440
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 10

[State 440, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 440, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 440, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 30
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-20
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8
guard.velocity = -10
air.velocity = -3,-6

[State 440, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Kick
[StateDef 450]
anim = 450
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 25

[State 450, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 450, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 450, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
hitflag = M
damage = 50
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = 0;S9992
sparkxy = 0,-20
animtype = Back
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
guard.hittime  = 3
ground.velocity = -6
guard.velocity = -3

[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Punch
[StateDef 600]
anim = 600
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 25

[State 600, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 600, grunt]
type = PlaySnd
trigger1 = Time = 1
value = 1,0

[State 600, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 25
guardflag = HA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-70
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-6;3

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Punch
[StateDef 610]
anim = 610
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 65

[State 610, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 610, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 610, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 40
guardflag = HA
pausetime = 10,10
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-90
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Punch
[StateDef 620]
anim = 620
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 96

[State 620, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 620, grunt]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2

[State 620, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 55
guardflag = HA
pausetime = 12,12
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-90
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3
fall = 1
air.fall = 1

[State 620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 630]
anim = 630
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 22

[State 630, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 630, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 630, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 25
guardflag = HA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-60
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-6;3

[State 630, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Kick
[StateDef 640]
anim = 640
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 65

[State 640, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 640, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 640, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 40
guardflag = HA
pausetime = 10,10
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-70
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 640, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Kick
[StateDef 650]
anim = 650
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 92

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 650, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 650, HitDef]
type = HitDef
triggerall = var(21) = 0
trigger1 = Time = 0
attr = A, NA
damage = 55
guardflag = HA
pausetime = 12,12
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-80
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,7
fall = 1
air.fall = 1
p2stateno = 5130

[State 650, HitDef]
type = HitDef
triggerall = var(21) != 0
trigger1 = Time = 0
attr = A, NA
damage = 55
guardflag = HA
pausetime = 12,12
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-80
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,7
fall = 1
air.fall = 1
;p2stateno = 5130

[State 650, VarSet]
type = VarSet
trigger1 = movehit
v = 21
value = 1

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;---------------------------------------------------------------------------
; Throw
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 805;0

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = ifelse (command = "holdback", -1, 1)
p2facing = 1
p1stateno = 810
p2stateno = 820
;fall = 1
ID = 820

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Throw P1
[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810
poweradd = 60
sprpriority = 1

[State 810, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S2000,6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 0, 0

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 6
pos = 70, 0

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 5
value = -100
ID = -1
kill = 1
absolute = 0

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Throw P2
[Statedef 820]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 2

[State 820, 1]
type = Changeanim2
Trigger1 = time = 0
value = 820

[State 820, VelSet]
type = VelSet
trigger1 = animtime = 0
x = -8
y = 4

[State 820, State End]
type = SelfState
trigger1 = animtime = 0
value = 5050
ctrl = 0

;---------------------------------------------------------------------------
;Super Jump opponent locator
[Statedef 910]
type    = A
physics = N
ctrl = 0
sprpriority = 2

[State 910, arrow]
type = ChangeAnim
trigger1 = IsHelper(0)
;trigger1 = TeamSide = 2
value = 910

[State 910, destroyself]
type = DestroySelf
triggerall = IsHelper(0)
trigger1 = RootDist Y > 0


;-----------------------
; Safe fall (from superjump, or jumping attack)
[StateDef 948]
type = A
movetype = I
physics = A
ctrl = 1

; neutral
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X = 0)
value = 48

; forwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X > 0)
value = 49

; backwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X < 0)
value = 50

;----------------------------------------------------
; Intro Crowd Runners
[Statedef 8100]
type    = A
movetype= I
physics = N
anim = 8100

[State 8100, 1]
type = SprPriority
trigger1 = Time >= 0
value = 6

[State 8100, 2]
type = VelSet
trigger1 = Time = [0,249]
X = 5.5

[State 8100, 3]
type = VelSet
trigger1 = Time = 250
X = 0

[State 8100, 5]
type = DestroySelf
trigger1 = Time = 265

;----------------------------------------------------
; Intro Crowd Runners
[Statedef 8101]
type    = A
movetype= I
physics = N
anim = 8101

[State 8101, 1]
type = SprPriority
trigger1 = Time >= 0
value = 6

[State 8101, 2]
type = VelSet
trigger1 = Time = [0,249]
X = 6.8

[State 8101, 3]
type = VelSet
trigger1 = Time = 250
X = 0

[State 8101, 5]
type = DestroySelf
trigger1 = Time = 265

;----------------------------------------------------
; Intro Crowd Runners
[Statedef 8102]
type    = A
movetype= I
physics = N
anim = 8102

[State 8102, 1]
type = SprPriority
trigger1 = Time >= 0
value = 6

[State 8102, 2]
type = VelSet
trigger1 = Time = [0,249]
X = 6.2

[State 8102, 3]
type = VelSet
trigger1 = Time = 250
X = 0

[State 8102, 5]
type = DestroySelf
trigger1 = Time = 265

;----------------------------------------------------
; Intro Crowd Runners
[Statedef 8103]
type    = A
movetype= I
physics = N
anim = 8103

[State 8103, 1]
type = SprPriority
trigger1 = Time >= 0
value = 6

[State 8103, 2]
type = VelSet
trigger1 = Time = [0,249]
X = 5.8

[State 8103, 3]
type = VelSet
trigger1 = Time = 250
X = 0

[State 8103, 5]
type = DestroySelf
trigger1 = Time = 265
