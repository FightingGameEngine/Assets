Art of Fighting 3 Wyler by Werewood

!!!!!!!!! for best result, please set your MUGEN1.0/winmugen to 640x480 !!!!!!!!!
!!!!!!!!! MUGEN1.0 is highly recommended though !!!!!!!!!

Update 2011-09-23:
- fixed a typo in readme
- adjusted Wyler jump velocities to give him a more heavy feel
- no more of this:  "the ability to hit most opponent with 5-6 jabs in a row"
*by adding juggle point from 3 to 7 and reducing HitDef slidetime, hittime, velocity, & cornerpush.veloff
- no more of this:  "can jump in with a flying light and follow up with 4-6 more light attacks"
*by adding juggle point from 3 to 7 and reducing HitDef slidetime, hittime, velocity, & cornerpush.veloff
- no more of this:  "when Wyler shrugs off their grapple attempt as well as ADDING TO HIS COMBO COUNT IF HE CHAINS IT OFF HIS DASHING WEAK PUNCH"
*by adding parameter numhits = 0 to the anti-throw projectile state controller
- no more of this:  "the sight of seeing someone in their blocking stance because of a taunt."
*by reducing the animation time of the anti-throw projectile
- no more of this: "for the throw invulnerability. The delay before the opponent stumbles backwards and slips after Wyler forces himself out of the thrower's clutches is nowhere near that long."
*by using HitDef p2stateno instead of TargetState state controller
- no more of this:  "if Wyler tries to throw another Wyler the two get locked together "
*by adding a triggerall = P2Name != "Wyler" for the state controllers that make anti-throw happen


Move List:
- Punch: x
- Kick: y
- BO - Blow Out Attack: z (overhead, P2 must guard/block high)
- Taunt (aka Raz): a (Wyler's taunt can make P2's spirit/power decrease by about 33% when P2 is on ground and is not attacking)
- Redirection: backward, z (a counter move, which will toss P2 on to the ground but gives no damage)
- Recovery Move: down, x when getting up on ground
- Spirit Charge: hold x/y/z/a

- Normal Moves: 
	Driving Kick: back, y
	Rising Uppercut: down, x 
	Smash Fist: down-forward, x (when P2 tries to guard/block this move, P2 will enter a custom get hit state)
	Rush Stomp combo: forward, y, y
	Short Swing Uppercut Hammering combo: forward, x, x, z*
	  *z is an overhead, P2 must guard/block high
	Lead Throw: close to P2, hold forward, z
	Buster Hip: down-forward, x/y when close to downed P2 (a pursue attack)

- Special Moves:
	Blackout: down, down-forward, forward, x
	Orbit Toss: down, up, x* or down, down-backward, backward, x*
	Lead Shoulder: forward, backward, forward, x 
	  *Orbit Toss can bounce/reflect fireballs/projectiles

- Desperation Move:
	Lead Headbutt: down, backward, down, forward, x (requires more than half spirit/power and Wyler low at life (when body flashing))




Misc.
1. Wyler cannot be thrown!  P2 will enter a custom get hit state when trying to throw Wyler

2. Each special move has 2-3 versions, depending on the amount of spirit/power Wyler has

3. A.I. available

4. Only 1 palette.........feel free to send your palettes to me
and I will add you in my "Big Thanks" list!

Reference:
- GameFAQs
http://www.gamefaqs.com/arcade/563215-art-of-fighting-3/faqs/57617
http://www.gamefaqs.com/arcade/563215-art-of-fighting-3/faqs/13869

Big Thanks To:
- Kong, for ripping and releasing Art of Fighting 3 Wyler sprites
- mass, for converting and releasing AOF3 Karman-Cole & Sinclair
- chenLY2001, for converting and releasing a KOFXI style Wyler
- dxwho, for mugenizing the very first Art of Fighting 3 Wyler
- Elecbyte, for making a dream fighting game engine MUGEN

*****************************************************************
Yeah, I suck at making palettes..............
******************************************************************

