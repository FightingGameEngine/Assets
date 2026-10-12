--------------------------------LEGENDS OF THE DARK KNIGHT TEMPLATE---------------------------------------

Sparks, and Hyper Background by ACEY & Infinity Mugen Team
Player indicators by Spooky
Hyperport design created, and sprited by Arlequin.
Base for template Quasar by BDC 
Template concept put together, and designed by AA250, Alexziq, and BDC.


VARIABLES
-----------------------------------------------------------------------------------
var(2) -Statedef 810 Throw Player State
var(3) Statedef -2-Damage damper 
!gethitvar(isbound) -Statedef 820 Thrown p2 Custom state
var(1) - Statedef -2 Display To Clipboard
var(50) - Statedef -2 Display to Clipboard
var(17) -Statedef -3 Explod
var(39) -statedef -3 Explod
var(37) -statedef -3 Explod
var(59)  -statedef -1 Artificial Intelligence


COLLISON BOXES RED AND BLUES BOXES
-----------------------------------------------------------------------------------
Before I begin I just wanted to say that I would avoid using the auto collision tool
that in fighting factory. If you are using Fighting Factory Ultimate than you can
skip this part. The reason why I say this because auto collision create to many 
collision boxes that are unnessary for a particular animation


-----------------------------------------------------------------------------------
EXTRAS

In statedef -2.st cns you will find a code like this

[State -2, Damage Dampener]; Scaling in action
type= attackmulset
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) < 3, 24, ifelse(enemynear, gethitvar(hitcount) >= 24, 2, 26 - enemynear, gethitvar(hitcount))) / 29.0
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

basically what this code does is it reduces damage when characters combo get longer.
