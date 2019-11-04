sex: "male"
met: false
trust: true

Introduce: =>
  @met = true
  await scene @LoganIntroduction

LoganIntroduction: =>
  say paragraph "You wait at the campsite for a while. Your thoughts drift back to the laboratory again, wondering what exactly happened. A sudden noise from behind you jars you back to reality. When you turn to face the source, you can only stare in bewilderment at the sight of a large, bipedal wolf walking toward you. \"Hey!\" the creature calls out. \"What do you think you're doing? Hands where I can see them!\""
  say paragraph "You didn't expect to find trouble so soon, much less in the form of a humanoid wolf. You take a few steps back and nervously assure him that you didn't touch any of his stuff. The wolf eyes you suspiciously. \"Nobody comes up here, not this far up the mountain. What were you doing in my camp?\""

  option "Be completely transparent about your situation.": => await scene @ExplainPresenceHonestly
  option "Tell him that you were just scavenging for supplies.": => await scene @ExplainPresencePartially
  option "(Lie) Claim that you are a park warden and were checking his campsite for fire hazards.": => await scene @ExplainPresenceLie
  option "State that it's none of his business and take your leave.": => await scene @ExplainPresenceLeave
  await do choice

ExplainPresenceHonestly: =>
  say paragraph "You answer honestly, saying that you have no idea where you are or how you woke up here. "
  await scene @ExplainPresenceContinuation

ExplainPresencePartially: =>
  say paragraph "Worried that telling him everything might make you more suspicious, you omit the details of how you got here and state that you were just looking for supplies. \"A thief, then?\" the wolf asks, a smirk crooking his muzzle as he looks you up and down. \"No, you don't look the type. 'Sides, you'd have already stuffed your pockets and ran off if you were. No thief's going to stick around unless they're asking for trouble.\""
  say paragraph "You try to come up with an explanation, but the wolf just shakes his head. \"Don't even think about it. You're hiding something, I can tell. Now out with it, 'fore I kick you out of my camp.\" Put on the spot, you relent to the lupine's demand and admit that - yes - you weren't being entirely honest with him before. \"That's a nice way to sugar-coat it, but I'll let it pass,\" he chides. You go on to explain that you have no idea where you are or how you woke up here. "
  await scene @ExplainPresenceContinuation

ExplainPresenceLie: =>
  say paragraph "Before you even finish your sentence, you can see the wolf's muzzle spreading into a smirk. He chuckles to himself for a moment before breaking out into full-blown laughter. You stammer a response, but are drowned out by the noise. A paw-like hand suddenly slams hard against your back. \"Hoo boy, that's the dumbest lie I've heard in years!\" he wheezes. \"You've got some *nerve* to spin a tale like that!\" The wolf pauses to compose himself and wipe tears of laughter from his eyes. \"Hah... Save your breath. I can tell you're a good one. Saw you just standing there like a chicken with your head cut off 'fore I called out. You don't need to make up a story to prove you ain't a thief.\""
  say paragraph "You sigh loudly and admit that - yes - that was a pretty terrible lie. Truth be told, you have no idea where you are or how you woke up here. "
  await scene @ExplainPresenceContinuation

ExplainPresenceLeave: =>
  say paragraph "You firmly tell the wolf that you'd rather not say. Now, if he'll excuse you, you'll be right on your-"
  say paragraph "\"No, you're not going anywhere,\" the wolf man growls, quickly reaching out to snatch your arm and pull you toward him. Standing right in front of his formidable form, you're forced to crane your head back to meet his icy gaze. \"Nobody waltzes through my territory without answering to me. What were you doing in my camp?\""
  say paragraph "Wincing from the pressure of his grip, you say you'll tell him, but only if he lets go of you. \"Not happening,\" the wolf snaps. \"My camp, my rules. Either settle down and speak or I'll start twisting your arm until you do.\" He punctuates this by turning his wrist ever-so-slightly, sending a surge of pain through your body. You cry out and tell him to stop, but the wolf isn't swayed by your pleas."
  say paragraph "Unable to bear it, you admit through clenched teeth that you have no idea where you are or how you woke up here. "
  await scene @ExplainPresenceContinuation

