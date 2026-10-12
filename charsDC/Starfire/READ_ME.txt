----- STARFIRE for M.U.G.E.N ------ 
---- by HyperCombinationFinish ----
-------- (AKA AudioVisual) --------
----- Version Date: 05/01/2008 ----
---- mugenHCFmugen@live.com -------
--------- DC VS. MARVEL -----------
-- http://www.scruffydragon.com/ --


=========================================================================================
--- NOTICE ------------------------------------------------------------------------------
=========================================================================================

I guess I can finally call her "Version 1.0". Still, there's bound to be a few problems and
abilities I haven't cleaned up properly just yet! I hope you have fun with this character; 
I've put tons of work into her and I've enjoyed the creation process a lot. Starfire is not
my first mugen character, but she is my first release, and has helped me to learn a lot about
the program and character creation through the help of many creators much more talented than
I am. This version is pretty solid and can hold her own against many in the mugen
world (just don't expect to K.O. Rare Akuma with her!). 

The most current version of this character will always be available at 
http://www.scruffydragon.com/, and nowhere else. 

Please do not archive this character on any other sites, or alter it and/or distribute altered
versions. Please do not distribute this character in any full-game compilations. Do not sell
this in any way, shape, or form - m.u.g.e.n. is meant to be free.

Also Note: This character is optimized for WinMugen only. Sorry DOS and Linux users, but I don't
have either of those and can't guarantee she'll work on them.

And another note: now that Elecbyte has returned, I'll also have to say that this character is 
not yet optimized for the "new" m.u.g.e.n. 1.0 release. I'll get to work on that once I've got the
time and chances of new 1.0 version releases are slim. It's just not worth it to make her compatible
until the new m.u.g.e.n. release is 100% ready, since I've been working this out on WinMugen the
entire time anyway.

=========================================================================================
-- Super-exciting Update Section: skip to the move list below after seeing what's new. --
=========================================================================================

--- FREAKISHLY LARGE UPDATE 07/15/11 ------------------------------------------------------------

*****************************************
------ Control and Move Changes --------
*****************************************
- In an effort to totally remove all Rogue/Psylocke/Storm attacks from Starfire, I've sprited all-new
  animations for any basic attacks which used those three Marvel gals as bases. I want Star to use her own
  play-style instead of borrowing so heavily from those three; this has been on my to-do list forever. 
  I've completed the following attacks with 95-100% from-scratch animations (not edits over existing sprites, 
  but by using the animations as a guide and starting fresh, with the exception of some heads and hands):
  Standing - (WP) (from Hugo, Street Fighter 3), (MP) (from Guy, SFA) 
             (WK) (from Remy, SF3), (MK) (from Jon Talbain/Gallon, Darkstalkers)
  Crouching - (WP) (from Fei Long, SFA3), (MP) (from Dudley, SF3), (HP) (from Remy, SF3)
              (WK) (from Remy, SF3), (MK) (from Elena, SF3), (HK) (from Jon Talbain/Gallon, Darkstalkers) 
  Jumping - (WP) (from Yun/Yang, SF3), (MP) (from Karin, SFA3), (HP) (from Rugal, Capcom vs. SNK 2)
            (WK) (from Yun/Yang, SF3), (MK) (from May Lee, KoF2002) (HK) (from Alex, SF3)
  A few attacks like Standing Hard Punch, which were not from Rogue/Psylocke/Storm, will (probably) not be replaced.
- The old Jumping Hard Punch (the Flying Body Splash) is now a Command Attack - hold Down and press (HP) while jumping
  to use it anytime, Zangief-style.
- Standing (MK) and jumping (MP) both now deliver two hits instead of one; you can cancel from either hit for combos.
- Horizontal "Starbolt" beams (WP and MP versions, on the ground, in the air, and while jumping) altered so that they now
  have an extending animation while they blast across the screen, instead of simply spanning the screen as soon as
  they appear. It's still fast, but at least it gives the enemy a little more time to react now. The Vertical HP beam
  doesn't do this.
