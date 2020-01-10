sex: "male"
met: false
trust: true

# Introduction and explanations

Introduce: =>
  @met = true
  await scene @LoganIntroduction

LoganIntroduction: =>
  say paragraph "You wait at the campsite for a while. Your thoughts drift back to the laboratory again, wondering what exactly happened. A sudden noise from behind you jars you back to reality. When you turn to face the source, you can only stare in bewilderment at the sight of a large, bipedal wolf walking toward you. \"Hey!\" the lupine calls out. \"What do you think you're doing? Hands where I can see them!\""
  say paragraph "You didn't expect to find trouble so soon, much less in the form of the creature now before you. You take a few steps back and nervously assure him that you didn't touch any of his stuff. The wolf eyes you suspiciously. \"Nobody comes up here, not this far up the mountain. What were you doing in my camp?\""

  option "Be completely transparent about your situation.": => await scene @ExplainPresenceHonestly
  option "Tell him that you were just scavenging for supplies.": => await scene @ExplainPresencePartially
  option "(Lie) Claim that you're a park warden and were checking his campsite for fire hazards.": => await scene @ExplainPresenceLie
  option "State that it's none of his business and take your leave.": => await scene @ExplainPresenceLeave
  await do choice

ExplainPresenceHonestly: =>
  say paragraph "You answer honestly, saying that you have no idea where you are or how you woke up here. "
  await scene @ExplainPresenceContinuation

ExplainPresencePartially: =>
  say paragraph "Worried that telling him everything might make you more suspicious, you omit the details of how you arrived here and state that you were just looking for supplies. \"A thief, then?\" the wolf asks, a smirk crooking his muzzle as he looks you up and down. \"No, you don't look the type, and you'd have already stuffed your pockets and ran off if you were. No thief's going to stick around unless they're asking for trouble.\""
  say paragraph "You try to come up with an explanation, but the beast shakes his head at you before you can reply. \"Don't even think about it. You're hiding something, I can tell. Now out with it, 'fore I kick you out of my camp.\" Backed into a corner, you admit that you weren't being entirely honest with him before. In fact, you have no idea where you are or how you woke up here. "
  await scene @ExplainPresenceContinuation

ExplainPresenceLie: =>
  say paragraph "Before you even finish your sentence, you can see the wolf's muzzle spreading into a smirk. \"Right. Mind showin' some proof?\" Taken aback by his request, you stammer for a moment as you think of an excuse. The man chuckles to himself and shakes his head at you. \"Save your breath, you glorious idiot. I saw you standing there like a chicken with your head cut off 'fore I called out. You don't need to lie to prove you ain't a thief.\""
  say paragraph "Not willing to risk irritating the wolf, you admit that you weren't being honest with him. Truth be told, you have no idea where you are or how you woke up here. "
  await scene @ExplainPresenceContinuation

ExplainPresenceLeave: =>
  say paragraph "You firmly tell the wolf that you'd rather not say. Now, if he'll excuse you, you'll be right on your-"
  say paragraph "\"No, you're not going anywhere,\" he growls, quickly reaching out to snatch your arm and pull you toward him. Standing right in front of his formidable form, you're forced to crane your head back to meet his icy gaze. \"Nobody waltzes through my territory without answering to me. What were you doing in my camp?\" Wincing at the pressure of his grip, you say you'll tell him, but only if he lets go of you. \"Not happening,\" the wolf snaps. \"My camp, my rules. Either settle down and speak or I'll start twisting your arm until you do.\""
  say paragraph "Not wanting to get hurt, you hurriedly admit that you have no idea where you are or how you woke up here. "
  await scene @ExplainPresenceContinuation