ExplainPresenceContinuation: =>
  say "The last thing you remember... well, you must have struck your head or something, because you can't recall anything about the night before. All you remember is waking up in a nearby building and stumbling upon his camp while exploring the area."
  say paragraph "He eyes you for a moment, then relaxes his expression. Seeing this, you feel the tension in your muscles abate and let out a breath you didn't realize you were holding. \"You seem strange, but genuine. The name's Logan. I've been living on this mountain for years. Nobody else bothers me up here. Forgive me for being so suspicious - my last encounter with another person was not so pleasant.\""
  say paragraph "You ask him how he managed to stay hidden all this time. How is it possible that an actual, flesh-and-blood werewolf hasn't made the headlines by now? Is he just that good at hiding his tracks, or is there some kind of government cover-up keeping his existence under wraps?"
  say paragraph "Logan looks extremely confused. \"News? Government? What are you on about? There hasn't been a government in decades. Did you just wake up from a coma or something?\""

  option "What?": => await scene @BurstExplanation
  option "No!": => await scene @BurstExplanation
  option "Wait, what year is it?": => await scene @BurstExplanation
  await do choice

BurstExplanation: =>
  say paragraph "Shocked, he ponders for a few seconds and taps a finger to his snout. \"You really don't know? Oh... How do I explain this all? It's been a couple of decades since the Burst. No clue exactly how long since then. There was this global crisis and almost everyone disappeared off the face of the planet at the same time. Like that one movie. And the survivors, they turned into big furry creatures like me. And smaller ones, too, I guess.\""
  say paragraph "The wolf man gives you a sympathetic look. \"Sorry if that's confusing. Don't really talk to people much, so I'm not much of a storyteller.\""

  option "You're talking to a werewolf. By this point, anything is possible. Say that you believe him.": => await scene @BurstExplanationBelieve
  option "Hesitate. He may be trying to trick you. Tell him you'll believe it when you see it.": => await scene @BurstExplanationWary
  option "Growl that there's absolutely no way in hell anything he just told you is true!": => await scene @BurstExplanationIncredulous
  option "Stare at him blankly.": => await scene @BurstExplanationStare
  await do choice

BurstExplanationBelieve: =>
  say paragraph "After everything that's already happened to you, what's the harm in suspending your disbelief one more time? Besides, it'd make sense that nobody would care about the existence of a werewolf if *everyone* was turned into anthropomorphic animals. Logan looks relieved that you trust him, albeit not completely at ease."
  say paragraph "\"Might want to be careful out there,\" he rumbles. \"Lots of folks won't be as honest with you. If you start buying the wrong crowd's crap, you could end up getting hurt - or worse. Take it from me.\" You reflexively assure him that you're not so gullible, but he doesn't look convinced. \"Just watch your back out there, okay?\" Not wishing to press the issue further, you nod your assent to the wolf."
  await scene @SupplyOffer

BurstExplanationWary: =>
  say paragraph "\"Fair enough. I respect a skeptic,\" he admits coolly. \"Just don't come running back to me if you're not ready for what's down there. Some of those furry folks won't hesitate to take advantage of you.\" Wary of the connotations, you ask him what he means. \"I mean exactly what I said,\" the wolf growls, \"so watch yourself out there - seriously.\" You nod at his warning."
  await scene @SupplyOffer

BurstExplanationIncredulous: =>
  say paragraph "The wolf laughs in response. \"I'm not asking you to put your faith in me - it's just history. What happened, happened. You can park your ass at the foot of the mountain and see for yourself.\" He seems genuine enough, but between the emotional shock of waking up in a futuristic laboratory, meeting a real-life werewolf, and now *this* story, you can't help but remain incredulous."
  await scene @SupplyOffer

BurstExplanationStare: =>
  say paragraph "Logan remains silent for a long moment, then shakes his head. \"I know. It's a lot to take in. Just remember that it's not the same world out there. Don't go wandering around thinking people will just ignore you. You're fresh meat - opportunity - and that's something folks are going to take advantage of.\" You break from your befuddled blanking to ask him what he means. \"You damn well know what I mean. Don't let your guard down.\" Worry joins hunger in your gut as you both fall silent again."
  await scene @SupplyOffer

SupplyOffer: =>
  say paragraph "\"Hey, before you go,\" Logan turns from you to gesture toward his tent, \"you're gonna need something for the road. I can hear your stomach growling from all the way over here. Let me slip inside and grab some food and water. You sit tight, okay?\""
  option "He's been trustworthy so far. Stay where you are.": => await scene @SupplyOfferTrusting
  option "You've got a bad feeling about this. Politely decline.": => await scene @SupplyOfferDecline
  option "There is no way this is going to end well. *Run!*": => await scene @SupplyOfferFlee
  await do choice

