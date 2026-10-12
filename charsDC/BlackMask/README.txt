Black Mask Alpha

Spites by REDZ edit with permission from origional author Sean Aulty
Code by ALEXZIQ some partial coding on gun reload used from Comissionar Gordon character 
edited from Sean Aulty as well.

Special thanks to Trexell for puting basics together.
Hyper arrows done by Volzilla







--------------------------------LEGENDS OF THE DARK KNIGHT TEMPLATE---------------------------------------
Version 1.1 What new and fixed (March 30,2011)
-added guardsounds
-fixed no timer in flight mode
-fixed canceling out of hyper into flight mode
-fixed no cancel out of flight mode
-fixed bug in A.I Air Dash
-Adjusted pausetimes on Basic attacks to 8,8
-reduce juggle point from 4 to 1
-increased damage on basic attack 28,1 for light, 52,1 for medium and 72,1 for Hard
-fixed poweradd on basic attacks 20 for light, 40 for medium, and 60 for Hard
-fixed player indictators showing up in introductions
----------------------------------------------------------------------------------
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
