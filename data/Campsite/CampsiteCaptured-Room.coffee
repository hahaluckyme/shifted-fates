Enter: =>
  say paragraph "You wake up with a throbbing headache, your vision still swimming as you slowly gather your senses. Groggy and confused, you turn your aching head to survey your surroundings. You appear to still be at the campsite, but night has since fallen and a shackle has been fastened around your neck. A thick metal chain keeps your neck tied to the tree behind you."
  say paragraph "The wolf man is sitting down at the fire pit with his back turned to you, unaware that you are awake."

Choices: =>
  option "Call out": => await scene @CallOut
  await do choice

CallOut: =>
  say paragraph "You croak out weakly, the words catching in your throat before they can leave your lips. One of wolf's ears flickers at the sound. You call out again, louder this time, and your captor twists aside to look over his shoulder. \"You awake?\" he rumbles, his voice low and soft. \"About time. I was starting to get worried. Clocked you pretty hard earlier, huh?\" You open your mouth to say something, but think better of it and fall silent again."
  say paragraph "The wolf man rises to his feet and sets the metal poker he's holding on a camping chair. Now standing upright, you can see that he's easily six and a half feet tall. Thick black fur covers his well-muscled body, though most of it is obscured by his clothes. With a stern look in eyes, the wolf walks closer to you. \"No love for thieves around these parts,\" he growls."

  option "Plead that you were hungry and needed food.": => await scene @Plead
  option "Explain that you have amnesia and escaped from a lab.": => await scene @Explain
  option "Protest that you're not a thief.": => await scene @Protest
  option "Tell him to go fuck himself.": => await scene @Insult

Plead: =>
  say paragraph "You try to plead with the wolf, stating that you were hungry and scrounging for food. \"And what makes you think it's okay to just rob me? Don't you realize I'm trying to survive out here, too? Did you even spend a fraction of a second thinking about what could have happened to your mark?\" You shake your head in response, tears starting to well in your eyes. \"Oh, don't give me that horseshit. You're just another lowlife angling for pity. I'm not going to fall for your theatrics.\" You try to muster a response, but all that leaves your throat is a choked sob before you begin to cry.";
  say paragraph "The wolf stands silent for a long, pensive moment, staring at you with a mix of disdain and discomfort. At long last, he lets out a quiet sigh and rubs his face with a hand. \"Stop bawling already,\" he grumbles. \"Don't pretend like you won't be back with an entourage. I know how thieves band together, and I'm not about to get killed in my sleep just because I let some scumbag off the hook. As far as I'm concerned, you leave me no choice but to an example out of you.\""
  await scene @Sex

Explain: =>
  say paragraph "You try reasoning with the wolf, explaining that you woke up in an observatory further up the mountain and don't recall how you arrived there. \"You can't be serious? First you try to rob me, and now you think you can just lie to weasel your way out of this? Come on, what kind of fool do you take me for?\" You insist that you weren't lying, but your captor dismisses you out of hand. \"God, enough already. I'm tired of all the excuses. Just keep your mouth shut for once in your miserable life.\""
  say paragraph "The wolf reaches up to rub his face as he grumbles something to himself. You fall quiet, too afraid of angering him to muster the courage to complain. After a moment of silence, he turns to you again with a weary expression on his muzzle. \"No, I'm not going to let you off the hook scot-free,\" the wolf growls. \"You won't learn a damn thing that way. What *you* need is a lesson, something that'll finally drill a little respect into that empty head of yours.\""
  await scene @Sex

Protest: =>
  say paragraph "You complain that you're not a thief at all, just lost in the woods and trying to make sense of your surroundings. \"And you really expect me to believe that? Fuck, do you think I was born yesterday or something?\" You shake your head and insist that you're being honest - you really have no idea where you are. If you had known the place was still inhabited, you would have kept your distance and left his belongings alone."
  say paragraph "\"Enough with the lies already. I'm tired of petty thieves acting like you own the place, so keep your mouth shut if you know what's best for you.\" Cowed by the threat, you quiet down and glower at your captor. The wolf lets out a frustrated sigh. \"Look, I'm not going to hurt you, but I *am* going to make an example out of you. I don't want any more of your kind around here, and I think that this'll be a lot more fun for both of us than just beating you to a pulp.\""
  await scene @Sex