SupplyOfferTrusting: =>
  say paragraph "Given that he hasn't done anything to slight you so far, you tacitly nod your assent to him. \"I'll be right back. Shouldn't take long at all.\""
  say paragraph "The wolf disappears inside of his tent. You hear the rustling of supplies being moved, but can't see exactly what he's up to. After a few seconds, he reemerges with a large canteen and two packets of freeze-dried fruit in hand."
  say paragraph "Try as you might, you have trouble hiding the concern in your face about the contents of the opaque canteen. Logan picks up on your expression and gives you a serious look. \"Food's food. You can't afford to be a picky eater these days, so dig in.\""
  await do pause
  await scene @SharingCanteen

SupplyOfferDecline: =>
  say paragraph "The wolf man gives you an incredulous look. \"Well, I guess I can't blame you. You must be all kinds of paranoid after everything you just heard. Still, you really shouldn't look a gift horse in the mouth. I think you'll feel a *lot* better with something in your belly...\""
  option "Relent and accept his offer.": => await scene @SupplyOfferRelent
  option "Insist that you're not interested.": => await scene @SupplyOfferInsist
  await do choice

SupplyOfferRelent: =>
  say paragraph "Oh, what the hell. There's no point in being difficult here. You let Logan know that - fine - he can go ahead and give you some of his supplies if he wants. The wolf smirks to himself at the news. \"Great,\" he rumbles. \"I'll be right back.\""
  say paragraph "Logan disappears inside of his tent. You hear the rustling of supplies being moved, but can't see exactly what he's up to. The pit in your gut grows more prominent as you anxiously wait for him to find what he's looking for. After a few seconds, he reemerges with a large canteen and two packets of freeze-dried fruit."
  say paragraph "On one hand, you're relieved that he wasn't just biding time to look for a knife or something. On the other, you're concerned about the contents of the opaque canteen. Noticing your expression, Logan gives you a serious look. \"Food's food. You can't afford to be a picky eater these days, so dig in.\""
  await do pause
  await scene @SharingCanteen

SupplyOfferInsist: =>
  say paragraph "\"Suit yourself,\" Logan rumbles. \"I'm not going to claim responsibility when someone finds your body on the side of the road.\" The way his tone suddenly shifted to cold, unfeeling indifference sends a chill down your spine. Unable to shake this growing sense of dread, you quickly say your goodbyes and move away from the wolf's camp, though not without sparing one last glance to make sure you're not being followed."
  await Player.location = MountainTrail2

SupplyOfferFlee: =>
  say paragraph "You may have spilled your guts to him already, but only figuratively so. You nod your assent to the wolf, wait for him to disappear halfway into the tent, then turn heel to sprint from the campsite as fast as your feet will carry you. You take a sharp turn once past the clearing to run down the mountain pathway, determined to put as much distance between yourself and the wolf man as possible. You hear Logan call after you, but he doesn't pursue, his voice growing distant before trailing off completely. Exhausted, you find a seat on a nearby stump to catch your breath and recover. You could have waited for a more concrete reason to distrust him, but hey, better safe than sorry."
  await Player.location = MountainTrail3

SharingCanteen: =>
  say paragraph "Before you have a chance to reconsider, Logan unscrews the top of his canteen and passes it to you. \"Drink. All of it.\" You tentatively take the bottle from him and give it a little swish. Half-full. The water inside doesn't have any noticeable discoloration or odor. \"Well, what are you waiting for?\" the wolf growls."
  say paragraph "Your lips feel dry, but should you really go through with this? Logan stares at you expectantly. You're running out of time to make a decision."

  option "Put your inhibitions aside and take a hearty swig.": => await scene @CanteenEager
  option "Take a small sip first.": => await scene @CanteenHesitant
  option "Request that Logan have a drink before you.": => await scene @CanteenLogan
  option "Decline to drink and pass the canteen back.": => await scene @CanteenDeclined
  await do choice

  await do pause
  await scene @SharingFood