- Summoning the Titans helpers is now accomplished with quarter-circle-back + button (QCB) instead of down-down+button.
  There was a weird problem where you could be crouching and press down-forward or down-back quickly, then try to attack
  and accidentally trigger the summons, so the old way is gone and has been replaced with a more reliable command.
- Titans Helper Raven has a new role: medic. She is an empath who can absorb other people's pain into herself, healing them.
  This is an ability much closer to her comic book roots than the old "black flames" attack. When Starfire is below 50% 
  health, you can summon Raven to heal a small portion of your lifebar. Time is needed to set the move up, and you only get
  about 10% of your health back per use, since use of the empathic ability puts a tremendous strain on Raven. I don't want 
  this to become a spammable move, so you've got to have good timing to get the benefits of life restoration. 
- "Falling Star" special move now requires you to be at a certain height to be able to use it. I forgot to add that last time,
  which allowed the player/CPU to use it as soon as the jump was started/just about to land, which was totally unintentional.
- "Power Fist" special has been removed. The more I thought about it, the more I realized it really doesn't gel with the
  way her powers work, so it's history. Star can't really build up her energy like that and keep it in one place; she pretty
  much only uses it to blast things with. If I can rework it to fit her in a better way, I may add it back in again sometime,
  but for now, it's gone.
- "Howl of Tamaran" and "Koriand'r Special" Hypers have switched commands; it's now QCF + (2K) for "Howl of Tamaran",
  and QCB + (2K) for "Koriand'r Special".
- "Howl of Tamaran" Hyper can now be used while jumping or flying. Probably should have been this way from the start.
- "Koriand'r Special" Hyper has been recoded; since the majority of the old attack animations are no longer around, it'll
  behave differently than before. Not sure if I'm totally happy with it yet.
- "Starbolt Storm" Hyper now knocks the enemy away into the air on the last hit; they are able to recover, so watch out.
- Amalgam Hyper block damage was reduced. It was a bit much.
- "Star Sphere" tweaked a tiny bit; Starfire now bounces back the same distance upon impact regardless of which
  button is used. Medium and strong punch versions were too safe when blocked.
- "Rocket Knee" and "Rocket Catch" tweaked; both act a bit more naturally now, and the Catch no longer boosts
  Starfire and her enemy really high up upon impact in that weird way it used to. Both moves travel higher upward.
  Rocket Knee moves a bit farther forward at the end to make it less safe; Rocket Catch moves a bit less forward
  as a trade-off for its better vertical range. Rocket Knee has a slightly different look now, so it can be
  told apart from Rocket Catch at a glance.
- New Air Throw added - use the "Back Snapper" with Fwd + MK or HK while jumping.
- Recovery Roll speed reduced; it was a bit too speedy and got her out of too much trouble.
- Minor repair to jump attacks; they can't be spammed anymore, and mashing won't repeat the attacks.