Insult: =>
  say paragraph "You tell the wolf that he can go fuck himself. \"Come on, you know better than to taunt someone when you can't fight back,\" he growls. \"I would have figured you had better survival instincts, but I guess humans really are that dense.\" Holding back your white-hot fury, you seethe that he has no right to keep you tied up like this. In what world is holding a petty thief hostage justified? \"Oh, don't act like you're in the moral right here. You're just another self-righteous raider. What do I care what you think about justice? It's not like you cared about your mark when you waltzed into my campsite and stole my supplies in broad daylight.\""
  say paragraph "The wolf shakes his head and lets out a terse sigh. \"You're a real piece of work, you know that? I've never met a thief you didn't even *try* to act repentant before. Usually it's a whole ceremony of crocodile tears, stammered apologies, begging to be let go... You? Oh, you thought you were above all that.\" He pauses for a beat. \"Well, you aren't. You're not above empathy or caring about others. I'm afraid the only way a wretch like you will learn is being taught that lesson the hard way.\""
  await scene @Sex

Sex: =>
  await do pause
  say paragraph "You swallow nervously at the thought, wondering what kind of the punishment the wolf has in store for you. His intent becomes clear when you notice the growing tent in his pants, weathered fabric straining against his emerging length. \"Eyes up here,\" the man growls, and you immediately look back up. \"That's better. Now sit. Stay.\" You obey his command with a fearful nod, lowering yourself to your knees on a bed of moss and leaves."
  say paragraph "The wolf undresses in front of you, making no effort to show off or tease as he strips his clothes and tosses them in a pile on the ground. Once down to bare fur, he steps forward and wraps a paw around his meaty lupine cock, stroking his length as it pulses in his grip. Fearing what's coming, you jerk away from his maleness, only to wince in pain when the shackle around your neck digs into your skin. You grasp at it in an effort to break or loosen your binds, but your captor pulls your hands away before you can make any progress."
  say paragraph "\"Settle down,\" the wolf growls roughly. \"You're only going to get hurt that way.\" He takes hold of your head and presses it back against the tree behind you, his palms on either side of it as his claw-tipped fingers dig into your scalp. His thumbs stoke in slow circles along your temples, a gentle touch that somehow manages to soothe you in spite of the horror of your situation. \"There. Good. Now stay like that, and keep your jaw slack if you can.\""
  await do pause
  say paragraph "The wolf presses the tapered tip of his cock to your lips, his warm precum drooling down your chin. The fluid smells strongly of his musk and arousal, making it difficult to think clearly as he slathers your lips in it. Once certain you're ready, the beast presses forward, his generous penis sinking deep into your mouth. Your taste buds are immediately assailed with the pungent flavor of the lupine's shaft, warm and damp with sweat from a long day's work, the intense aroma suffusing your senses."
  say paragraph "Gurgling wetly around his length, you try to suppress the urge to gag as that thick red bauble brushes across the back of your throat. He's not even hilted and you already feel lightheaded, every breath infused with the hot, spicy musk of your captor's bestial cock. Your worries seem to melt away as he ushers you ever-closer toward its base, your mouth and throat completely filled with his taste. By the time you press firm to the root, your head is swimming with instinctual need. Each breath through your nose is joined by the pulse of his wolven dick, and the intense, musky flavor has you drooling around the tasty cock buried knot-deep in your mouth. Your arms wrap weakly around his waist as you all but accept your violation, too exhausted and turned on to muster anything in the way of sincere resistance. Your submission is met with a low growl of approval, sending a lustful shiver through your body."
  await do pause
  say paragraph "The wolf begins sawing back and forth in your mouth, slowly at first, but picking up the pace over time. You lap at the source of his pre whenever he pulls back all but the fluted crowns, and you release a muffled moan whenever that pulsing pillar of cock drives deep into your mouth. The bed of leaves beneath you and the coarse texture of bark against your back remind you how helpless you are to stop this, the wolf seeming to pick up the pace with each wet slap against your face. His grunts pleasure stand in contrast to your own fearful whimpers, though these gradually devolves into hazy moans, unable to deny enjoying this on some baser level."
  say paragraph "Just when your throat starts to feel raw, the wolf slides his hands to the back of your head and pulls you firm against his bulging base. The already swollen root seems to expand further, and you let out a pained cry when that overlarge base pops past your teeth. A moment later, cum begins to surge from his cock, hot blasts of lupine seed pouring directly down your gullet. Too much to swallow all at once, much of it washes back into your mouth, bulging your cheeks and coating your tongue in a slick slurry of rich-tasting cum. Those thick ropes ebb before flaring anew with each strained twitch of turgid cockmeat, dousing your insides in his hot, virile essence."
  say paragraph "By the time the flow tapers, your body has gone limp from the shock of being orally raped, unable to cope with the horror and lust that flow through you in equal measure. Your untended length is left half-hard beneath your pants, sandwiched teasingly between fabric and skin. All you can do is suckle that cum-slathered wolfcock while the lupine looks down at you, a paw stroking over your cheek in praise while the other reaches up to ruffle through your hair. \"God, I needed a good fuck,\" he sighs happily, his chest rising and falling in time with his heavy breaths. \"Now be a good bitch and stay. It's not like we're going anywhere soon.\""
  await do pause
  say paragraph "With his seed still heavy in your belly, it takes all you can give to stay conscious around the wolf's cock, swollen knot depriving you of the oxygen your brain so desperately needs. The physical and mental toll of your treatment has you fading in and out of lucid dreams while his thickly furred crotch brushes up against your face, never giving you a moment to breathe anything but the pungency of his masculine aroma. Before you can collect your hazy thoughts, the thick base has abated enough to slide free of your mouth, unceremoniously popping past your teeth with a final squirt across your chin. You immediately start to cough, head falling forward as you clear out what cum hasn't been pumped directly into your stomach until the last of his seed splatters onto the forest floor to form a sordid puddle in front of you."
  say paragraph "You look up with blurry, swimming vision to see your captor smiling down at you darkly, pleased to see his plaything drooling rivulets of wolfcum. \"Hmm, not bad. Not bad at all. I might just keep you,\" he teases. Your eyes go wide at the thought, spurring you to claw at the shackle and tug at the chain keeping you bound. This is put to a stop with the gruff reminder of his claws against the back of your head, pricking you painfully enough to elicit a whimper of discomfort."
  say paragraph "\"First, we'll have to give you a body to match your new role in life. Why don't we start with this thing?\" A large footpaw suddenly brushes up against the impression of your erection, leathery pad pressing down against sensitive nerves while his toes splay to cradle it in a tantalizing vise. You feel the urge to cum from the contact alone after your prolonged abuse, but it abates the moment his paw slides away again, teasing over your tenting pants in passing. \"Alright,let's get you undressed so I can see what I'm working with.\""
  await do pause
  say paragraph "Warning given, the wolf steps away for a moment to retrieve something from his pocket. He returns with a small key in hand and reaches around your neck to unlock the shackle. The metal ring and the chain attached to it fall limply to the ground, allowing you to breathe a little more clearly. Before you can even think of escape, the wolf bends down to rope his hands beneath your shoulders and hefts you up on shaky legs. He's somehow even more imposing from this angle, making it obvious how much his muscular form towers over you. You'd look up, but you feel so much shame that you can only avert your eyes. Your gaze is instead drawn forward to his cum-slick cock, still fully erect and twitching with anticipation. \"Don't worry, sweetie. You'll get your treat soon.\" The lupine chuckles and reaches down to squeeze your hips, those same sharp claws reaching back to prod into your backside. It's clear from the smoldering look in his eyes and the hot breath beating down on you that he's only just warmed up."
  say paragraph "With a single commanding motion, the wolf spins you around to face the rough bark of the tree. While it was uncomfortable against your back, having your cheek pressed into its unyielding surface makes you squirm and whine helplessly. Behind you, a paw-like hand grips your neck to hold you still while the other wanders down the ridge of your spine. His thumb hooks beneath the fabric of your shirt, seeming to savor the way you shiver as that useless garment is peeled off your back, only to be discarded like trash on the ground nearby. Naked skin exposed to the cool mountain air, the warmth of a single snaking digit comes as a small shock. He takes a moment to admire your half-exposed form, tracing over every little curve and contour. \"Hmn. Not soft enough. Another thing to fix,\" he rumbles. His words feel more studious and intent now, less in tease and more like notes to himself. You can't help but shudder with dread when the sharp point of a claw teases along your bicep before slithering all the way back down to the hem of your jeans."
  say paragraph "This time, his hand strays around the rim while his other maintains a firm hold on your neck, his gruff hold inhibiting your movement while reminding you of the punishment that awaits should you defy him. His touch passes by your rigid length, lingering long enough with a sensuous caress that you drip pre down your leg in hapless arousal. His focus then centers on your button and fly, deftly unfastening them and tugging at the fabric. Now loose, your jeans slide down easily, catching only on your knees before they crumple to the ground. These he leaves loose around your ankles, perhaps out of apathy, or perhaps to sabotage any attempt to run should you manage to writhe out from under him. Your thighs are left exposed to the cool mountain air, a faint breeze that licks at your flesh as you await the wolf's next move with shameful anticipation."
  say paragraph "Left wearing naught but the thin fabric of your underwear, the wolf makes a point to slide the side of his hand along the crease of your ass, the bassy, gravely growl in your ear making you whimper in desire. A sharpened claw threatens to tear at the fabric, though he restrains himself just barely and slides it up to pull at the elastic instead. His hand shimmies it down just enough for your swollen dick to catch it in a stiff tent, but he's clearly prepared for this, reaching around to pull it beyond and leave your twitching, drooling cock exposed to the elements. Pressed against the tree as you are, you're forced to push your hips back to keep your length from grinding against the bark's rough texture, leaving you presenting in the nude to the tall anthro wolf."
  await do pause
  say paragraph "Your entire body tenses at the sensation of his damp, warm cocktip brushing against the cleave of your rear, smearing his heady pre-seed along that sensitive valley. His slick crown catches at the rim of your anus every so often, teasing you with the prospect of driving deep into your body and claiming you as his. As shameful as it is, the thought causes your length to grow tense and dribble precum, a growing part of you longing to fulfill that role while your conscious mind clambers for a way to escape the indignity. His lupine tongue tickles behind your ear, a warm, wet sweep that leaves a streak of steamy saliva from the base of your neck to the blush on your cheek. \"You're mine, now and forever. You're going to make such a strong, sexy mother for our pups,\" he growls roughly. It's an odd remark, but one you try to ignore, knowing full well that you'd never be able to bear children. The strangeness of his statement withers from your mind when a hand reaches around to grasp and stroke your maleness, softly furred handpaw pumping gently from base to cocktip like a velvety sleeve. You shudder and moan softly at this, and your hips push back in wordless plea as his low, lustful growl reduces your mind to putty."
  say paragraph "Pain shoots up your spine when he enters you, his lupine cock pushing slowly into your untrained ass. You never realized quite how difficult taking him would be, but it's a strange, pleasurable ache, and the enveloping warmth and scent of the strong male behind you help relax your clenching ring. He rubs and pumps your needy shaft all the while with skill that makes your toes curl, every milking squeeze met with a soft spurt of pre against the tree in front of you. Just when you think your overstretched anus can't take any more of that cum-slick dog dick, the base brushes up against your anus, making you dip your head down and moan in absent pleasure as your legs tremble and spread further for him."
  say paragraph "The wolf grinds his swollen knot firmly to your hole, reinforcing his claim on your body. Sensing that you're sufficiently lost to your desires, the paw above releases its grasp on your neck to slide around your thigh instead, reaching below to cup and fondle your untended sack. This he teases with the same practiced precision as he strokes your dripping manhood, leaving your moaning and whining for more. \"That's a good bitch. You'll feel even better once you have a nice, fertile womb to fill with my pups,\" he growls. Your frazzled mind can barely comprehend the meaning of his words, body aching to feel him around and inside of you, something about the way he makes you feel making you yearn to be fucked like this forever. You're all too aware of that heavy wolfcock easing back in your too-tight tunnel, your walls gripping jealously around his bestial fuckmeat. He eases back until all but his twitching tip remains buried within you, then thrusts forward roughly in one smooth stroke that rams his knot against your overfull ans. You cry out this time, arching your head back and feeling your eyes fluttering closed, craving his cock and loving the way its every throb sends waves of pleasure through your entire body."
  await do pause
  say paragraph "You begin to feel small, insignificant, like your whole life you've waited to be fucked like a bitch in heat and only now are experiencing the primal thrill that you've been deprived of. Burning excitement emanates from your cock and colon, seeming to throb and wring in time with his assertive motions. The little growls and grunts filling your head are music to your ears, only making you feel more and more aroused, as if you were being reshaped to be a perfect little bitch for your strong lupine master and bear countless litters under his rule. The lurid fantasy makes you feel warm and fuzzy all over, and you can't help but pant and rumble with pleasure as he pounds away at you with steady zeal."
  say paragraph "Your cock shivers as he strokes it between leathery palm and fuzzy forefingers. You lose track of how many times your anal reaming and his deft grip brings you to orgasm, forcing you to cum from the constant stimulation and pressure on your prostate. Your dick becomes increasingly soft with each climax, seeming to wither in on itself impotently, every successive peak feeling weaker while your cum grows runny and watery. Before your hazy mind can catch up to realize what's happening, that thin, short shaft is reduced to an impotent nub on your crotch, now privy to a single digit stroking in circles across that hypersensitive clit. You don't even notice when you stop cumming, just that the intense pleasure never seems to abate, leaving you helplessly pent up and your mind awash in bliss."
  await do pause
  say paragraph "Some part of you starts to worry about what's happening, why you can't feel your needy cock throb anymore and why you've stopped resisting, but this too is pushed from your mind when an orgasm unlike any other wracks through your crotch. With a wet tearing sound, a slit settles into place between your legs, plush pink petals yawning wide as you splatter your thighs in your first female orgasm. Each squirt of hot nectar is accompanied by your taut coinpurse shrinking in on itself, being inexorably drawn up into your body while your freshly formed cunt ripples in rhythmic, orgasmic contractions. Your orgasm doesn't seem to stop, either, at least not until the last of your orbs are fully absorbed into your body, leaving nothing but a smooth expanse of flesh between your virginal pussy and your cock-plugged tailhole. Being plowed like a bitch in heat as you are, you can only whine out weakly as a trembling hand strays below to plunge into your sordid honeypot, your thumb grinding roughly against your clit. You feel like you should be alarmed of the sleek fur starting to sprout near your slit, but instead you just moan and go along with it, that spreading, comforting hide feeling like such a welcome improvement to your pleasure-fogged mind."
  say paragraph "While you look down in stunned amazement, your lupine mate pulls out, leaving his warm pre to trickle from your lightly gaping anus. You moan out for him, still fingering your needy cunt and shaking your ass, pleading half-coherently for him to fuck you. The wolf lets out a growl in response and uses a hand to guide his length to your new entrance, aligning himself just right. \"Now that that worthless little cock is gone, let's start pumping you full of pups,\" the lupine growls lustfully into your ear. You moan and nod your agreement to him, wanting nothing more than to be fucked and filled by your wonderful alpha."
  await do pause
  say paragraph "Your breath catches in your throat when you feel his cocktip smear across your petals. He slathers your lips in that warm, strong-smelling slurry, freshly pried from your far lesser fuckhole and now primed to drive deep into your pussy. Aching with need, your virginal slit drools streaks of clear nectar down your thighs, providing ample lubrication for your alpha. You let out a meek whine and bow your head submissively as arousal soars through your body, aching to please the sexy wolf and lusting to cum over and over as he claims you. Prostrating yourself so willingly just feels natural to your increasingly wolf-like body, and you can't help but lapse into a fantasy of being reduced to little more than a squirming lupine cocksleeve for the rest of your simple existence. All that's keeping you from embracing your fate is the wolf's cruel teasing, seeming to savor the way you squirm and beg for him to take you with broken, breathless enthusiasm."
  say paragraph "Just when you fear he'll never seal the deal, your alpha obliges his little bitch's needs and pushes deep into your nectar-drenched cunt. Inch by inch of cum-slick cockflesh pushes past your clenching lips, drowning out any semblance of human thought and leaving you writhing in mindless ecstasy. The pleasure of being taken by your strong, virile alpha is better than any drug, causing you to pant and push back against his knot as if your life depended on it. You let out a feminine cry when he abruptly drives forward, pushing your rising mounds against rough tree bark and making your entire body tense up as pleasure roars through you. All it takes is a second firm thrust to drive your overstimulated body to a hot and sticky climax, femcum gushing around his half-hilted root as his knot grinds firmly to your folds. While you moan and gurgle wetly, a low, lustful growl from above reminds you that this is your place now, that you belong him and that you'll always feel this mind-melting pleasure as his needy little plaything. You almost orgasm again just from the feeling of his sharp teeth grazing your neck, so very eager to fill your role as slutty beta bitch."
  say paragraph "After only a moment's reprieve, the wolf begins to saw his thick wolven cock back and forth in your needy, sensitive twat. That pulsing meat sheathes perfectly in the warm, wet oven of your cunt, sending waves of pleasure through your body with every thrust, your supple walls squeezing and massaging his length in time with his motions. He shows no hesitation in giving you the hard and fast rutting your body seems to crave, your lustful cries devolving into insensate babbling and moans. Every few thrusts seems to elicit another small climax, a hot rush of need echoing through your slit and womb, those euphoric peaks growing ever stronger the longer he plows you. Soon, your mind stops trying to make sense of the myriad shocks of sensation emanating from deep within your cunt, thoughts shutting down to just passively enjoy being claimed."
  await do pause
  say paragraph "You are fucked like this for who knows how long, every pleasure-addled minute whisking with it what remains of your fragile former self. Your focus narrows on the large bulb of his knot and how heavenly it would feel spreading your needy slit wide, the thought of being tied to the wolf's waist making your thighs clench together as another mind-rending orgasm washes over you. The low, possessive growl of your lupine mate has you shudder and whimper, aching to be filled and bear litter after litter of his strong wolven pups. Those powerful maternal instincts leave you all the more debilitatingly aroused, reduced to begging and crying out for his seed, no room for shame left in that pretty head of yours as he slams home against your sore petals with seemingly endless endurance. \"You ready?\" the wolf moans out against your ear, sharp teeth grazing along the rim of it. \"Going to make you mine, now and forever...\""
  say paragraph "With several rough, tight strokes that shove your hips forward from the impact, your alpha finally grows tense and grinds the swollen root of his cock to your entrance. Pressure mounts as that rigid round bulb pries your lips apart, then slips inside with a loud, wet *POP!* that makes your neck crane back as a shrill howl escapes you. The pain of entry is forgotten the moment his hot seed gushes into your sex, rope after rope of his virile essence bathing your cunt and womb in that soothing wolven cream. You yip and writhe in rapture with each torrential blast of cum, every pulse felt through that turgid meat as he seals your fate in that messy deluge. What doesn't stuff your overfilled muff gushes out around the imperfect seal, squirting down over your thighs in thick, pearly streams. Your lover's howl of release coaxes you to join him, your own intense orgasm forgotten amidst the pure primal bliss of being filled with your mate's release."
  say paragraph "The rest of your shared climax is a blur of happy sensations. You remember the feeling of his smooth tongue lapping over your nape, those sweet words of teasing, degrading praise, and the simmer of shuddering satisfaction. \"So much better without that worthless cock,\" he growls out. You nod feebly in agreement, sure that nothing could ever compare to this. \"So much better to let your alpha take care of you.\" You nod again, just wanting to say yes to anything he says to let him claim you over and over again. Just the fantasy of being his personal breeding bitch nearly brings you to orgasm again, sensitive cunt desperate to be stuffed with that perfect cock day in, day out. \"Such a good little bitch for alpha,\" he growls, and that's all it takes for you to moan feebly in one final climax that knocks your knees out from under you as your consciousness leaves you."
  await do pause
  say paragraph "You wake up sometime later, feeling sore all over, yet brutally satisfied. You seem to have been moved inside the wolf's tent while you were passed out, now bundled up in a sleeping bag that's been covered in an extra blanket. The wolf is lying next to you. Noticing you stir, he rolls onto his side to address you."
  say paragraph "\"You feeling alright?\" he asks. The question takes a moment to register, and when it does, you make make an uncertain motion with your head. You slur out that it's all been a bit... much. The wolf nods and reaches over, resting a paw atop your belly. You shiver at the contact. \"I know I went overboard earlier,\" he admits. \"This wasn't my intention. I just lost control of myself and ended up... well, changing you.\""
  say paragraph "You reach up to feel over your head and face. You vaguely recall being transformed into a wolf-like creature, but it still feels so surreal to you. A cursory check inside your sleeping back confirms that, yup, that's not the only thing that's changed. A half-sigh, half-groan leaves your lips as you fall limp again. \"There's going to be an adjustment period, but you'll get used to it,\" the wolf confides. \"You should try to get some rest in the meanwhile. Probably still wiped out after everything earlier. I guess I owe you an apology for that...\""
  say paragraph "You roll over on your side and give the wolf a weary look. Despite what he did to you, you find it impossible to hold anything resembling contempt for him. Instead, you feel a strange, almost instinctual connection. Sensing your conflicting thoughts, he leans in close to press a gentle kiss to your muzzle, which you reciprocate without much thought. \"\""
  do end