CanteenEager: =>
  say paragraph "What's the worst that happen, you figure. You crane your head back and swallow the contents whole. The water inside is cool and pure, coating your throat as you drink it all down. By the time you finish, Logan greets you with a smile that doesn't quite reach his eyes. He curls two fingers to motion you to return the canteen. Feeling refreshed, you pass it back to the wolf and let out a quiet sigh."
  say paragraph "\"Tastes pretty good, right?\" Logan asks with a soft chuckle. \"You must have been parched.\" You tell him you appreciate the drink, but wonder where he got it from. \"Rainwater, mostly. Dry seasons, I get it from clean, running streams. I've got a purifier not far from here to drip it through just in case.\" He seems to have thought this through. You thank him for the explanation and lick your lips, feeling a good deal better after hydrating, but still quite hungry."

CanteenHesitant: =>
  say paragraph "You don't necessarily want to insult your host, but you're not fully convinced that the contents haven't been tainted in some way, either. At the risk of annoying him, you take a cautious first sip. The water is cool, but not icy, and you don't taste anything out of the ordinary. \"That all?\" Logan asks. \"You're going to be thirsty if you don't drink up.\" He's right - your throat feels dry. Still, you can't help but wonder if there's an ulterior motive behind his hospitality."

  option "Drink down the rest of the canteen's contents.": => await scene @CanteenContinued
  option "Hand the canteen back.": => await scene @CanteenStopped
  await do choice

CanteenContinued: =>
  say paragraph "If it hasn't made you nauseous yet, chances are a little more won't kill you. You drink down the rest in front of the wolf, letting the cool water serve as balm for your throat. Logan gives you a pensive look as you hand the canteen back to him. \"Maybe you never had to rough it before, but staying hydrated is important if you want to survive. I even went through the trouble of purifying it just to be safe.\" Curiosity piqued, you wipe your mouth and ask him what he means by that. \"I've got a filter system I made myself a little deeper in the woods. Run the rain and river water I collect through it, just to be safe.\" You nod in response, relieved to hear he's thought this through."

CanteenStopped: =>
  say paragraph "You err on the side of caution and hand the canteen back to the wolf. Logan looks at you incredulously. \"Well, can't say I blame you,\" he admits. \"No harm in being cautious around strangers, 'specially someone who looks like me.\" Try as he might to sound sympathetic, it's clear from the wolf's tone of voice that he's growing annoyed with your distrust."

CanteenLogan: =>
  say paragraph "Even though there's no obvious signs of contamination, you just can't be certain that the canteen's contents haven't been tainted in some way. You'd rather risk the ire of your mutated host than drink something which may or may not have been poisoned. Logan looks at you incredulously when you hand the canteen back to him, only to glower at the suggestion that he drink from it first."
  say paragraph "\"No,\" the wolf man growls. \"I've already had half before you showed up. It's only fair that you have the rest. 'Sides, I can always gather more water after you leave.\" You argue that your suspicions are justified. There *are* such things as clear, odorless poisons, and you didn't see collect the water to rule out that possibility. The risk you'd be exposed to far outweighs the burden of being thirsty for a few more hours."
  say paragraph "\"Poison? What the hell are you on about?\" Logan snarls. There's a pregnant pause between the two of you before the wolf lets out an exasperated sigh. \"Just shut up and have a drink already. Save this cloak-and-dagger shit for someone else.\""

  option "Relent and take a swig.": => await scene @CanteenLoganRelent
  option "If he's so intent on proving he's trustworthy, demand that the wolf drinks from the canteen first.": => await scene @CanteenLoganDemand
  option "Staunchly refuse to drink.": => await scene @CanteenLoganRefuse
  await do choice

CanteenLoganRelent: =>
  say paragraph "Logan seems to be getting increasingly irate. Rather than risk being mauled for provoking him further, you ask the wolf to hand you the canteen. He hands the bottle back to you without a word, though his eyes never leave yours."
  say paragraph "You look down into the canteen. The fluid inside is clear and odorless. Nothing about the way it swishes in its container suggests there's anything other than pure, clean water. Putting your worries aside, you down it all back. It's cool and fresh, soothing your throat as you drink as much as you can. Once you've had your fill, you look back at Logan, who still seems pensive. \"Hope that hit the spot,\" he rumbles, and you nod."

CanteenLoganDemand: =>
  say paragraph "Logan rolls his eyes. \"If it'll make you feel better about it,\" he grumbles. The wolf says something along the lines of \"bottoms up\" as he tips the canteen back and drinks. Once finished, he hands the bottle back to you with a look of indifference. \"See? Nothing to worry about. Purified water, fresh from recent rainfall.\""
  say paragraph "Worries assuaged, you cautiously drink from the canteen, mindful to avoid the part of the ridge that just came into contact with the werewolf's mouth. The water is cool and clear, a soothing balm for your parched throat. It's not long before you've swallowed every last drop. \"There. You didn't have to make it so difficult, but I'm glad you're feeling better now.\" You wipe your mouth clean with your arm, hand the canteen back to him, and thank him for the drink."