*****************************************
------ Sprite Updates ------------------
*****************************************
- Walk Back upper body animation redone (I've never liked the old one; this has been on the to-do list for ages).
- "Clash of the Titans" finishing animation redone (another one I've been meaning to replace).
- A few graphical tweaks here and there, like tuning up a couple frames in the the Release Suplex throw; nothing
  drastically changed or all that important to list.

*****************************************
------ Miscellaneous Updates ------------
*****************************************
- "Howl of Tamaran" Hyper has had its damage reduced, and has a smaller red hit box now.
- "Clash of the Titans" Hyper refined; I got rid of a barely noticable bug which caused the enemy to move inappropriately
  just before the final blast.
- "Rocket Catch" landing animation shortened a bit.
- HP "Starbolt" refined; collision boxes changed and hitdefs reduced from two to one to get rid of a stupidly old
  problem that was easy as pie to solve.
- And while I was at it, shadows were removed from all beams.
- Red collision boxes redone to match the collision box style found in the Capcom Vs. games, using the
  collision box viewer tool developed by Dammit based on work by mz and felineki as a guide. Some moves have better
  priority now, and others have been lessened. I still haven't gotten to refining all the blue collisions just yet.
- All normal throws have had their damage reduced a bit.
- Added "P.o.t.S Back Attack Shenanigans Prevention" code from the ever-useful Mugen Guild "Greatest Hits of Feedback"
  topic, to help negate any instances of crossups gone wrong.
- Added "StateType = I" in all basics and specials (also from the above topic), to turn off attack states when
  they're no longer dangerous to the enemy, allowing them to drop their guard and retaliate. 
- Changed numerous cases of "movetype = A" to what they should be, "I" or "H".
- GetHit/Hit Recovery animations re-timed and should behave a bit more properly.
- Rocket Knee shouldn't be able to infinitely juggle in the corner against non-recovering characters anymore.
- Small bug repair for jumping forward or back; she'll no longer slide a little bit when landing, and stops completely now.
- "Floating Down" intro changed so that the camera will stay put on stages that allow superjumping instead of following
  Starfire; this will only kick in if the opponent is grounded, though, since ScreenBound will cancel out if the enemy is
  above Starfire. Added some dust when she lands, too.
- Speaking of ScreenBound, I could not get the "Clash of the Titans" hyper to do the same as above, since Starfire
  lifts the enemy over her head, and that causes the camera to follow the enemy no matter what on superjump stages.
  Placing helpers in the corners will stop horizontal movement, but not vertical, so this unfortunately can't be fixed for now. 
- Added the first frame of the Push Block FX animation that has been missing all this time.
- CNS file divided into multiple CNS files; it was getting obnoxious sifting through all that stuff, even 
  with ctrl+F, so I chopped it up for convenience. 
- Stealth removals here and there.


--- GIGANTIC UPDATE! 04/27/09 ------------------------------------------------------------

- Every Starfire sprite revamped with new colors to replace black outlines. This is the biggest reason this
  update took me so long. No more black outlines means better palette possibilities with light colors, and the
  sprites look better overall without black lines on her skin. I also repaired her shock animation with a
  corrected palette, so she won't switch costume colors mid-zap anymore.
- Complete SFF and palette overhaul due to the sprite repairs. If you made any custom palettes, you're going to
  have to redo them to make them compatible.   
- Many sprites were fixed in small ways during the overhaul, and a few new sprites were added here and there.
- Combo ability improved; air combos are easier to perform now, with less strict timing.
- Standing/crouching WP now combos into the appropriate WK for more combo possibilities.
- Jumping hard punch and jumping hard kick now spike the enemy to the ground, VS. Series style, if used to finish
  an air combo.
- Idle stance tweaked and revamped. May not be final.
- Intro costume removal repaired with helpers (hopefully for the last time). This was getting messed up in certain
  screen packs, but not in the clean-install mugen I use for testing, nor my usual screen pack. Hopefully the error
  has been corrected for them all by switching to helpers.
- Amalgam Hyper - "Shatterstarfire" added; Level 3 only, big damage, but certainly not invincible or guaranteed
  successful. Use with caution. 
- Counter Attack added; B, DB, D + Any Punch (while guarding an attack - standing guard only). Costs 1 stock to use.
  I may give it a unique animation in the future, but for now it's her standing (HP). Due to the "lunging" nature of the
  animation, I extended the collision box back a bit into her torso to keep her arms from whiffing through enemies at 
  point-blank range. This happened several times while testing the move on various characters, so let's call it a
  quick fix for now.
- The command for "Falling Star" is now QCB + (K); I forgot to switch it over before the first release. Since 
  the attack has nothing to do with her arms, it's more natural this way.
- "Falling Star" fall speed slightly increased for (B) and (C) button versions.
- "Rocket Catch" and "Rocket Slide" moves have reversed buttons now; "Slide" with (WK) and "Catch" with (HK).
- "Rocket Catch" move completely recoded from the ground up.
- "Star Cyclone" throw completely recoded from the ground up; now it's more like a "Spinning Piledriver".
- "Star Cyclone" now has different grab range and damage depending upon which button is used: 
  WK = Greatest range, least damage.
  MK = Average Range, average damage.
  HK = Least range, greatest damage.
- Fixed a small power gain problem with "Star Cyclone"; it filled the enemy's power bar by nearly two entire
  stocks. In training mode, both players have full power bars, so this slip-up went unnoticed for quite a while.
- Air Starbolt animation time shortened to cut down midair lag.
- "Howl of Tamaran" Hyper damage reduced; a typo made it 75 per hit instead of 65, so it's now 65. I scaled
  the green overlay explod, too, since it was much too big before.
- "Howl of Tamaran" landing finish animation lengthened a bit.
- "Koriand'r Special" hyper travels more slowly across the screen and now ends with a throw. The throw can only grab
  a grounded enemy, and can miss the enemy if it's too far away (or blocking), to encourage more precise use of the
  hyper. The throw is about 1/3rd of the total damage, so make sure it hits!
- "Clash of the Titans" hyper revamped in many ways; weird "hand" effects replaced with Raven's gigantic raven soul 
  thingamabob, timing tweaked, overall damage and hit count slightly reduced.
- Slightly reduced the grab range of both the normal throws and "Clash of the Titans" hyper.
- P.o.t.S style Damage Dampener added to help tone down overall combo damage.
- Beast Boy "Gorilla" helper replaces BB "Crow" helper. Having two air attacks was redundant, so BB gets something
  new to do. BB now lunges in with a powerful gorilla punch. It has short range, but it's an overhead attack that -must be
  blocked while standing or jumping-. Can't be guarded against while crouching, so use it to put a little fear
  into turtles at close to mid range. Useless trivia: BB is human at the start of the move. If he's hit then, he'll
  fly off the screen as a human, but if he's hit while transofrmed, he'll fly off as a gorilla.
- Beast Boy "Bear" helper now runs more slowly, knocks the enemy back less, but hits them higher into the air.
  This allows for some combo possibilities if you use him at the right time (and differentiates him more from
  Cyborg's "Shoulder Charge" helper attack). This may change again in the future if I can get a certain idea to work.
- Robin helper now spikes jumping enemies to the ground if he hits them in midair.
- Both normal throws have been tweaked and refined.
- Collision boxes tweaked so many times I lost count. Lots of unneeded ones cut and optimized.
- New second taunt added; hold back and hit start to try it out.
- "Midnight Bliss" and "Burned" compatible animations added.
- Three new win pose animations added, Titans group win pose redone with helpers instead of explods, and Robin leaps
  down for the pose with a slightly new animation instead of using his jump kick.
- One new intro added. You'll know it when you see it.
- Repaired the timing of the landing for the "float down" intro, so now it's not so quick and jittery anymore.
- I think I only added 13 new costumes to her random intro, but I can't be sure if that's all of them.
- Many items in the costume intro are now tossed off the screen instead of being vaporized with the rest of the getup.
  Small items like Mai's fan still get burned up, though.
- Win KO effects redone so they're not the generic white sprites found in MvC anymore.
- Repaired a removexplod problem with the glow during idle stance; now they should vanish properly when turning and are
  properly bound if she's pushed (not attacked) while in her idle animation.
- Intro sounds now stop if the player presses a button to skip past them.
- A few sounds were changed and added here and there (first ones that come to mind are the Titan helper voices; 
  Cyborg, BB Ptero are new/remixed, most of them also now have a voice for when they're hit).
- Basic attack voice effects and damage sound effects re-recorded; they are now louder and sharper than the
  previous ones. Volume raised to 150 for the rest of the voices (Note: I was told by more than a few people
  that her sounds were too soft; she sounds  more or less the same as most of the other characters in my roster,
  so I can't really tell. Anyway, it's now changed. This is a quick-fix solution until I can find a way (and the 
  time) to re-recording the remaining voice clips. If she seems too loud now, use Notepad to open the "Starfire.CNS"
  in the Starfire folder and change "Volume = 150" to 0 [the original setting], or any other number that sounds best
  to you) and save. Alternatively, you can use Fighter Factory or another mugen editing program and do the same thing.
  I doubt anybody will need to, but hey, at least you've got the option.


--- UPDATE! 04/28/08 --------------------------------------------------------------------

- Starbolt beams repaired to fix moronic cloning error.
- Push Block (Standing, Crouching, and Jumping) added and functioning.
- Recovery Roll now functioning (thanks to Buyog).
- Standing HP (diagonal) Starbolt graphics revamped to match the horizontal beams. 
- Titans Helpers tweaked here and there; most notable changes are: Raven's damage lowered. Cyborg leaves
  the screen instead of vanishing at the edge, same goes for Robin.
- New Super FX added (revolving stars), though this may be revamped in the future.
- DCvM Screenpack small and large portraits added.

--- UPDATE! 04/11/08 --------------------------------------------------------------------

- Tons of small crap I honestly can't remember, mostly fixes from the last update (with many thanks to the 
  input from the DCvM staff members ).
- Flight Mode added; a bunch of specials and one hyper can now be done while flying (see move list for details).
- Star Sphere can also now be performed in the air/while flying. 
- Negative Edge added to commands, plus some alternate keyboard-friendly commands added. 
- New animation for the ground version of Starbolt Storm hyper (New Starfire frames plus a huge new beam).
- Amalgam Hyper is still broken, but it has the startup animations, portraits, Shatterstar, and a few of the 
  attack frames. It works, but it's still not done (though at least it's not white frames anymore).
- Superjump code switched over from Ice's to Wonder Woman's as suggested by Loganir.
- Titan helpers can now all be hit away to eliminate their infinite cheapness.
- Added a few more intro costumes (some KoF ladies, Darkstalkers ladies, Ryu, Borghi's Noroko).
- Tweaked and/or totally changed a bunch of animations, but it's hard to remember which ones at the moment. 
- Repaired the "Super Finish" animation and sound so that they no longer repeat.
- Recovery Roll added, but won't work at the moment; I can't seem to figure out why it won't function. 

=========================================================================================
--- STARFIRE ----------------------------------------------------------------------------
=========================================================================================

Princess Koriand'r of planet Tamaran is best known on Earth as Starfire, and is/was a longtime 
member of the Teen Titans. Since DC comics storylines change so often, she may or may not be
with the team when you're reading this (as of the time of writing, it seems she is no longer
with the Titans, but who knows what the future holds?).

People only familiar with the Warner Bros./Cartoon Network animated version of the Teen Titans
are probably shocked by how different she appears here. This is because I am keeping true to
her comic book form, and not the small and skinny (but cute) character design used for the animated
show. 

Eventually a proper bio may appear here, but until then, you're better off checking out
http://dccomics.com/ or http://www.dcdatabaseproject.com for proper information. 

This version of the Teen Titans is just before the events of the classic "Judas Contract"
storyline. Kid Flash has not yet left the team, Robin has not yet discarded his persona
to adopt the Nightwing mantle, Terra is not yet revealed to be a traitor, and Jericho
has not yet arrived. Some outfits are not true to the time period; this is simply a matter
of personal preference. For instance, Donna Troy (Wonder Girl) is wearing the black starry
outfit because I like it, Cyborg is not true to his 80's design, and Starfire doesn't have
her humongous 80's hairstyle. Think of it as an amalgam Titans group, and not one that is
perfectly true to any specific Titans era. 

=========================================================================================
--- Palettes ----------------------------------------------------------------------------
=========================================================================================

01: Normal (Purple)
02: Dark Blue 
03: Brown
04: Red
05: Turquoise
06: Green

Choose the following by holding the Start button and then pressing an Attack Button:
07: Iron
08: Blueberry
09: Blood
10: Emerald
11: Silver
12: Rose

=========================================================================================
--- Basic Controls ----------------------------------------------------------------------
=========================================================================================

Weak Punch     (WP):		X
Medium Punch   (MP): 		Y
Hard Punch     (HP):		Z
Weak Kick      (WK):		A
Medium Kick    (MK): 		B
Hard Kick      (HK): 		C
All Punches    (3P): 		WP+MP+HP
All Kicks      (3K): 		WK+MK+HK
Taunt 1:			Start Button (S)
Taunt 2:			Hold Back + Start button (S)

Launchers:			HK (Standing), HP (Crouching) 

Dash Forward: 			F,F -or- (3P)

Dash Backward:			B,B -or- B+(3P)

Superjump:			D,U -or- (3K) -or- Hold Up after succesful Launcher hit

Push Block (while guarding):	(X+A) -or- (Y+B) -or- (Z+C)

Recovery Roll: 			B, DB, D, (K)

Counter Attack:			B, DB, D + (P) while guarding an attack (from standing guard only). 
				Attack: Faster version of Standing HP (may be replaced later).
				Costs 1 stock to use (1000 points of super meter energy). 
				Can only be used while standing.


-Command Attack-
Flying Body Splash              D+HP while jumping


-Throws-
Punch Throw (Choke Slam): 	F+MP -or- HP

Kick Throw (Belly-to-Belly 
  Release Suplex): 		F+MK -or- HK

Air Throw (Back Snapper): 
                		F+MK -or- HK (while jumping)

Chain Combo System: 	
----------------------------------------
Standing and Crouching: "Stronger Basic"
----------------------------------------
WP -> MP -> HP 

WK -> MK -> HK

WP -> MK -> HP

WK -> MP -> HK 

*Note: WP -> WK is now available for all variations, for example: WP -> WK -> MP -> HK.

------------------------------------
Jumping/Flying: "Zig-Zag"
------------------------------------
WP -> WK -> MP -> MK -> HP -> HK 

=========================================================================================
--- Legend ------------------------------------------------------------------------------
=========================================================================================

Up: 			U 
Down:			D
Forward:		F
Back:			B
Any Punch:		(P)
Any Kick:		(K)
Any Two Punches: 	(2P)
Any Two Kicks: 		(2K)
All Three Punches: 	(3P)
All Three Kicks: 	(3K)
1 Stock:		1000 points of super meter energy; a full section of a super meter bar

QCF (236)	= 	Down, Down-Forward, Forward 
The typical "fireball" motion.

QCB (214)	= 	Down, Down-Back, Back 
The typical "hurricane kick" motion.

DP (623)	= 	Forward, Down, Down-Forward 
The typical "dragon punch" motion.

HCB (63214)	= 	Forward, Down-Forward, Down, Down-Back, Back 
The typical "half-circle backward" motion.

=========================================================================================
--- Special Moves -----------------------------------------------------------------------
=========================================================================================

Starbolt: 	QCF + (P)	(can also be used in the air or while flying)
--------------------------------------------------------
Starfire unleashes a beam of energy at the foe. WP shoots low, MP shoots high,
and HP shoots an angled beam that rebounds off the floor. All air beams behave
the same as the ground MP version. 

Star Cyclone: 	HCB + (K)  	(throw)
---------------------------------------
Starfire grabs the enemy, takes to the air, whirls them around, and introduces 
them to the floor, head-first.

  WK = Greatest range, least damage.
  MK = Average Range, average damage.
  HK = Least range, greatest damage.

Rocket Slide: 	QCF + (WK)	
------------------------
Starfire slides low across the floor to trip the enemy.


Rocket Knee: 	QCF + (MK)	
------------------------------
Starfire rushes diagonally upward to knee the enemy. 


Rocket Catch: 	QCF + (HK)	(anti-air throw)	
-----------------------------------------------
Starfire rushes diagonally upward to intercept the enemy, then rams them down into the floor
with her knees mashed into their stomach. Note: Can only catch airborne enemies and will NOT
HIT if the opponent is on the ground.


Star Sphere: DP + (K)	(can also be used in the air or while flying)
---------------------
Starfire rolls into a ball and whips across the screen at the enemy. Aroo!
Ground version flies straight ahead, Air/Flight versions arc slightly depending
upon which button is used. 


**** NOTE: If you're having trouble with this command while using a keyboard, you 
     can also use "F, D, F + (K)" to activate the move.


Falling Star: QCB + (K)		(can only be used in the air or while flying)
------------------------------------------
Starfire performs a somersault in mid-air, then suddenly drops to the ground, landing 
squarely on her backside. The shock from hitting the ground can strike a decent distance
away from her, but the damage is much lower than if Starfire hits the enemy herself. 


Flight Mode: QCB + (3K)
------------------
Fly around for a while and be annoying! Use QCB + (3K) a second time (or press the Start button)
to cancel it early. 

=========================================================================================
--- Teen Titans Helpers -----------------------------------------------------------------
=========================================================================================

Raven Empathic Draw: 		QCB + WP  (summonable only when health is below 50%)
Cyborg Shoulder Charge: 	QCB + MP
Robin Dive Kick: 		QCB + HP
Beast Boy Gorilla: 		QCB + WK
Beast Boy Pterodactyl: 		QCB + MK
Beast Boy Bear: 		QCB + HK

Raven Empathic Draw:	Raven appears and uses her empathy powers to draw some of Starfire's pain into herself.
                        Restores roughly 10% of Starfire's life. NOTE: can *only* be used when Starfire is below 50% life! 

Cyborg Shoulder Charge:	Cyborg flies across the screen and rams the enemy.

Robin Dive Kick:	Robin sails down while jump-kicking; if it hits an airborne enemy, they get spiked down.

Beast Boy Gorilla:	Short-range but forceful punch; it's an overhead attack that can't be guarded while crouching.

Beast Boy Pterodactyl:	BB soars in an upward arc and attacks the enemy by simply crashing into them.

Beast Boy Bear:		BB charges across the screen and knocks the enemy upward for combo possibilities.

NOTE: These helper moves each require 1/2 a stock (500 points of super meter energy) to use. 
If a Titan is on the screen, another Titan *cannot* be summoned until the first has finished
their attack and left. Finally, the Titans can be attacked and knocked away, so use them
wisely. 

=========================================================================================
--- Hyper Moves ------------------------------------------------------------------------
=========================================================================================

Starbolt Storm: QCF + (2P) (requires 1 stock; can also be used in the air or while flying)
--------------------------------------------------------------------------
Starfire unleashes a huge beam of energy at the enemy.


Howl of Tamaran: QCF + (2K) (requires 1 stock; can also be used in the air or while flying)
----------------------------------------------
Starfire speeds straight ahead to crash into the enemy with great force.


Clash of the Titans: QCB + (2P) (requires 1 stock)
--------------------------------------------------
Starfire grabs the enemy and hoists them up into the air so that her fellow
Teen Titans can assist her in demolishing their common foe. NOTE: This move
cannot be used if a Titan Helper is already on the screen!


Koriand'r Special: QCB + (2K) (requires 1 stock)
--------------------------------------------------
Starfire rushes at the enemy with a barrage of punches and kicks
that strike high and low to confuse the enemy, then grabs them and cracks
their skull with a powerbomb. The powerbomb throw is not guaranteed to hit
if you're too far from the enemy, and since the finishing throw counts for
about 1/3rd of the total damage, make sure it hits!


=========================================================================================
-----------------------------------------------------------------------------------------
Amalgam Hyper - Shatterstarfire:  QCF + (Z+C) (requires 3 stocks)
-----------------------------------------------------------------------------------------
=========================================================================================

DC's Starfire and Marvel's Shatterstar merge to become the unstoppable alien warrior
princess, Shatterstarfire; wielding a deadly blade, Shatterstarfire delivers multiple
berserker sword slashes to cause severe damage to the foe, ending with an overhead chop.


----------------------------------------------------------------------------------------------


--- What needs to be done? -------------------------------------------------------------------

- Numerous Animation tweaks and fixes
- "Cursed by Anakaris/Shin Valdoll/etc." frames?
- A few more intros and win poses?
- Numerous small corrections

--- What's Wrong? Things I Already Know About -------------------------------------------

- She can't (insert Vs. game staple here)!
See the "What needs to be done?" section and you'll probably find it there. 

- Animation/frame X/Y/Z looks bad/needs fixing/etc.!
Don't bother bringing these up, since I've most likely already got it down on a huge list
of fixes. I'm not a master sprite editor, time for mugen is short lately, and this was my
first edit project. Honestly, it was easier to draw 500+ frames from scratch for one of my
previous characters than to edit. I don't know how people can do this for multiple characters
at once. 

- Why use Starfire's voice from the show?
Because it's one of the few things about the show I actually liked.


--- What's Wrong? Things I Want To Know About -------------------------------------------

- Infinite combos

- Too Much or Too Little Damage being dealt by (insert attack here)

- Anything else that goes wrong/breaks m.u.g.e.n./breaks other characters

You can give feedback on Scruffy Dragon boards, by PM, on any other board I make an update/release topic on,
or by e-mail, though e-mail might take a while for me to find, and I'm not very good about replying. 
Note: I can only understand English.

--- Credits & Thanks: ----------------------------------------------------------------------------

- Capcom and SNK, for their wonderful games and sprite art, without which this character could not exist.
- DC Comics, to whom Starfire and the Teen Titans are (c), and I claim no ownership to any of them
  so please don't sue me for fanart.
- Marvel Comics, to whom Shatterstar is (c), and I claim no ownership to him either so please don't
  sue me for fanart.
- Elecbyte, for making M.U.G.E.N. in the first place; I'm glad to remove the R.I.P. from this section, due to their
  wholly unexpected return. Good luck in the future.
- Most of the sprites were expertly ripped by TheDreamslayer, Wuwo, and L (the Touhou Hisouten fx); (some
  of the sprites were ripped by me, however; all the effects for jumping, hit sparks, etc., the Knights of
  Valor stuff, and whatnot)
- The Scruffy Dragon team, for beta testing and all-around great help.
- pychewing, for the great overhaul done to the Marvel vs. Capcom style Starfire portrait. 
- Hecbator, for the sharp Starfire logo used on the DCvM screenpack portrait.
- Nemu, for a few effects used from their Onslaught sprite sheet (I know it said no credit needed, 
  but you get it anyway!)
- Flowagirl/Necromancer, SethZankuten, and Loganir for their work on the super jump code.
- DavidGee70305 for the "Super Finish FX" code, found in the Mugen Fighter's Guild Code Archive.
- Phantom.of.the.Server., for a helpful code tip posted on Mugen Fighter's Guild concerning throw immunity 
  (used in the Titans and other helpers), and also for the Damage Dampener code posted in another MFG topic
  and a bunch of other things detailed in the updates.
- Cybaster, for helpful info posted on Mugen Fighter's Guild concerning variables (used to help shut off
  Flight).
- Splode, whose Rogue was helpful here and there for reference (ironing out push block troubles I was having, 
  and some quick animation timing checks when I was too lazy to load up XvsSF). 
- Gou-San, whose Iron Man helped in the same way as above with reference (checked IM's Colossus helper to improve
  Cyborg and Robin's wonky exiting behavior).
- Warusaki3, whose CVS Zangief heped me figure out how to solve some binding issues in the new Star Cyclone throw.
- O Ilusionista, for the Hi-Res FX tutorial on Mugen Fighter's Guild, which I used to spruce up the KO effects.
- Sepp, for helpful info posted on Mugen Fighter's Guild concerning stopping sound (used for cutting intro sounds).
- Michael Turner (R.I.P.), for the original Starfire artwork I sprited over for the big portrait and hyper BG. I
  liked his artwork a lot and he died far too young.
- IGS, for the panther and bear sprites from their Romance of the Three Kingdoms arcade game, Knights of Valor.
- Taito, for the Kaiser Knuckle monkey sprites.
- The Kawaks, Nebula, and MAME emulator teams, for providing valuable sprite and sound ripping tools.
- The Fighter Factory team; I use FF and FF only for my creations. Looking forward to the new version whenever 
  it happens to come out.
- Warner Bros./THQ/Havok/A2M games, for the Teen Titans (PS2 version) game sounds.
- Hynden Walch (Starfire), Scott Menville (Robin), Khary Payton (Cyborg), Tara Strong (Raven),
  and Greg Cipes (Beast Boy), for lending their vocal talents to the Titans from the previously mentioned TT game.
- All the mugen creators who are into this bizarre waste of time that helps keep the 2D fighting game spirit
  alive and kicking.
- Many members of the DC vs. Marvel and Mugen Fighter's Guild message boards, for their valuable feedback after the
  initial release. 

- Most sounds ripped from Marvel Vs. Capcom sound test (arcade) via Kawaks.
- All sprite edits by HyperCombinationFinish. Please don't use any of these in your projects.
- All new sprites by HyperCombinationFinish. Please don't use any of these in your projects.
- All Teen Titans tv show and PS2 game sounds ripped by HyperCombinationFinish.

--- More credits to come, I've probably forgotten some things. ---