ExplainPresenceContinuation: =>
  say "The last thing you remember... well, you must have struck your head or something, because you can't recall anything about the night before. All you remember is waking up in a nearby building and stumbling upon his camp while exploring the area."
  say paragraph "He eyes you for a moment, then relaxes his expression. Seeing this, you feel the tension in your muscles abate and let out a breath you didn't realize you were holding. \"You seem strange, but genuine. The name's Logan. I've been living on this mountain for years. Nobody else bothers me up here. Forgive me for being so suspicious - my last encounter with another person was not so pleasant.\""
  say paragraph "You ask him how he managed to stay hidden all this time. How is it possible that an actual, flesh-and-blood werewolf hasn't made the news? Is he just that good at hiding his tracks, or is there some kind of government cover-up keeping his existence under wraps? \"News? Government? What are you on about? There hasn't been a government in decades. Did you just wake up from a coma or something?\""

  option "What?": => await scene @BurstExplanation
  option "No!": => await scene @BurstExplanation
  option "Wait, what year is it?": => await scene @BurstExplanation
  await do choice

BurstExplanation: =>
  say paragraph "Shocked, he ponders for a few seconds and taps a finger to his snout. \"You really don't know? Oh... How do I explain this all? It's been a couple of decades since the Burst. No clue exactly how long since then. There was this global crisis and almost everyone disappeared off the face of the planet at the same time. Like that one movie. And the survivors, they turned into big furry creatures like me. And smaller ones, too, I guess.\""
  say paragraph "The wolf man gives you a sympathetic look. \"Sorry if that's confusing. Don't really talk to people much, so I'm not much of a storyteller.\""

  option "You are talking to a werewolf. By this point, anything is possible. Say that you believe him.": => await scene @BurstExplanationBelieve
  option "Hesitate. He may be trying to trick you. Tell him you'll believe it when you see it.": => await scene @BurstExplanationWary
  option "Growl that there's absolutely no way in hell anything he just told you is true!": => await scene @BurstExplanationIncredulous
  option "Stare at him blankly.": => await scene @BurstExplanationStare
  await do choice

BurstExplanationBelieve: =>
  say paragraph "After everything that's already happened to you, you have little reason to doubt the wolf. Besides, it'd make sense that nobody would care about this existence if *everyone* was turned into some form of human-animal hybrid. Logan looks relieved that you trust him, albeit not completely at ease."
  say paragraph "\"Might want to be careful out there,\" he rumbles. \"Lots of folks won't be as honest with you. If you start buying the wrong crowd's crap, you could end up getting hurt - or worse. Take it from me.\" You reflexively assure him that you're not so gullible, but he doesn't look convinced. \"Just watch your back out there, okay?\" Not wishing to press the issue further, you nod your assent to the wolf."
  await scene @SupplyOffer

BurstExplanationWary: =>
  say paragraph "\"Fair enough. I respect a skeptic,\" he admits coolly. \"Just don't come running back to me if you're not ready for what's down there. Some of those furry folks won't hesitate to take advantage of you.\" Wary of the connotations, you ask him what he means. \"I mean exactly what I said,\" the wolf growls, \"so watch yourself out there - seriously.\" You nod at his warning."
  await scene @SupplyOffer

BurstExplanationIncredulous: =>
  say paragraph "The wolf laughs in response. \"I'm not asking you to put your faith in me - it's just history. What happened, happened. You can park your ass at the foot of the mountain and see for yourself.\""
  await scene @SupplyOffer

BurstExplanationStare: =>
  say paragraph "Logan remains silent for a long moment, then shakes his head. \"I know. It's a lot to take in. Just remember that it's not the same world out there. Don't go wandering around thinking people will just ignore you. You're fresh meat - opportunity - and that's something folks are going to take advantage of.\" You ask him what exactly he means by that. \"I mean exactly what I said,\" the wolf growls, \"so don't let your guard down.\" Worry joins hunger in your gut as you both fall silent again."
  await scene @SupplyOffer

# Logan offers supplies to the player

SupplyOffer: =>
  say paragraph "\"Hey, before you go, you're gonna need something for the road. I can hear your stomach growling from all the way over here. I'll grab some food from my tent and we can both sit down for lunch, alright?"

  option "Accept the wolf's offer. A bite to eat couldn't hurt.": => await scene @SupplyOfferAccept
  option "Politely decline. Accepting food from him is too risky.": => await scene @SupplyOfferDecline
  await do choice