CanteenLoganRefuse: =>
  say paragraph "If he doesn't have an ulterior motive, why is he getting so angry at you for refusing a drink? Beyond the risk of being drugged or poisoned, there's a chance that his condition could spread through his saliva, which is likely still on the lip of the canteen or inside of it. You shudder inwardly at the thought of being tricked and firmly refuse his offer."
  say paragraph "Logan looks frustrated with your insistence as he screws the lid back on the canteen. \"Suit yourself. Can't say I'm surprised that you don't trust me, but at least I offered.\" You tell the wolf you didn't mean anything by it. You just have your own skin to worry about, and you can't put your faith in strangers, no matter who they are. \"It's fine. Forgive and forget,\" the wolf grumbles. He looks hurt, but the skeptic inside of you is telling you not to give him an inch."

CanteenDeclined: =>
  say paragraph "You politely decline a drink from the canteen. \"What? Why?\" Logan asks, a confused look on his muzzle. You explain that he's still a stranger, and there's any number of things he could have done to spike or contaminate the contents without your knowledge. Moreover, you have no idea whether or not residue of his saliva could infect you with whatever caused him to change in the first place. As far as you're concerned, his word is moot on the matter until you see how a condition like his spreads firsthand."
  say paragraph "\"That's... fair,\" the wolf grumbles. He seems annoyed by your decision. \"But, just so you know, a form like this isn't something you 'catch', if that makes sense. Takes intent to pass it along.\" You'd ask him what he means by that, but reckon he is just falling into the trappings of an urban myth. You know enough about infections to understand that concepts like \"energy\" and \"mindset\" have nothing to do with them. Logan picks up on your doubt, but doesn't push the subject further."

SharingFood: =>
  say paragraph "\"So, 'bout time we get you something to eat, huh?\" Logan offers. You look between him and the packets of freeze-dried fruit. Your stomach growls your assent for you. \"Worth a thousand words,\" the wolf teases, making you feel self-conscious about your body betraying your needs. He hands you a plastic bag full of strawberries. \"Now eat up. It doesn't taste good, but it'll keep you going.\""
  say paragraph "Hunger getting the better of you, you don't even think about refuting his offer as you tear open the plastic packet and start chewing on the contents. It's not unpalatable, but there's not much in the way of flavor, either. The crunchy texture makes it taste more akin to dry cornflakes than anything else. Logan eats from his own packet while you struggle through the contents, the werewolf watching you the entire time to make sure you get your fill."
  say paragraph "Once you've finished, you lean back in your seat and close your eyes for a moment. That really hit the spot. Logan clears his throat to get your attention. \"You should keep your eyes open for more of that stuff. I know some people in the city will trade for it. It keeps for decades and it's real lightweight. Just know that it paints a target on your back if anyone sees you carrying it.\" You nod to the wolf and thank him for the advice."
  await do pause
  await scene @QA

QA: =>
  say paragraph "Logan's expression suddenly grows more serious as an ear swivels toward a sound in the distance. \"I need to get going here. If you've got anything else you want to get off your chest, go ahead and spit it out now.\""
  await scene @QAChoices

QAChoices: =>
  option "Ask the wolf why he's living alone on the mountain.": => await scene @QAAloneHere
  option "Ask the wolf why he hasn't made his home in the observatory.": => await scene @QAObservatory
  option "Ask the wolf what it's like at the bottom of the mountain.": => await scene @QABaseOfMountain
  option "Ask the wolf what you need to do to survive.": => await scene @QASurvival
  option "Ask the wolf what's got him so on edge.": => await scene @QAComplete
  await do choice

QAAloneHere: =>
  say paragraph "Logan seems to wince at your question, but does his best to hide his discomfort. \"Got folks back home who want me dead,\" he answers. \"I'd rather not talk about it.\" You avoid pressing the issue."
  await scene @QAChoices

