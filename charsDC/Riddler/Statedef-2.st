;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "Correct? %d Position %d"
params = (helper(12345),var(4)),(helper(12345),var(5))
;---------------------------------------------------------------------------
[Statedef -2]

[State -2, Simplifier]
type = VarSet
trigger1 = (var(59) = 1)
trigger2 = (var(0):=0)
var(0) = 1
IgnoreHitPause = 1

;KO Sound when defeated

[State -2, varKOsnd]
type=varset
trigger1=alive&&var(18)>0
trigger2=!alive&&var(18)<2
var(18)=ifelse(alive,0,var(18)+1)
ignorehitpause=1

[State -2, GetHit Snd]
type=playsnd
triggerall=alive&&time=1
triggerall=stateno=5000||stateno=5010
trigger1=gethitvar(animtype)>=2&&random<500
trigger2=gethitvar(animtype)=1&&random<375
trigger3=gethitvar(animtype)=0&&random<250
value=s5000,(1+(random%3));*10,ceil(random/200)
channel=5
ignorehitpause=1

[State -2, GetHit Snd]
type=playsnd
triggerall=alive&&time=1
trigger1=(stateno=5000||stateno=5010)&&numenemy
trigger1=gethitvar(fall)||(enemynear,hitdefattr=SCA,SA,HA)
trigger2=(stateno=5020||stateno=5070||stateno=5080)
trigger3=(stateno=5050||stateno=5100)&&(prevstateno!=[5000,5199])
value=s5000,(1+(random%3));*10,ceil(random/200)
channel=5
ignorehitpause=1

[State -2, KOsnd]
type=null;playsnd
trigger1=!alive&&var(18)=1
trigger1=var(18):=2
value=11,0
channel = -1
ignorehitpause=1
persistent=0


;damage dampenering

[State -2, Damage Dampener]; Scaling in action
type= attackmulset
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.9, 0.8**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

;Hyper Background Removed when Hyper Done or hit out of Hyper
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno!=[3000,3999]
trigger1 = NumExplod(10010)>0
id =10010
;ignorehitpause =
;persistent =

;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;------------------------------------------------------------------------------

; END

[State -2, Hyper Combo Finish FX]
type = Helper
triggerall = (WinKO) && (NumHelper(9700) = 0)
trigger1 =  (hitdefattr = SCA, HA,HP)
trigger2 = ProjHitTime(3330) = 0
trigger3 = Stateno = [3002,4999]; && ProjHitTime(425) = 0
helpertype = Normal
name = "Hyper Combo Finish FX"
ID = 9700
stateno = 9700
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 0
supermove=9999
pausemove=9999
ignorehitpause=1


[State -2: Helper]
type = Helper
triggerall = (WinKO) && (NumHelper(8420) = 0)
trigger1 = (hitdefattr = SCA, SA,SP)
helpertype = Normal
name = "Super WinKO"
id = 8420
pos = 0,0
postype = p1
facing = 0
stateno = 8420
keyctrl = 0
ownpal = 1
supermovetime = 1000
pausemovetime = 1000

;------------------------------------------------------------------------------
; Adapted from POTS
[State -2, Sparks]
type=helper
trigger1= hitpausetime=8  && numtarget
trigger1= Stateno = 1250 && MoveHit=1
trigger2= IsHelper(1001) && Movehit=1
trigger3= ProjHitTime(1015) = 1 || ProjHitTime(3330) = 1
helpertype=normal
stateno=8050+var(30)
ID=8000
name="Blood"
postype=p2
pos=(target,const(size.ground.front)-10),-50
facing= -1
ownpal=1
size.xscale=.5
size.yscale=.5
pausemovetime=65535
supermovetime=65535
ignorehitpause=1
persistent = 0

;---------------------- Integer variable list ----------------------

; var(0):= -2
; var(1):= 5300, 9741, -1
; var(2):= 155, 5350, 5351, 9741
; var(3):= 5000, 5010, 5020, 5030
; var(4):= 1300, 1400
; var(9):= 9741
;var(18):= -2
;var(19):= 3200, 3203
;var(58):= -3
;var(59):= 9741, -3

;---------------------- Float variable list ----------------------