SupplyOfferAccept: =>
  say paragraph "\"Good to see you've got some sense. Now, sit tight while I make us a meal.\" Nodding to the wolf, you find a seat on a flat stump to rest your legs and relax while you wait. It feels good to sit down and focus on the cool breeze blowing over your skin. After a little while, the wolf reemerges from his tent with a large canteen and two packets of freeze-dried fruit."

SupplyOfferDecline: =>
  say paragraph "\"Too bad I'm not going to give you a choice here,\" the wolf growls. \"You might not have any sense, but I'm not going to let you starve yourself just 'cuz you don't trust me. Now, stop your fussing and sit tight or I'll hunt you down myself.\""
  say paragraph "Cowed into silence, you obey the wolf's order and find a seat on a flat stump. You feel tense after his threat, like the danger of your situation has just sunk in now that the initial shock of waking up in the lab has worn off. After a little while, the wolf reemerges with from his tent with a large canteen and two packets of freeze-dried fruit."

SupplyOfferContinued: =>
  say paragraph "Logan unscrews the top of the canteen and hands it you. \"Drink up,\" he commands. You look briefly at the clear contents swishing inside. Not seeing to smelling anything out of the ordinary, you tip it back to take a hearty swig. The cool water inside is the perfect balm for your throat, sending a shiver down your spine as you pour it back. The wolf watches you intently to make sure you get your fill. Feeling much better, you hand the canteen back to him and wipe a trickle of water from your chin."

# Logan shares freeze-dried fruit with the player

SharingFood: =>
  say paragraph "\"So, 'bout time we get you something to eat, huh?\" Logan offers. You look between him and the packets of freeze-dried fruit. Your stomach growls your assent for you. \"Worth a thousand words,\" the wolf teases, making you feel self-conscious about your body betraying your needs. He hands you a plastic bag full of strawberries. \"Now eat up. It doesn't taste good, but it'll keep you going.\""
  say paragraph "Hunger getting the better of you, you don't even think about refuting his offer as you tear open the plastic packet and start chewing on the contents. It's not unpalatable, but there's not much in the way of flavor, either. The crunchy texture makes it taste more akin to dry cornflakes than anything else. Logan eats from his own packet while you struggle through the contents, the werewolf watching you the entire time to make sure you get your fill."
  say paragraph "Once you've finished, you lean back in your seat and close your eyes for a moment. That really hit the spot. Logan clears his throat to get your attention. \"You should keep your eyes open for more of that stuff. I know some people in the city will trade for it. It keeps for decades and it's real lightweight. Just know that it paints a target on your back if anyone sees you carrying it.\" You nod to the wolf and thank him for the advice."
  await do pause
  await scene @QA

# Logan finished sharing supplies and now answers the player's questions
# The final answer progresses to the "trust" check

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
  say paragraph "You hadn't really considered that before. You were wary in the observatory, but as soon as you got out, you were so relieved that you didn't think someone might take issue with you escaping. The thought of being followed makes you uncomfortable."
  if @trust
    await scene @ShelterOffer
  else
    await scene @NoShelterOffer

# Trust check returned "false"
# Logan offers more information on request and the two say goodbyes

NoShelterOffer: =>
  say paragraph "\"Don't worry too much about it. Probably just ol' Logan being paranoid again.\" There's a moment of silence as the wolf mulls something over, only to shake his head at no one in particular. \"Now that you're all set, don't let me keep you. I've got to get some work done here, and you should get moving before night falls.\""
  await scene @NoShelterOfferChoices

NoShelterOfferChoices: =>
  option "Thank him for the meal and take your leave.": => await scene @NoShelterOfferGoodbyes
  option "Ask the wolf what nightfall entails.": => await scene @NoShelterOfferAskAboutNight
  option "Ask the wolf if you could stay the night.": => await scene @NoShelterOfferAskToStay