QAObservatory: =>
  say paragraph "\"Same reason you got out of there, if I had to guess,\" he muses. \"Place is spooky. I haven't gone up there in years. Last time I went, all the doors were locked and there was this weird glow coming from inside the building.\" You muse that the glow could have been the crystals in the room you woke up in. \"Yeah. That might be it. Still, spooky as hell if you have no idea what's going on in there. Now that you told me about the lab, I feel like avoiding it was the right choice.\""
  await scene @QAChoices

QABaseOfMountain: =>
  say paragraph "\"Oh, it's a nightmare,\" Logan grumbles."
  say paragraph "\"First, you've got the guard dogs at the outskirts who are *supposed* to keep out the troublemakers, but just end up being corrupt dirtbags who harass anyone that passes through their checkpoint. I reckon you know the type - petty tyrants who get their rocks off by lording over others.\""
  say paragraph "If you're moneyed, cunning, or slutty enough to get past them, you've got some sleazy dealers past the checkpoints who want to 'welcome' you into the city by drugging you and selling you off as a sex slave. These aren't just street dealers promising a cheap high, they'll straight-up date rape you before passing your still-dripping hole to the highest bidder.\""
  say paragraph "\"Once you're past those freaks and into the city, you've got the slummy, middle class, and upscale parts of town. Each has got its own share of perverts and weirdos who'll happily chew you up. I'd argue the worst parts are the richest and poorest areas.\""
  say paragraph "There's a short pause in his speech before Logan remembers something else. \"And never, ever trust a husky. Those dogs will mess you up in ways you didn't think possible. Stay as far away as you can if 'you' want to stay *you*.\""
  say paragraph "Wow. That's... a lot to take in. You politely thank Logan for his lengthy explanation, although can't help but feel discouraged after his grim depiction of the city. Maybe he's exaggerating a little, or maybe he has ulterior motives and isn't being honest with you. Either way, you figure the only way to know for certain is to experience it for yourself."
  await scene @QAChoices

QASurvival: =>
  say paragraph "The instant you finish your sentence, Logan replies with \"Stay away from the city.\" He gives you a rather serious look before continuing. \"Basic needs. Water, food, sleep, shelter. Also, be attentive. Never let your guard down, and don't get lazy. Follow a routine, but have a plan in case something goes wrong.\""
  say paragraph "You complain that these aren't 'survival tips' so much as general advice. \"Doesn't matter. Still true,\" the wolf growls curtly. \"As for details, learn how to gather food and water. Rainwater collects well in trash or lawn bags, and there's plenty of streams you can dip a bottle in. Fruit can make you sick if you don't memorize what does what, so stock up with traders when you can. Try to barter for dehydrated or freeze-dried food, a sturdy container with a cap of some kind, and maybe a knife or med-kit. You'll do a lot better in the woods with a little man-made help to keep you going.\""
  say paragraph "Speaking of man-made help, you ask Logan why he hasn't sought out a house to squat in yet. \"First of all, does it look like there's anything around here?\" You admit that, no, you haven't seen any buildings aside from the observatory. \"Also, that's more of a risk than you think. You're painting a target on yourself by living in any building that stands out, and that's all of them on this mountain. Sure, you can still lock the door - if the lock still works - but there's nothing stopping someone from picking it or busting through a window. Chances are, they *will* break in to steal anything not nailed down. Better to haul your stuff in a backpack and sleep in a tent than get attacked by every Dick and Jane who sees your home as a mark.\""
  say paragraph "Satisfied with his explanation, Logan asks you if there's anything else you wanted to cover before you head out to leave."
  await scene @QAChoices

QAComplete: =>
  say paragraph "Something isn't right here. You ask Logan what exactly he's in such a rush to leave for."
  say paragraph "\"Heard some kind of animal,\" the wolf rumbles. \"Need to hang the food from the trees before someone scents it. Shoulda done that sooner, but it must've slipped my mind when I moved camp.\""
  say paragraph "Animal? You ask Logan if he's referring to another survivor or an actual animal."
  say paragraph "\"Could be either,\" he admits. \"It's probably just a regular ol' animal.\" He doesn't look certain in his answer. \"Well, I hope, anyways. Now that you poked your head in here, I'm wondering who else is up on the mountain - or if someone's looking for you.\""
  say paragraph "You hadn't really considered that before. You were wary in the observatory, but as soon as you got out, you were so relieved that you didn't think someone might take issue with you escaping. The idea makes you uncomfortable, which Logan picks up on."
  if @trust = true
    await scene @ShelterOffer
  else
    say paragraph ""