# Call: =>
#   switch
#     when @times_called is 0
#       say paragraph "You call out to the wolf to get his attention. One of his ears flickers at the sound, but he doesn't pay you any mind."
#     when @times_called is 1
#       say paragraph "Louder this time, you call to the wolf. He continues to ignore you, now quietly humming a song to himself to drown out your protests."
#     when @times_called is 2
#       say paragraph "Try as you might to get him to pay attention to you, nothing you yell or cry out seems to "
#   @times_called += 1

# "Apologize": if @times_begged is 0 then =>
#   await scene @Beg
# "Plead": if @times_begged is 1 then =>
#   await scene @Beg
# "Beg": if @times_begged is 2 then =>
#   await scene @Beg
# "Cry": if not @cried then =>
#   @cried = true
#   say paragraph "You realize how much of a mess you've already gotten yourself into. Tears streak down your face."

#   if @times_begged is 3 and @cried
#     await scene LoganCaptureFuck
# "Examine collar": if @times_examined_collar < 3 then =>
#   say paragraph "You look at the collar. It is securely fastened to your neck and around the tree."
#   @times_examined_collar += 1

#   TODO: On third time, you notice that one of the links on the chain is broken
# TODO: Try to look for a hard object if you've noticed the broken link
#   TODO: Grab the hard object
# TODO: Try to escape if you have the hard object
#   TODO: You break the chain and attempt to run away, but get caught because Logan is faster than you.
#   TODO: Angry fuck scene
#   TODO: Post-end game credits describing you being broken in as his bitch, but you're completely broken and collared.

# Beg: =>
#   switch
#     when @times_begged is 0
#       say paragraph "You apologize profusely to him for stealing his things."
#     when @times_begged is 1
#       say paragraph "You plead to him, claiming that you've learned your lesson."
#     when @times_begged is 2
#       say paragraph "You beg for him to let you go, chains jangling as you move your head."
#   @times_begged += 1

# if @times_begged is 3 and @cried
#   await scene LoganCaptureFuck

# export LoganCaptureFuck = =>


# TODO: Logan realizes that he's been fairly lonely, and needs a submissive bitch.
# (Song: Functionally completed!)

# TODO: Logan fucks your throat, you cough and cry sputtering up the spunk.
# (Song: Halfway done, need to describe knot being pulled out and aftermath.)

# TODO: You transform into Logan's bitch.

# TODO: Logan pushes you on all fours and fucks you in your virgin pussy doggystyle

# TODO: Post-end game credits describing you being broken in as his bitch, but ending up relatively happy as his slutty wife

# ends the game
# await do end