NoShelterOfferGoodbyes: =>
  say paragraph "You thank the wolf for his hospitality and say that you'll be taking your leave now. \"What, not going to ask for one last favor?\" Logan teases. What is that supposed to mean? You quirk a brow at his words, only to be met with a dry chuckle. \"I'm just pulling your leg. I'm used to people asking for seconds after they already got a free handout.\" You tell Logan you didn't intend as much, a defense that he answers with a gentle smile. \"Oh, I know. You seem like the good type. A bit too much of a skeptic, but hey, that's not a bad thing in a world gone crazy.\""
  say paragraph "The wolf looks back over his shoulder toward something in the distance. Taking the hint, you thank Logan one last time before heading on your way, leaving the wolf man alone at his campsite."
  await do pause
  await Player.location = MountainTrail2

NoShelterOfferAskAboutNight: =>
  say paragraph "\"Nothing out of the ordinary, really. It's just dark. Worst case scenario, some nocturnal creatures will come out of the woodworks and harass you. I wouldn't worry too much about it, but it's still better not to go wandering around in the dark if you can help it.\" You nod in response. \"Now, if you don't have any other questions, I've got to hang my food from a tree before the bears start showing up.\""
  await scene @NoShelterOfferChoices

NoShelterOfferAskToStay: =>
  say paragraph "Logan shakes his head again. \"No can do,\" he states flatly. \"'Sides, you seem spry enough to see through the city folks' bullshit. I bet you'll do *juuust* fine out there.\" His tone comes across as a little sardonic. Did you do something to upset him?"
  await scene @NoShelterOfferChoices

# Trust check returned "true"
# Logan asks the player to stay

ShelterOffer: =>
  say paragraph "\"Tell you what,\" the wolf rumbles. \"You seem like you've got your act together, more or less. That's more than I can say for most people. But, you also seem like you're not going to last a day in the city. It's a jungle down there, and it's not going to get any easier if you get yourself tangled up with the wrong crowd.\""

  option "Ask the wolf what exactly he's getting at here.": => await scene @ShelterOfferDirect
  option "Give the wolf a wary look. What's he trying to imply?": => await scene @ShelterOfferWary
  option "Tell the wolf that you're not interested in whatever he's offering.": => await scene @ShelterOfferUninterested
  await do choice

ShelterOfferDirect: =>
  say paragraph "\"What I'm saying is, I could use some help around camp.\" The wolf pauses for a moment, mulling over his words. \"From what you told me earlier, you may have already made an enemy of whoever was running the lab you escaped from. You could use someone with a little more experience in this world to help keep you safe. 'Course, you'd have your share of responsibilities. That's not to say I'd make you do all the work, just that we could split it up in a way that makes this easier for the both of us.\""
  await scene @ShelterOfferOptions

ShelterOfferWary: =>
  say paragraph "\"What's that look for?\" Logan asks with a laugh. \"I'm not asking anything shady. What's I'm trying to get at is that I see an opportunity for both of us to benefit here. You need shelter and protection, and I could use some help around camp."
  say paragraph "You understand what the wolf is asking, but continue to give him a pointed look in the hope that he'll explain himself further. \"Ugh. Listen. Now that you escaped from that lab, chances are someone's going to start looking for you, right? I think you could use someone who's lived in this world to watch your back. All I ask in return is some help with basic tasks to make survival easier for the both of us.\""
  await scene @ShelterOfferOptions

ShelterOfferUninterested: =>
  say paragraph "You tell Logan to stop before he gets ahead of himself. You have a pretty good idea of what he's about to ask, and you're simply not interested."
  say paragraph "\"At least hear me out!\" the wolf growls. \"You escaped from some kind of high-tech lab, and whoever runs or ransacked the place probably has a bounty on your head. Chances are that you're being hunted as we speak. Now, I know enough about bounty hunters to say that you're safer here than a hub like the city. All I ask for in return is a little help around camp.\""
  await scene @ShelterOfferOptions