ShelterOffer: =>
  say paragraph "\"Tell you what,\" the wolf rumbles. \"You seem like you've got your act together, more or less. That's more than I can say for most people. But, you also seem like you're not going to last a day in the city. It's a jungle down there, and it's not going to get any easier if you get yourself tangled up with the wrong crowd.\""

  option "Ask the wolf what exactly he's getting at here.": => await scene @ShelterOfferDirect
  option "Give the wolf a wary look. What's he trying to imply?": => await scene @ShelterOfferWary
  option "Tell the wolf that you're not interested in whatever he's offering.": => await scene @ShelterOfferUninterested
  await do choice

ShelterOfferDirect: =>
  say paragraph "\"What I'm saying is, I could use some help around camp.\" The wolf pauses for a moment, mulling over his words. \"From what you told me earlier, you may have already made an enemy of whoever was running the lab you escaped from. You could use someone with a little more experience in this world to help keep you safe. 'Course, you'd have your share of responsibilities as well. That's not to say I'd make you do all the work, just that we could split it in a way that makes this easier for the both of us.\""
  await scene @ShelterOfferOptions

ShelterOfferWary: =>
  say paragraph "\"What's that look for?\" Logan asks with a laugh. \"I'm not asking anything shady. What's I'm trying to get at is that I see an opportunity for both of us to benefit here. You need some kind of shelter and protection, and I could use help around camp."
  say paragraph "You understand what the wolf is asking, but continue to give him a pointed look in the hope that he'll explain himself further. \"Ugh. Listen. Now that you escaped from that lab, chances are someone's going to start looking for you, right? I think you could use someone who's lived in this world and better understands its dangers to watch your back. All I'd ask for in return is some help with basic tasks to make survival easier for the both of us.\""
  await scene @ShelterOfferOptions

ShelterOfferUninterested: =>
  say paragraph "You tell Logan to stop before he gets ahead of himself. You have a pretty good idea of what he's about to ask, and you're simply not interested."
  say paragraph "\"At least hear me out!\" the wolf grumbles. \"I get that you're skeptical, so I'll be blunt with you. I could use some help around camp, and you could definitely use shelter and protection. Also, that lab you escaped from? I don't think they'd just let a test subject get away without chasing it down. You should *really* consider settling down and staying low if you don't want to end up dead in a ditch somewhere - or worse.\""
  await scene @ShelterOfferOptions

ShelterOfferOptions: =>
  option "Food, shelter, and a bodyguard? That's a pretty good deal. Accept the wolf's offer.": => await scene @ShelterOfferAccept
  option "You're not so certain. Ask the wolf what's stopping him from taking advantage of you out here in the wilderness?": => await scene @ShelterOfferSkeptical
  option "Inform Logan that you'll consider it. After all, you haven't even checked the base of the mountain yet.": => await scene @ShelterOfferMaybeLater
  option "Tell him that you're not interested in his offer.": => await scene @ShelterOfferDecline
  await do choice

ShelterOfferAccept: =>
  say paragraph "While there's certainly reason to be hesitant, you're not about to look a gift horse in the mouth. You inform Logan that you'd welcome a place to stay, especially with someone who's proven trustworthy so far. The wolf seems a bit taken aback by your quick assent, but doesn't complain. \"You're pretty easy, aren't you?\" he laughs. You're tempted to jab the wolf's arm, but restrain yourself just in time. \"In all seriousness, I'm glad we see eye-to-eye here.\""
  await scene @LoganOfferAccepted

ShelterOfferSkeptical: =>
  say paragraph "\"Nothing,\" he states plainly. \"You just would have to trust my word that I wouldn't hurt a fly - 'least, not if they don't intend to wrong me first.\""
  say paragraph "*Intend* to wrong him first? There's something off about the way he phrased that. You cautiously ask Logan if he'd hurt someone based solely on perceived intent."
  say paragraph "\"Oh. Right. You never had to deal with people who wanted to see you dead before, have you?\" You shake your head. \"Figures. I've had my share of it over the years. Big reason why I moved up here in the first place. In some ways, it's easier for me to trust a stranger than someone from back home.\" His last words trail off a bit, and he looks to the side as if he'd rather change the subject."

  option "Don't push him. Everyone's got a hatchet to bury somewhere. Besides, the last thing you need is to make an enemy out of an ally.": => await scene @ShelterOfferNoPress
  option "Press him on the matter. If he's offering you stay here, you need to know exactly what kind of threats you might have to deal with.": => await scene @ShelterOfferPress
  await do choice

