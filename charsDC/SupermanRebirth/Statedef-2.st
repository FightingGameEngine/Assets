;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]
;-------------------------------------------------------------------------------
;KO Sound when defeated
;-------------------------------------------------------------------------------
[State -2, varKOsnd]
type=varset
trigger1=alive&&var(18)>0
trigger2=!alive&&var(18)<2
var(18)=ifelse(alive,0,var(18)+1)
ignorehitpause=1

[State -2, KOsnd]
type=playsnd
trigger1=!alive&&var(18)=1
trigger1=var(18):=2
value=5500,0
channel = -1
ignorehitpause=1
persistent=0
;-------------------------------------------------------------------------------
;Get Hit Sounds
;-------------------------------------------------------------------------------
[State -2, gethits]         ; custom gethit sounds
type = PlaySnd
triggerall = random < 200
triggerall = (stateno = [5000,5210]) && (Time = 1) && (!IsHelper)
trigger1 = anim = 5030  ; air hit
trigger2 = anim = 5070  ; tripped
persistent = 1
value = S5000,0

[State -3, hurt Sound 1]
type = PlaySnd
triggerall = Time = 1
triggerall = random < 400
trigger1 = Stateno = 5000 || Stateno = 5020
trigger1 = movetype = H
value = S5000,1

[State -3, hurt Sound 1]
type = PlaySnd
triggerall = Time = 1
triggerall = random < 400
trigger1 = Stateno = 5010
trigger1 = movetype = H
value = S5000,2

;XCOSTUME

[state -2, No Clones]
type = remappal
triggerall=numenemy && (fvar(36)=[1,12]);fvar(36)=the number of pals available 
trigger1=fvar(37)&&!numhelper(12345)&&matchno=1&&roundno=1
trigger1=enemy,authorname="logansam"&&enemy,name="Superman"&&enemy,fvar(36)=fvar(36) 
source = 1, 1
dest = 1, Ifelse(teamside!=1 && enemynear,Numhelper(12345)=0,enemy,fvar(36)+teamside,fvar(36))
ignorehitpause = 1

[state -2, Palette]
type = varset
trigger1 = numhelper(12345)
trigger1=helper(12345),fvar(36)=[1,12]
fvar(36)= helper(12345),fvar(36)
ignorehitpause = 1

[state -2, Palette Selection]
type = remappal
trigger1 = numhelper(12345)
trigger1=helper(12345),fvar(36)=[1,12]
source = 1, 1
dest = 1, fvar(36)
ignorehitpause = 1

[state -2, Continue Palette]
type = remappal
trigger1=fvar(37)&&!AILevel&&matchno>1
source = 1, 1
dest = 1, fvar(36)
ignorehitpause = 1
 
 
;XCOSTUME

;-------------------------------------------------------------------------------
;damage dampenering
;-------------------------------------------------------------------------------
[State -2, Damage Dampener]; Scaling in action
type= attackmulset
triggerall = stateno !=[3000,3999] ; prevent damage scaling in supers between this range of statedef
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.9, 0.8**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
triggerall = stateno !=[3000,3999]; prevent damage scaling in supers between this range of statedef
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

; END