# All three options lead to this prompt

ShelterOfferOptions: =>
  option "Food, shelter, and a bodyguard? That's a pretty good deal. Accept the wolf's offer.": => await scene @ShelterOfferAccept
  option "You're not so certain. Ask the wolf what's stopping him from taking advantage of you.": => await scene @ShelterOfferSkeptical
  option "Inform Logan that you'll consider it. After all, you haven't even checked the base of the mountain yet.": => await scene @ShelterOfferMaybeLater
  option "Tell him that you're not interested in his offer.": => await scene @ShelterOfferDecline
  await do choice

ShelterOfferAccept: =>
  say paragraph "While there's certainly reason to be hesitant, you're not about to look a gift horse in the mouth. You inform Logan that you'd welcome a place to stay, especially with someone who's proven trustworthy so far. The wolf seems a bit taken aback by your quick assent, but doesn't complain. \"You're pretty easy, aren't you?\" he laughs. You're tempted to jab the wolf's arm, but restrain yourself just in time. \"In all seriousness, I'm glad we see eye-to-eye here.\""
  await scene @LoganOfferAccepted

ShelterOfferSkeptical: =>
  say paragraph "\"Nothing,\" he states plainly. \"You would just have to trust my word that I wouldn't hurt a fly - 'least, not if they don't intend to wrong me first.\" *Intend* to wrong him first? There's something off about the way he phrased that. You cautiously ask Logan if he'd hurt someone based solely on perceived intent."
  say paragraph "\"Oh. Right. You never had to deal with people who wanted to see you dead before, have you?\" You shake your head. \"Figures. I've had my share of it over the years. Big reason why I moved up here in the first place. In some ways, it's easier for me to trust a stranger than someone from back home.\" His last words trail off a bit, and he looks to the side as if he'd rather change the subject."

  option "Don't push him. Everyone's got a hatchet to bury somewhere. Besides, the last thing you need is to make an enemy out of an ally.": => await scene @ShelterOfferNoPress
  option "Press him on the matter. If he's offering you stay here, you need to know exactly what kind of threats you might have to deal with.": => await scene @ShelterOfferPress
  await do choice

ShelterOfferNoPress: =>
  say paragraph "You politely inform Logan that any past transgressions are irrelevant to you. It's none of your business, and you respect the wolf's privacy. Logan nods and gives you an appreciative look. \"So, are you open to joining me, then?\" he asks. You consider it for a moment."

  option "By this point, you trust Logan enough to consider him an ally. Tell the wolf that you'd like to stay with him at his camp.": => await scene @ShelterOfferNoPressAccept
  option "You're still not certain about all this. Tell Logan that you'll consider his offer and get back to him later.": => await scene @ShelterOfferNoPressMaybeLater
  option "You don't think you can shoulder the risk. Tell Logan that you're not interested in joining him here.": => await scene @ShelterOfferNoPressDecline
  await do choice

ShelterOfferNoPressAccept: =>
  say paragraph "After mulling it over, you tell Logan that you're willing to stick around in exchange for his protection. \"That's good to hear. And hey, don't worry, I'm not going to put up a fuss if you ever want to leave. You've got agency over your own life, no matter what.\" You nod to the wolf, his words relieving your concerns."
  await scene @LoganOfferAccepted

ShelterOfferNoPressMaybeLater: =>
  say paragraph "You're still not sure this is a good idea. You haven't seen the city for yourself, so you've only got the wolf's word to go on. There's a non-negligible chance that he's been lying to you this whole time."
  say paragraph "\"What's the hold up?\" Logan asks. You reply honestly, saying that you need some time to think this through. The wolf looks a little annoyed, but nods all the same. \"Fair enough. I'll go ahead and start hanging the food up. You should get going if you want to make it to the city before nightfall.\""
  say paragraph "Taking the hint, you thank the wolf for his hospitality and head on your way. You keep his offer in mind as you return to the mountain trail, still unsure if you made the right decision, but feeling better now that you've negotiated a place to stay if you end up needing one."
  await do pause
  await Player.location = MountainTrail2