ShelterOfferNoPress: =>
  say paragraph "You politely inform Logan that any past transgressions are irrelevant to you. It's none of your business, and you respect the wolf's privacy. \"Thank you, but I wouldn't say I wronged anyone on purpose, just made some mistakes that landed me in hot water with the wrong crowd.\" You repeat that it's water under the bridge know. Logan nods and gives you an gentle, appreciative look."
  say paragraph "\"So, are you open to joining me, then?\" he asks. You consider it for a moment. There's merit to avoiding the devil you don't know, but you're wary of putting too much faith in someone you just met and know little to nothing about."

  option "At this point, you trust Logan enough to consider him an ally. Tell the wolf that you'd like to stay with him at his camp.": => await scene @ShelterOfferNoPressAccept
  option "You're still not certain about all this. Tell Logan that you'll consider his offer and get back to him later.": => await scene @ShelterOfferNoPressMaybeLater
  option "You don't think you can shoulder the risk. Tell Logan that you're not interested in joining him here.": => await scene @ShelterOfferNoPressDecline
  await do choice

ShelterOfferNoPressAccept: =>
  say paragraph ""
  await scene @LoganOfferAccepted

ShelterOfferNoPressMaybeLater: =>
  say paragraph ""

ShelterOfficeNoPressDecline: =>
  say paragraph ""

ShelterOfferPress: =>
  say paragraph "Logan shakes his head adamantly. \"It's a sore spot for me. Sorry. I know I'm the one being difficult here, but talking about the past puts me in a foul mood.\" You see the wolf's fists clench by his sides, the muscles under his furry hide starting to strain as he suppresses his anger. \"It's not something you need to worry about. All that crap hasn't mattered since I left the city. Up here, the worst I've got to worry about is the weather or some wild animal walking through my camp.\""

  option "Logan seems quite vulnerable at the moment. Apologize for dredging up the past and accept the wolf's offer.": => await scene @ShelterOfferPressAcceptApologize
  option "Tell Logan that you're willing to accept his offer, but won't hesitate to bail on him if this 'long-buried' past comes back to haunt you.": => await scene @ShelterOfferPressAcceptWary
  option "There's a chance that Logan might be lying to you about the city. Inform him that you'll consider his offer, but wish to investigate for yourself first.": => await scene @ShelterOfferPressMaybeLater
  option "Logan seems to have some dangerous skeletons in his closet. Tell him you're not interested if he refuses to tell you the truth.": => await scene @ShelterOfferPressDecline
  await do choice

ShelterOfferPressAcceptApologize: =>
  say paragraph "You apologize to the wolf for dredging up a past he's since buried. He gives you a somewhat odd look in response, but nods. \"'Buried.' Yeah, that's one way to put it. I'd rather just forget about it completely.\" His words come as a soft, sad rumble. You tell the wolf not to worry about it and inform him that you're open to sticking around, provided he holds true to his side of the bargain. \"Oh. That's... good!\" he states, straightening himself. He seems a bit taken aback that you decided to join him anyways, but also in a much better mood than before."
  await scene @LoganOfferAccepted

ShelterOfferPressAcceptWary: =>
  say paragraph "Cautiously, you inform the wolf that you are open to his offer, but only under the condition that he holds true to his side of the bargain and that none of his past mistakes come back to bite you. \"Of course,\" Logan says, letting out of a sigh of relief at your answer. \"That's only reasonable. Mark my words that it's not going to be an issue, though. I've already taken every precaution I could to make sure it doesn't crop up again.\" You remind the wolf that this is only a tenuous alliance, which he accepts with a small nod."
  await scene @LoganOfferAccepted

ShelterOfferPressMaybeLater: =>
  say paragraph ""

ShelterOfferPressDecline: =>
  say paragraph ""

ShelterOfferMaybeLater: =>
  say paragraph ""

ShelterOfferDecline: =>
  say paragraph ""

LoganOfferAccepted: =>
  await do pause
  say paragraph "\"I guess first order of business is getting all the food in a bundle and tying it up to a tree. Don't want bears or wolves wandering in here and eating us alive. Why don't you sit tight and I'll go set everything up? You can watch from where you are to see how it's done.\" You nod to the wolf, a little relieved that you're not being set to work already. You have to wonder what you've just gotten yourself into, but push aside those second thoughts and find a seat as instructed."
  say paragraph ""