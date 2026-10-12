; States file for {character} -- Hypers
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Hyper Attacks
; 
; Hyper 1 (QCF + PP) -- state 3000
;   hyper 1
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Hyper 1 -- Mega beam
[StateDef 3000]
type    = S
physics = S
ctrl = 0
anim = 3000
velset = 0,0
sprpriority = 1

[State 3000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
ID = 918
bindtime = 1
removetime = -2
sprpriority = 3
removeongethit = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
sound = S10,1
pos = 20,-70
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 1
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------

[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 2
name = "megabeam"
ID = 3010
stateno = 3010
pos = 25,-62
postype = p1
ownpal = 1
sprpriority = 0
supermove

[State 3110, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Hyper 1 - beam helper
[StateDef 3010]
type = A
movetype = A
physics = C
anim = 3010
ctrl = 0
sprpriority = 0

;[State 3010, PosSet]
;type = PosSet
;trigger1 = 1
;x = parent, Pos X
;y = parent, Pos Y - 125

[State 3010, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10


[State 3010, hitdef]
type = HitDef
trigger1 = TimeMod = 5,0
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 30,5
pausetime = 0,10
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,75
animtype = Heavy
ground.type = Low
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
kill = 1
guard.kill = 1
fall.kill = 1
palfx.time = 25
palfx.add = 0,64,0

[State 3115, DestroySelf]
type = DestroySelf
trigger1 = Time = 50


;========================<SHUN GOKU SATSU>=============================
[Statedef 4000]
type=S
physics=S
movetype=A
anim=4000
ctrl=0
velset=0,0
juggle=15
facep2=1
poweradd=-3000

[State 4000, strengthvar]
type=varset
trigger1= var(10)!=7
var(10)=7

[State 4000, snd]
type=playsnd
trigger1= !time
value=4,13
channel=0
volume=200
[State 4000, ECreset]
type=palfx
trigger1= !time
trigger1= var(20):=-1
time=1
[State 4000, superchargehelper]
type=helper
trigger1= !time
helpertype=normal
stateno=9999
ID=9999
name="Super Charge"
postype=p1
pos=14,-104
ownpal=1
persistent=0
supermovetime=9999

[State 4000, superchargepause]
type=superpause
trigger1= !time
time=60
anim=-1
sound=s7,0
p2defmul=1
darken=0

[State 4000, nhb]
type=nothitby
trigger1= time<10
time=1
value=SCA

[State 4000, vel]
type=velset
trigger1= 1
x=8
[State 4000, snd]
type=playsnd
trigger1= animelemtime(1)>1
value=5,6
persistent=0

[State 4000, hit]
type=hitdef
trigger1= time
attr=S,HT
hitflag=M-
priority=1,Miss
numhits=0
sparkno=-1
p1facing=1
p1stateno=4001
fall=1
fall.recover=0
[State 4000, no hit]
type=hitdef
trigger1= time
trigger1= numenemy
trigger1= (enemynear,movetype=H) || (enemynear,stateno=40)
attr=S,HT
hitflag=

[State 4000, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;---PLAYER---
[Statedef 4001]
type=S
physics=N
movetype=A
anim=4001
ctrl=0
velset=0,0
sprpriority=1

[State 4001, throw]
type=targetstate
trigger1= !time
value=1114002
[State 4001, throw]
type=targetfacing
trigger1= !time
value=-1

[State 4001, snd]
type=playsnd
trigger1= !time
value=4,10
channel=0
[State 4001, grabsound]
type=playsnd
trigger1= !time
value=0,800
[State 4001, snd]
type=playsnd
trigger1= !time
value=5,8

[State 4001, vsothers]
type=varset
trigger1= !time
var(30)=345

[State 4001, vsgoukiorgen]
type=varset
triggerall= !time && numtarget
trigger1= target,name="Gouki" || target,name="Shin Gouki" || target,name="Akuma" || target,name="Shin Akuma"
trigger2= target,name="Mech Gouki" || target,name="Cyber Akuma" || target,name="Gen"
trigger3= target,name="Pocket Shin Gouki" || target,name="cvsgouki" || target,name="SF3Gouki"
trigger4= target,name="SoulGen" || target,name="Gouki_Cota" || target,name="Gouki CVS 3"
var(30)=20

[State 4001, vsevilryu]
type=varset
triggerall= !time && numtarget
trigger1= target,name="Evil Ryu" || target,name="ERyu"
trigger2= target,name="Ryu" && target,authorname="Phantom.of.the.Server" && target,var(1)!=1
trigger3= target,name="CVSEvilRyu" || target,name="Destrudo Ryu"
trigger4= target,name="Ryu" && target,authorname="N64Mario" && target,palno>=7
trigger5= target,name="cvsryu" && target,authorname="Warusaki3" && target,var(12)=10
trigger6= target,name="eRYU-SvsC"
var(30)=30

[State 4001, vsothersgsusers]
type=varset
triggerall= !time && numtarget
trigger1= target,name="God Rugal" || target,name="Dark Sakura"
trigger2= target,name="Oyaji" && target,authorname="Mr.Chainsaw & Phantom.of.the.Server"
trigger3= target,name="cvsrugal" && target,authorname="Warusaki3" && target,var(12)=10
trigger4= target,name="cvsg_rugal" && target,authorname="Warusaki3"
trigger5= target,name="Tin's S_Gouki" || target,name="Blaze Agent"
var(30)=30

[State 4001, vsdhalsimetc]
type=varset
triggerall= !time && numtarget
trigger1= target,name="Dhalsim"
var(30)=30

[State 4001, vsCAPCOMbadguys]
type=varset
triggerall= !time && numtarget
trigger1= target,name="Demitri" || target,name="Jedah"
trigger2= target,name="Vega" && (target,authorname="Phantom.of.the.Server" || target,authorname="Messatsu")
trigger3= target,name="cvsvega" && (target,authorname="Warusaki3" || target,authorname="Gargoyle")
trigger4= target,name="M.Bison" && target,authorname="N-Mario"
trigger5= target,name="[Necromancer's] M. Bison"
trigger6= target,name="M. Bison" && target,authorname="VK, Updated by Terry Kuo, adapted by Tenebrous"
trigger7= target,name="CvSBison" && target,authorname="Team Kai (Saiai and Koga)"
trigger8= target,name="Shadow DIO" || target,name="Gill"
var(30)=456

[State 4001, vsSNKbadguys]
type=varset
triggerall= !time && numtarget
trigger1= target,name="Geese" || target,name="Orochi" || target,name="Mukai" || target,name="Ryuji Yamazaki"
trigger2= target,name="Geese Howard" || target,name="Yamazaki"
trigger3= target,name="cvsgeese" || target,name="DGeese" || target,name="ORIGINAL ZERO"
trigger4= target,name="cvsyamazaki" || target,name="Orochi Rebirth" || target,name="Tin's Mukai"
trigger5= target,name="geese_mmx" || target,name="Setsuna"
var(30)=456

[State 4001, vsRugal]
type=varset
triggerall= !time && numtarget
trigger1= target,name="Rugal" || target,name="Rugal Bernstein" || target,name="Omega Rugal"
trigger2= target,name="Rugal94" || target,name="Rugal94(BOSS)" || target,name="rugal_B"
trigger3= target,name="Rugal_TLE" || target,name="Omega Rugal Gb" || target,name="Tin G_rugal"
trigger4= target,name="Mech Rugal" || target,name="Tin 2002_rugal"
trigger5= target,name="Rugal CvS" || target,name="omega-rugal"
trigger6= target,name="cvsrugal" && target,authorname="Warusaki3" && target,var(12)!=10
var(30)=456

[State 4001, vsMKbadguys]
type=varset
triggerall= !time && numtarget
trigger1= target,name="Shao Kahn" || target,name="Shang Tsung" || target,name="Goro"
trigger2= target,name="Kintaro" || target,name="Motaro"
trigger3= target,name="shaokahn"
var(30)=456

[State 4001, vsMARVELbadguys]
type=varset
triggerall= !time && numtarget
trigger1= target,name="Dr.Doom"
trigger2= target,name="Dr. Doom by WhiteMagic2002"
var(30)=456

[State 4001, vsrandombadguys >=)]
type=varset
triggerall= !time && numtarget
trigger1= target,name="Sevil Nahte" || target,name="Perfect Weapon MB-02"
trigger2= target,name="Jaian"; lol =D
var(30)=456

;NEED TO FINISH

[State 4001, recover]
type=varadd
triggerall= animelemtime(2)>0 && animelemtime(35)<0
triggerall= (var(30)=[1,99]) && numtarget
triggerall= target,life>=.33*(target,lifemax)
trigger1= (target,command="x") || (target,command="y") || (target,command="z")
trigger2= (target,command="a") || (target,command="b") || (target,command="c")
trigger3= (target,command="holdup") || (target,command="holddown") || (target,command="holdback") || (target,command="holdfwd")
var(30)=-1

[State 4001, preventrecover]
type=varadd
triggerall= animelemtime(2)>0 && animelemtime(35)<0
triggerall= (var(30)=[1,98]) && numtarget
trigger1= command="x" || command="y" || command="z"
trigger2= command="a" || command="b" || command="c"
trigger3= command="holdup" || command="holddown" || command="holdback" || command="holdfwd"
var(30)=1

[State 4001, Debug]
type=displaytoclipboard
trigger1= var(30)<100
text="%d button presses to recover"
params=var(30)
[State 4001, Debug]
type=displaytoclipboard
trigger1= var(30)=345
text="Normal Damage"
[State 4001, Debug]
type=displaytoclipboard
trigger1= var(30)=456
text="Extra Damage"

[State 4001, pause]
type=pause
trigger1= animelemtime(2)>=0 && animelemtime(35)<0
time=2
movetime=2
[State 4001, push]
type=playerpush
trigger1=1
value=0
[State 4001, nothitby]
type=nothitby
trigger1= animelemtime(35)<0
value=SCA
time=1
[State 4001, imageoff]
type=afterimagetime
trigger1= animelemtime(5)>0
time=0

[State 4001, fadeout]
type=allpalfx
trigger1= animelemtime(1)=10
time=30
sinadd=-255,-255,-255,120
[State 4001, black]
type=envcolor
trigger1= animelemtime(2)>=0 && animelemtime(35)<0
time=4
value=0,0,0

[State 4001, assert]
type=assertspecial
trigger1= animelemtime(2)>=0 && animelemtime(35)<0
flag=nobardisplay
[State 4001, spr]
type=sprpriority
trigger1= animelemtime(35)>=0
value=1
[State 4001, bind]
type=targetbind
trigger1= animelemtime(35)<0
pos=45,0

[State 4001, hitadd]
type=hitadd
triggerall= var(30)>0
trigger1= animelem=2 || animelem=3 || animelem=4 || animelem=5 || animelem=6 || animelem=7 || animelem=8 || animelem=9
trigger2= animelem=10 || animelem=11 || animelem=12 || animelem=13 || animelem=14 || animelem=15
trigger3= animelem=16 || animelem=17 || animelem=18 || animelem=19 || animelem=20 || animelem=21 || animelem=22 || animelem=23 || animelem=24 || animelem=25
trigger4= animelem=26 || animelem=27 || animelem=28 || animelem=29 || animelem=30 || animelem=31 || animelem=32 || animelem=33 || animelem=34
value=1

[State 4001, hitdamage]
type=targetlifeadd
triggerall= numtarget
trigger1= animelem=2 || animelem=3 || animelem=4 || animelem=5 || animelem=6 || animelem=7 || animelem=8 || animelem=9 || animelem=10
trigger2= animelem=10 || animelem=11 || animelem=12 || animelem=13 || animelem=14 || animelem=15 || animelem=16 || animelem=17
trigger3= animelem=18 || animelem=19 || animelem=20 || animelem=21 || animelem=22 || animelem=23 || animelem=24 || animelem=25 || animelem=26
trigger4= animelem=27 || animelem=28 || animelem=29 || animelem=30 || animelem=31 || animelem=32 || animelem=33 || animelem=34
value= -17 -(var(30)=456)*4 + (!var(30))*12
;-ceil(ifelse((var(30)=456),(target,lifemax*.8),(target,lifemax*.6))/33)
kill=animelem=34
absolute=1

[State 4001, givepower]
type=targetpoweradd
triggerall= numtarget
trigger1= animelem=2 || animelem=3 || animelem=4 || animelem=5 || animelem=6 || animelem=7 || animelem=8 || animelem=9 || animelem=10
trigger2= animelem=10 || animelem=11 || animelem=12 || animelem=13 || animelem=14 || animelem=15 || animelem=16 || animelem=17
trigger3= animelem=18 || animelem=19 || animelem=20 || animelem=21 || animelem=22 || animelem=23 || animelem=24 || animelem=25 || animelem=26
trigger4= animelem=27 || animelem=28 || animelem=29 || animelem=30 || animelem=31 || animelem=32 || animelem=33 || animelem=34
value=36

[State 4001, hitsnd]
type=playsnd
trigger1= animelem=2 || animelem=3 || animelem=4 || animelem=5 || animelem=6 || animelem=7 || animelem=8 || animelem=9 || animelem=10
trigger2= animelem=10 || animelem=11 || animelem=12 || animelem=13 || animelem=14 || animelem=15 || animelem=16 || animelem=17
trigger3= animelem=18 || animelem=19 || animelem=20 || animelem=21 || animelem=22 || animelem=23 || animelem=24 || animelem=25 || animelem=26
trigger4= animelem=27 || animelem=28 || animelem=29 || animelem=30 || animelem=31 || animelem=32 || animelem=33 || animelem=34
value=2,ifelse(!var(30),0,ifelse((animelem=34),10,3))
;channel=2

[State 4001, sparks]
type=explod
trigger1= animelem=2 || animelem=3 || animelem=4 || animelem=5 || animelem=6 || animelem=7 || animelem=8 || animelem=9
trigger2= animelem=10 || animelem=11 || animelem=12 || animelem=13 || animelem=14 || animelem=15
trigger3= animelem=16 || animelem=17 || animelem=18 || animelem=19 || animelem=20 || animelem=21 || animelem=22 || animelem=23 || animelem=24 || animelem=25
trigger4= animelem=26 || animelem=27 || animelem=28 || animelem=29 || animelem=30 || animelem=31 || animelem=32 || animelem=33 || animelem=34
anim=ifelse(!var(30),7001,7030+(random%8))
ID=7000
sprpriority=5
postype=p2
pos=0,(target,const(size.mid.pos.y));-70
random=60,60
facing=-1
ownpal=1
ontop=1
pausemovetime=300
supermovetime=300

[State 4001, shake]
type=envshake
trigger1= animelem=2 || animelem=3 || animelem=4 || animelem=5 || animelem=6 || animelem=7 || animelem=8 || animelem=9 || animelem=10
trigger2= animelem=10 || animelem=11 || animelem=12 || animelem=13 || animelem=14 || animelem=15 || animelem=16 || animelem=17
trigger3= animelem=18 || animelem=19 || animelem=20 || animelem=21 || animelem=22 || animelem=23 || animelem=24 || animelem=25 || animelem=26
trigger4= animelem=27 || animelem=28 || animelem=29 || animelem=30 || animelem=31 || animelem=32 || animelem=33 || animelem=34
time=2
freq=90
ampl=-3

[State 4001, kanji]
type=explod
trigger1= animelem=35
anim=6013
ID=6013
sprpriority=2
postype=p1
facing=ifelse(facing=1,1,-1)
pos=ifelse(facing=1,0,32)
bindtime=-1
removeongethit=1
ownpal=1

[State 4001, snd]
type=playsnd
trigger1= animelemtime(35)=10
value=4,9
channel=0

[State 4001, throw]
type=targetstate
trigger1= animelemtime(34)>=0 && numtarget
value=1114003
persistent=0

[State 4001, interrupt]
type=changestate
triggerall= animelemtime(2)>0 && animelemtime(35)<0
trigger1= !var(30) && numtarget
trigger2= target,stateno=1114010
value=4009

[State 4001, end]
type=changestate
trigger1= animelemtime(34)>=0 && winko
value=183
[State 4001, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;---TARGET---
[Statedef 1114002]
type=S
physics=N
movetype=H
velset=0,0
ctrl=0
[State 1114002, anim]
type=changeanim2
trigger1= !time
value=4002

[Statedef 1114003]
type=L
physics=C
movetype=H
velset=0,0
ctrl=0
[State 1114003, anim]
type=changeanim2
trigger1= !time
value=4003
[State 1114003, end]
type=selfstate
trigger1= !alive
value=5150
[State 1114003, end]
type=selfstate
trigger1= !animtime && alive
value=5120


;---PLAYER---
[Statedef 4009]
type=S
physics=S
movetype=H
anim=5910
velset=-5,0
ctrl=0
[State 4009, target]
type=targetstate
trigger1= !time && numtarget
value=1114010
[State 4009, imageoff]
type=afterimagetime
trigger1= 1
time=0
[State 4009, snd]
type=playsnd
trigger1= !time
value=5000,4
channel=0
[State 4009, anim]
type=changeanim
trigger1= anim=5910 && time=45
value=5911

[State 4009, flash]
type=palfx
trigger1= !time
add=30,30,100
sinadd=30,30,100,8
time=8
[State 4009, snd]
type=playsnd
trigger1= !time
value=7,1
[State 4009, lightning]
type=helper
trigger1= !time
helpertype=normal
stateno=4012
ID=4012
postype=p1
pos=0,-60
ownpal=1
persistent=0
pausemovetime=99
supermovetime=99

[State 4009, end]
type=changestate
trigger1= anim=5911 && !animtime
value=0
ctrl=1


;---PLAYER---
[Statedef 1114010]
type=S
physics=S
movetype=H
anim=0
velset=-5,0
ctrl=0
[State 1114010, anim]
type=changeanim
trigger1= !time && selfanimexist(150)
value=150
[State 1114010, anim]
type=changeanim
trigger1= anim=150 && selfanimexist(140) && time>=45
value=140
[State 1114010, flash]
type=palfx
trigger1= !time
add=30,30,100
sinadd=30,30,100,8
time=8
[State 1114010, end]
type=selfstate
trigger1= anim=140 && !animtime
trigger2= anim=0 && time>=54
value=0
ctrl=1