ShelterOfficeNoPressDecline: =>
  say paragraph "You tell Logan that you appreciate the offer, but aren't interested in settling down with him. You need to head out into the world yourself and see what awaits beyond these mountain woods."
  say paragraph "The wolf gives you an odd look, somewhere between irritation and disappointment. \"Suit yourself,\" he says. \"Just don't come crawling back to me if you end up getting hurt.\" You tell Logan that you no intention of it, which causes him to smirk and laugh a bit. \"I respect your spirit. Lot more optimistic than I am these days. Still, you'll need more than spirit to keep your head on your shoulders. Don't go trusting strangers you've just met, okay?\""
  say paragraph "You thank Logan for his hospitality one last time before taking your leave. As you return to the mountain trail, you wonder if you should have kept his offer on the table, but there's a chance he wouldn't take too kindly to such a wishy-washy request. In the end, you've just glad you left on amicable terms."
  await do pause
  await Player.location = MountainTrail2

ShelterOfferPress: =>
  say paragraph "Logan shakes his head adamantly. \"It's a sore spot for me. Sorry. I know I'm the one being difficult here, but talking about the past puts me in a foul mood.\" You see the wolf's fists clench by his sides, the muscles under his furry hide starting to strain as he suppresses his anger. \"It's not something you need to worry about. All that crap hasn't mattered since I left the city. Up here, the worst I've got to worry about is the weather or some wild animal walking through my camp.\""

  option "Logan seems quite vulnerable at the moment. Apologize for dredging up the past and accept the wolf's offer.": => await scene @ShelterOfferPressAcceptApologize
  option "Tell Logan that you're willing to accept his offer, but won't hesitate to bail on him if things go sour.": => await scene @ShelterOfferPressAcceptWary
  option "There's a chance that Logan might be lying to you about the city. Inform him that you'll consider his offer, but wish to investigate for yourself first.": => await scene @ShelterOfferPressMaybeLater
  option "Logan seems to have some dangerous skeletons in his closet. Tell him you're not interested in his offer.": => await scene @ShelterOfferPressDecline
  await do choice

ShelterOfferPressAcceptApologize: =>
  say paragraph "You apologize to the wolf for dredging up a past. He gives you a somewhat odd look in response, but nods. \"Buried. Yeah, that's one way to put it. I'd rather just forget about it completely.\" His words come as a soft, sad rumble. You tell the wolf not to worry about it and inform him that you're open to sticking around, provided he holds true to his end of the bargain. \"And you're sure about that?\" he asks, straightening himself. You inform Logan that you're positive."
  await scene @LoganOfferAccepted

ShelterOfferPressAcceptWary: =>
  say paragraph "Cautiously, you inform the wolf that you are open to his offer, but only under the condition that his past doesn't come back to bite you. \"Of course,\" Logan says. By the tone of his voice, he doesn't sound so certain. You glare at him for an honest answer. \"Look, I can't promise it won't crop up, but I'll do my best to leave you out of it if it does.\" Satisfied with his answer, you give the wolf a terse nod and ask him what needs to be done."
  await scene @LoganOfferAccepted

ShelterOfferPressMaybeLater: =>
  say paragraph "You politely explain that you'll keep his offer in mind, but need to confirm for yourself whether he's been telling the truth or not. \"Don't worry about it. You're just doing your due diligence.\" The wolf chuckles to himself, though he seems a bit dismayed. Sensing this, you reassure Logan that you appreciate his help so far. \"Ah, it's no skin off my back. I'm just doing my part to be a good samaritan. World needs more folks like that.\" Ready to leave, you say your goodbyes to the friendly wolf-man and return to the trail. You wonder to yourself whether or not you made the right call, but an abundance of caution is almost always preferable to to the alternative."
  await do pause
  await Player.location = MountainTrail2

ShelterOfferPressDecline: =>
  say paragraph "You tersely inform Logan that you have no interest in accepting his offer if he refuses to keep you in the loop about something that could put your life at risk. \"And barging into the city won't?\" Logan balks. \"Why do you think I'm roughing it in the mountains in the first place? It's high hell down there. You have no idea what you're getting yourself into.\" You respond that you'd rather take that risk than deal without whatever he's trying to hide. \"Look, I get it, and that's your call, but don't say I didn't warn you, okay? Just keep your head down and don't trust strangers.\""
  say paragraph "As you say your goodbyes to Logan and head back to the mountain trail, you feel reasonably confident that you made the right call. There is no rational basis for living with someone who refuses to be honest with you, and you'd rather not tempt fate by shacking up with a complete stranger. The more you think about it, the more naive and risky accepting his offer seems. In the end, you're just glad you made it out of there without a more serious altercation."
  await do pause
  await Player.location = MountainTrail2

ShelterOfferMaybeLater: =>
  say paragraph "You tell Logan that you'll keep his offer in mind, but wish to check out the city for yourself first. \"I don't blame you,\" Logan responds. \"It'd be... pretty naive to just take my word for it.\" Curiosity piqued, you ask Logan why he'd make an offer he thinks would be naive to accept. \"Let me rephrase that: Whether you choose to keep away from the city now or after you've been there doesn't really matter - the outcome's still the same. The only difference is *where* you're putting yourself at risk.\""
  say paragraph "You respond that what he's saying doesn't make sense. You could always survey the city from afar to verify the truth of his claims. At no point do you need to put yourself directly in harm's way to determine whether or not he's been lying to you. \"Yeah, I guess that makes sense,\" the wolf says. \"Either way, I'm just offering an olive branch. Accepting it up-front is still the right thing to do, in my eyes, even if it's naive. Does that makes sense?\" You nod to the wolf. \"Alright. Had me worried there. I'm not very good at social stuff, so sometimes it's hard for me to explain things.\" You assure Logan that he's got nothing to worry about, which he answers with a grateful nod."
  say paragraph "Well-fed and satisfied with your little talk, you thank the wolf for his hospitality one last time before taking your leave. As you make your way back to the mountain trail, you mull over Logan's words in your head: \"*where* you're putting yourself at risk.\" Was he simply referring to the inherent risk of trusting someone, or was he implying that there was something about himself in particular that was dangerous? Either way, you leave with a sense of unease about the whole situation."
  await do pause
  await Player.location = MountainTrail2

ShelterOfferDecline: =>
  say paragraph "You state in no uncertain terms that you're not interested in joining Logan at his camp. The wolf seems dismayed by your decision, but doesn't press the issue. \"That's fine. I appreciate the honesty.\""
  say paragraph "Curiosity piqued, you ask Logan if he's ever asked the question to someone else before. \"Nope. Folks these days have no interest in cooperating. Lots of folks are taught survival of the fittest from a young age, but don't know that it's all about finding a niche, not being selfish to a fault.\" Logan chuckles dryly and shakes his head. \"You're fresh meat around here, so you probably haven't seen what other people are like yet. Hard to blame you for being distrustful without a point of comparison.\""
  say paragraph "Logan looks over his shoulder, then turns back to you with a tense expression. \"'Fraid I need to get going, though. I wish you safe travels, and don't be scared to show your face around here if you find the city too much for your tastes.\" You respectfully nod to the wolf, say your goodbyes, and return to the mountain trail, feeling better with some food in your stomach and a friendly contact to fall back on."
  await do pause
  await Player.location = MountainTrail2

# Player accepted Logan's offer to stay at his camp

LoganOfferAccepted: =>
  await do pause
  say paragraph "\"I guess first order of business is getting all the food in a bundle and tying it up to a tree.  Don't want the scent to attract trouble. Why don't you sit tight while I grab everything we'll need?\" You nod to the wolf and find a seat as instructed, making yourself comfy in his camping chair."
  say paragraph "Logan disappears into his tent. After a minute, he reemerges with a pack of supplies, a bundle of rope, and a carabiner. The lupine pauses to close his eyes and sniff at the air. \"Downwind should be... that-a-way,\" he comments, pointing off into the treeline. \"Now follow me. You need to learn how to do this stuff if you want to be self-sufficient.\""
  say paragraph "Heeding the wolf's advice, you stand up to join him on a walk through the woods. Logan doesn't say a word during the trip, leaving your thoughts to drift to the pristine wilderness that surrounds you. Before long, he slows to a halt in front of a tall, broad tree. \"This should do. Here, hold this for me,\" the wolf rumbles, barely giving you time to react as he pushes the sack of food into your arms."
  say paragraph "You watch Logan curiously as he threads the rope through the metal carabiner and ties a simple-looking knot. Looking up toward a branch, he gives a few twirls to warm up before throwing the weighted end toward it. The rope drapes over the branch, creating a crude form of pulley system to hang your shared supplies from. Logan uses both hands to lower the dangling end towards him, then grabs the metal clip as soon as it's in reach."
  say paragraph "\"Pretty straightforward, yeah? Almost finished here,\" the wolf assures you. He fastens the pack to the carabiner with a D-ring before tugging on the rope to hoist it up off the ground. Once well out of reach, Logan ties the loose end around the tree's trunk and cinches it tight with another simple knot."

  option "Ask how often you'll need to hang up and retrieve food.": => await scene @FoodHangFrequency
  option "Ask if he learned to do this from experience.": => await scene @FoodHangExperience
  option "Ask if any of the wildlife turned into animal people, too.": => await scene @FoodHangWildlife
  option "Ask what's next.": => await scene @FoodHangContinue
  await do choice

FoodHangFrequency: =>
  say paragraph "\"I always hang it up after dinner and take it down for breakfast,\" Logan explains. \"You're supposed to keep it hung up whenever you're not eating. I usually can't be bothered, but I heard some rustling while we were at camp and didn't want to take any chances.\""

FoodHangExperience: =>
  say paragraph "\"Nope. Learned this stuff from books before I even set foot on the mountain. Never even seen a bear out here, and I hope to keep it that way.\""

FoodHangWildlife: =>
  say paragraph "Logan gives you an incredulous look. \"Not that I know of,\" he states, sounding more confused than anything. \"I've seen plenty of the critters that old-world books talk about, but I never heard of them being warped into man-like forms. Seems like only humans got changed, far as I'm aware.\""

FoodHangContinue: =>
  say paragraph "\"We head back to camp. Nothing left to do but settle down for the evening and talk shop 'bout tomorrow.\" After checking the ties one last time, Logan turns from the tree to lead the way back again. Not wanting to stray too far the wolf, you follow him closely. The trip is dull without conversation, but thankfully uneventful, and you soon arrive at Logan's campsite."

  say paragraph "The wolf gives a look over the shoulder to make sure you're still with him before all but falling back into his camping chair. Making himself comfortable, he kicks his legs up on a stump-turned-footrest and crosses his arms behind his head. You find a seat in the chair opposite the wolf and lean forward, looking at him meaningfully in search of that conversation he was wanting to have."

  say paragraph "\"Hmn? Oh, right. Let's get down to brass tacks. Life out in the boonies isn't going to be a cakewalk. You'll need some to share the load. I'm still going to do the brunt of the work around here, but I won't hesitate to boot you out if you start acting like a freeloader.\""

  say paragraph "You ask what exactly Logan will need help with around camp. \"Oh, plenty,\" the wolf says. \"Chopping firewood, setting and checking traps, stowing food, keeping eyes out for any would-be raiders, and making supply runs before we run out. Speaking of which, we'll also need to catch you up on local customs before you make any of those... what's it called, fox paws? I don't know, some kind of fancy old word for fuck-ups.\""

  say paragraph "\"Either way, this your lucky day. You've got free reign to loaf around camp since I've...\""
