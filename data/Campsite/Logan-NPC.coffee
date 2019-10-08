sex: "male"
met: false

Introduce: =>
  @met = true
  await scene @LoganIntroduction

LoganIntroduction: =>
  say paragraph "You wait at the campsite for a while. Your thoughts drift back to the laboratory again, wondering what exactly happened to you. A sudden noise from behind you jars you back to reality. When you turn to face the source, you can only stare in bewilderment at the sight of a large, bipedal wolf walking toward you. \"Hey!\" the creature calls out. \"What do you think you're doing? Hands where I can see them!\""
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
  say paragraph "Worried that telling him everything about your situation might make you more suspicious, you omit the details of how you got here and say that you were just looking for supplies. \"A thief, then?\" the wolf says brusquely, a smirk crooking his muzzle as he looks you up and down. \"No, you don't look the type. 'Sides, you'd have already stuffed your pockets and ran off if you were. No thief's going to loiter around unless they've got a screw loose in their head.\""
  say paragraph "On the spot now, you try to come up with some kind of rebuke, but the wolf just shakes his head at you. \"Don't even think about climbing out of the  hole you just dug for yourself. You're hiding something - I can tell. Now out with it, 'fore I kick your ass out of my camp.\""
  say paragraph "Spurred on by the pit of hunger in your stomach, you relent to the lupine's stubborn insistence and admit that - yes - you weren't being entirely honest with him before. \"That's a nice way to sugar-coat it, but sure, I'll let it pass,\" he chides. You go on to explain that you have no idea where you are or how you woke up here. "
  await scene @ExplainPresenceContinuation

ExplainPresenceLie: =>
  say paragraph "Before you even finish your sentence, you can see the wolf's stone-faced expression start to falter. He snickers to himself for a moment before breaking out in rowdy, bellowing laughter. You stammer a response, but can't get a word in edgewise. A paw-like hand suddenly slams hard against your back. \"Hoo boy, that's the dumbest lie I've heard in years!\" he teases. \"You've got a lot of nerve to spin a tall tale like that! I respect your guts, but fuck me sideways, you're the worst liar I've ever seen!\""
  say paragraph "The wolf continues to ignore you as he wipes tears of laughter from his eyes. \"Hah... Save your breath. I can tell you're a good one. Saw you just standing here like a chicken with your head cut off 'fore I called out. You don't need to fabricate some fantasy to prove you aren't some thief.\" Spurred on by the pit of hunger in your stomach, you relent to the lupine's jabs and admit that - yes - that was a pretty terrible lie. Truth be told, you have no idea where you are or how you woke up here. "
  await scene @ExplainPresenceContinuation

ExplainPresenceLeave: =>
  say paragraph "You firmly tell the wolf that you'd rather not say. You'll just be right on your wa-"
  say paragraph "\"No, you're not going anywhere,\" the wolf man growls, quickly reaching out to take hold of your arm and pull you toward him. Standing right in front of his formidable form, you're forced to crane your head back to meet his icy gaze. \"Nobody waltzes through my territory without answering me. What were you doing in my camp?\""
  say paragraph "Wincing from the pressure of his grip, you whine out that you'll tell him, but only if he lets go of you. \"Not happening,\" the wolf replies sternly. \"My camp, my rules. Either settle down and speak or I'll start twisting your arm until you do.\" He punctuates this by turning his wrist ever-so-slightly, sending a twinge of pain through your entire arm. You cry out and relent, the pain and the hunger growing too much to bear."
  say paragraph "You admit sullenly that you have no idea where you are or how you woke up here. "
  await scene @ExplainPresenceContinuation

ExplainPresenceContinuation: =>
  say "The last thing you remember... well, you must have struck your head or something, because you can't recall anything about the night before. All you remember is waking up in a nearby building and stumbling upon his camp while exploring the area."
  say paragraph "He eyes you for a moment, then relaxes his expression. Seeing this, you feel the tension in your muscles abate and let out a quiet sigh of relief. \"You seem strange, but genuine. The name's Logan. I've been living on this mountain for years. Nobody else bothers me up here. Forgive me for being so suspicious - my last encounter with another person was not so pleasant.\""
  say paragraph "You ask him how he managed to stay hidden all this time. How is it possible that the existence of a living, breathing werewolf hasn't been uncovered by now? Is he really that good at hiding his tracks, or is there some kind of government cover-up going on behind the scenes?"
  say paragraph "Logan looks extremely confused. \"News? Government? What are you on about? There hasn't been a government for decades. Did you just wake up from a coma or something?\""

  option "What?": => await scene @BurstExplanation
  option "No!": => await scene @BurstExplanation
  option "Wait, what year is it?": => await scene @BurstExplanation
  await do choice

BurstExplanation: =>
  say paragraph "Shocked, he ponders for a few seconds and taps his finger to his snout. \"You really don't know? Oh... How do I explain this all? It's been a couple of decades since the Burst. No clue exactly how long since then. There was this global crisis and almost everyone disappeared off the face of the planet at the same time. Like that one movie. And the survivors, they turned into big furry creatures like me. And smaller ones, too, I guess.\""
  say paragraph "The wolf man gives you a sheepish look. \"Sorry if that's confusing. Don't really talk to people much, so I'm not much of a storyteller.\""

  option "You're talking to a werewolf. Anything is possible. Say that you believe him.": => await scene @BurstExplanationBelieve
  option "Hesitate. He may be trying to trick you. Tell him you'll believe it when you see it.": => await scene @BurstExplanationWary
  option "Growl that there's absolutely no way in hell anything he just told you is true!": => await scene @BurstExplanationIncredulous
  option "Stare at him blankly.": => await scene @BurstExplanationStare
  await do choice

BurstExplanationBelieve: =>
  say paragraph "After everything that's already happened to you, what's the harm in suspending your disbelief one more time? Besides, it'd make sense that no one would report on a goddamn werewolf if everyone was turned into beasties of different stripes and sizes. Logan looks relieved that you trust him, albeit not completely at ease."
  say paragraph "\"Might want to be careful out there,\" he rumbles. \"Lots of folks won't be as honest with you. If you start buying the wrong crowd's crap, you could end getting hurt - or worse. Just take it from me.\" You reflexively assure him that you're not so gullible, but he doesn't look convinced. \"Please, watch your back out there, okay? I'd hate to see you get hurt.\" His concern seems genuine. You nod your assent."
  await scene @SupplyOffer

BurstExplanationWary: =>
  say paragraph "\"Fair enough. I respect a skeptic,\" he admits coolly. \"Just don't come running back to me if you're not ready for what's down there. Some of those furry folks won't hesitate to take advantage of you.\" Wary of the connotations, you ask him what he means. \"I mean exactly what I said,\" the wolf growls, \"so watch yourself out there - seriously.\" You nod at his warning."
  await scene @SupplyOffer

BurstExplanationIncredulous: =>
  say paragraph "The wolf laughs in response. \"I'm not asking you to put your faith in me - it's just history. What happened, happened. You can park your ass at the foot of the mountain and see for yourself.\" He seems genuine enough, but between the emotional shock of waking up in a laboratory, meeting a real-life werewolf, and now *this* story, you can't help but remain incredulous, if for nothing else than to cling to your precious sanity."
  await scene @SupplyOffer

BurstExplanationStare: =>
  say paragraph "Logan remains silent for a long moment, then shakes his head. \"I know. It's a lot to take in. Just remember that it's not the same world out there. Don't go wandering around thinking people will just ignore you. You're fresh meat - opportunity - and that's something people are going to take advantage of.\" You break from your befuddled blanking to ask him what he means. \"I mean it quite literally. Don't let your guard down.\" Worry joins hunger in your gut as you both fall silent again."
  await scene @SupplyOffer

SupplyOffer: =>
  say paragraph "\"Hey, before you go,\" Logan turns from you to point toward his tent, \"you're gonna need something for the road. I can hear your stomach growling from all the way over here. Let me slip inside and grab some food and water. You sit tight, okay?\""
  option "He's been trustworthy so far. Stay where you are.": => await scene @SupplyOfferTrusting
  option "You've got a bad feeling about this. Politely decline.": => await scene @SupplyOfferDecline
  option "There is no way this is going to end well. *Run!*": => await scene @SupplyOfferFlee
  await do choice

SupplyOfferTrusting: =>
  say paragraph "Given that he hasn't done anything to slight you so far, you tacitly nod your assent to Logan. The wolf man all but beams at the news. \"Great!\" he rumbles. \"I'll be right back. Shouldn't take long at all.\""
  say paragraph "The wolf disappears inside of his tent. You hear the rustling of supplies being moved, but can't see exactly what he's up to. You have to admit that the excited wag of his tail is pretty cute, but don't let it distract you from the pit in your gut. After a few seconds, he reemerges with a large canteen and two MREs in hand."
  say paragraph "Try as you might, you have trouble hiding the concern in your face about the contents of the opaque canteen and ages-old MREs. Logan picks up on your expression and gives you sympathetic look. \"Food's food. You can't afford to be a picky eater these days. Let's dig in.\""
  await do pause
  await scene @SharingCanteen

SupplyOfferDecline: =>
  say paragraph "The wolf man gives you an incredulous look. \"Well, I guess I can't blame you. You must be all kinds of paranoid after everything you just heard. Still, you really shouldn't look a gift horse in the mouth. I think you'll feel a *lot* better with something in your belly...\""
  option "Insist.": => await scene @SupplyOfferInsist
  option "Relent.": => await scene @SupplyOfferRelent
  await do choice

SupplyOfferInsist: =>
  say paragraph "\"Suit yourself,\" Logan says dismissively. \"I'm not going to claim responsibility when someone finds your body on the side of the road.\" His comment strikes you as uncharacteristically dark, only affirming your growing distrust of the man. With your hunger still a pressing concern, you head on your way, making sure to look over your shoulder every now and then to make sure you're not being followed."
  await Player.location = MountainTrail2

SupplyOfferRelent: =>
  say paragraph "Oh, what the hell. There's no point in being difficult here. You let Logan know that - fine - he can go ahead and give you some of his supplies if he wants. The wolf smirks to himself at the news. \"Great,\" he rumbles. \"I'll be right back.\""
  say paragraph "The wolf disappears inside of his tent. You hear the rustling of supplies being moved, but can't see exactly what he's up to. The pit in your gut grows more prominent as you anxiously wait for him to find what he's looking for. After a few seconds, he reemerges with a large canteen and two MREs."
  say paragraph "On one hand, you're relieved that he wasn't just biding time to look for a knife or something. On the other, you're still concerned about the contents of the opaque canteen and most-likely-expired MREs. Noticing your expression, Logan gives you a knowing look. \"Food's food. You can't afford to be a picky eater these days. Let's dig in.\""
  await do pause
  await scene @SharingCanteen

SupplyOfferFlee: =>
  say paragraph "You may have spilled your guts to him already, but you're not about to let that become literal. You nod your assent to the wolf, wait for him to disappear halfway into the tent, then turn heel to sprint from the campsite as fast as your feet will carry you. You take a sharp turn once past the clearing to run down the mountain pathway, determined to put as much distance between yourself and the imposing wolf man. You hear Logan call after you, but he doesn't seem to pursue, his voice growing distant before trailing off completely. Exhausted, you find a seat on a nearby stump to catch your breath and recenter. It may have been presumptuous to beat tracks without more reason to suspect him, but hey, better safe than slaughtered by a werewolf."
  await Player.location = MountainTrail3

# TODO: talk more about the world maybe? idk
# Song advice: Probably want to focus on the player asking for basic things. Landmarks, how to survive, etc.
# Logan gives you a bit of supplies but is otherwise not really going to help you whatsoever

SharingCanteen: =>
  say paragraph "Before you have a chance to reconsider, Logan unscrews the top of his canteen and passes it to you. \"Drink. All of it.\" You tentatively take the bottle from him and give it a little swish. Half-full. The water inside doesn't have any noticeable discoloration or odor. \"Well, what are you waiting for?\" the wolf asks, coaxingly."
  say paragraph "Your lips feel dry, but should you really go through with this? Logan stares at you expectantly. You're running out of time to make a decision."

  option "Put your inhibitions aside and take a hearty swig.": => @CanteenEager
  option "Take a small sip first.": => @CanteenHesitant
  option "Request that Logan have a drink before you.": => @CanteenLogan
  option "Decline to drink and pass the canteen back.": => @CanteenDeclined
  await scene @SharingMREs

CanteenEager: =>
  say paragraph "What's the worst that happen, you figure. You crane your neck back and swallow the contents whole. The water inside is cool and pure, coating the back of your throat as you drink it all down. By the time you finish, Logan meets your gaze with a smile that doesn't quite reach his eyes. He holds a hand out to you, curling a finger to motion you to return the canteen. Feeling refreshed, you pass it back to the wolf and let out a quiet sigh."
  say paragraph "\"Tastes pretty good, right?\" Logan asks with a soft chuckle. \"You must have been pretty parched from the way you just inhaled that.\" You tell him you appreciate the drink, but wonder where he got it from. \"Rainwater, mostly. Dry seasons, I get it from clean, running streams. I've got a makeshift purifier not far from here to drip it through just in case.\" He seems to have thought this through. You thank him for the explanation and lick your lips, feeling a good deal better after hydrating, but still quite hungry."

CanteenHesitant: =>
  say paragraph "You don't necessarily want to insult your host, but you're not fully convinced that the contents haven't been tainted in some way, either. Rather than risk annoying him, you take a cautious first sip. The water is cool, but not icy, and you don't taste anything out of the ordinary. \"That all?\" Logan asks. \"You're still going to be parched if you don't drink up.\" He's right. Your thirst is nowhere near slaked. Still, you can't help but wonder if making you drink this has some kind of ulterior motive behind it."

  option "Drink down the risk of the canteen's contents.": => @CanteenContinued
  option "Hand the canteen back.": => @CanteenStropped

CanteenContinued: =>
  say paragraph "You hesitate for a moment, but eventually relent. If it hasn't made you feel off yet, chances are a little more of the fluid won't do any significant harm. Watching the wolf pensively, you drink down the rest. Logan looks visibly relieved. \"Good. I get that you're still on edge, but a little water won't kill you. I even go through the trouble of purifying it just to be safe.\" You wipe your mouth and ask him what he means by that. \"I've got a filter system I made myself a little deeper in the woods. That water comes from rain and little streams, which isn't always the cleanest.\" You nod in response. He seems to have thought this through, and his transparency assuages your distrust."

CanteenStopped: =>
  say paragraph "You err on the side of caution and hand the canteen back to the wolf. Logan looks at you incredulously. \"Well, can't say I blame you,\" he admits, visibly disappointed. \"No harm in being cautious around strangers, 'specially someone who looks like me.\" He might be self-deprecating to garner your sympathy, but there's a mote of truth to his words as well. A man-sized wolf isn't exactly the most trustworthy figure around."

CanteenLogan: =>
  say paragraph "Even though there's no obvious signs of contamination, you just can't be certain that the canteen's contents haven't been tainted in some way. You'd rather risk the ire of your mutated host than drink something which may or may not have been poisoned. Logan looks at you incredulously when you hand the canteen back to him, only to glower at the suggestion that he drink from it first."
  say paragraph "\"Absolutely not,\" the wolf man growls. \"I've already had half before you arrived. It's only fair that someone more in need can have the rest. Besides, I can always gather more from rain water and streams.\" You argue that you're validated in your suspicions. There *are* such things as clear, odorless poisons, and you were not witness to him gathering the water at all. The risk you'd be exposed to far outweighs the burden of being thirsty for a few more hours."
  say paragraph "\"Poison? What the hell are you on about?\" Logan scoffs. There's a pregnant pause between the two of you before the wolf looks down with an exasperated sigh. \"I can't fault you for being suspicious, but I'm not some conniving bastard. Please, just have a drink. I don't want you to run yourself dry because you don't have anyone around who you can trust.\""

  option "If he's so intent on proving he's trustworthy, demand that the wolf drinks from the canteen first.": => @CanteenLoganDemand
  option "He seems genuinely offended by your distrust. Maybe there's no ulterior motive after all? Relent and take a swig.": => @CanteenLoganRelent
  option "Staunchly refuse to drink.": => @CanteenLoganRefuse

CanteenLoganDemand: =>
  say paragraph "Logan rolls his eyes. \"If it'll make you feel better about it,\" he grumbles. The wolf says something along the lines of \"bottoms up\" as he tips the canteen back and drinks. Once finished, he hands the bottle back to you with a look of unaffected indifference. \"See? Nothing to worry about. Purified water, fresh from recent rainfall.\""
  say paragraph "Suspicious somewhat alleviated, you cautiously drink the canteen, mindful to avoid the part of the ridge that just came into contact with the werewolf's mouth. The water is cool and clear, a soothing balm that eases the tension in your muscles. By the time you've swallowed every last drop, Logan looks noticeably relieved. \"There. You didn't have to make it so difficult, but I'm glad you're feeling better now.\" You wipe your mouth with your arm and thank him for the drink, though the hunger in your gut is only growing more prominent."

CanteenLoganRelent: =>
  say paragraph "Everything about the way Logan is reacting seems to reach his eyes. There's no way in hell that his umbrage isn't being genuine, and you're not exactly keen on making an enemy out of someone so soon. Rather than risk being injury for pushing his buttons, you tell the wolf that you trust him and ask for him to return the canteen. \"Alright,\" he rumbles. Logan still seems upset, but hands the bottle back to you without word."
  say paragraph "You look down into the canteen. The fluid inside is clear and odorless. Nothing about the way it swishes in its container suggests there's anything other than pure, clean water. Worries somewhat alleviated, you down it back. It's cool and fresh, soothing your throat as you drink it all. Once you've had your fill, you look back at Logan, who seems visibly relieved. \"Hope that hit the spot,\" he rumbles, and you nod."

CanteenLoganRefuse: =>
  say paragraph "If the wolf is deflecting and feigning umbrage, you have a pretty good sense that something is awry with the contents of the canteen. Besides, you can't be certain if there's any bodily fluids on or inside the bottle. Who knows what kind of bacteria it could be carrying? Worse, what if his condition is infectious? You shudder inwardly at the thought and shake your head at him."
  say paragraph "Logan looks frustrated with your insistence as he screws the lid back on the canteen. \"Suit yourself. Can't say I'm surprised that you don't trust me, but at least I offered.\" You sigh profusely and tell the wolf you didn't mean an anything by it. You just have your own skin to worry about, and you can't put your faith in strangers, no matter who they are. \"It's fine. Forgive and forget,\" the wolf grumbles. He looks genuinely hurt, but the skeptic inside of you is telling you to remain wary."

CanteenDeclined: =>
  say paragraph "You politely decline a drink from the canteen. \"What? Why?\" Logan asks, a confused look on his muzzle. You explain that he's still a stranger, and there's any number of things he could have done to spike or contaminate the contents without your knowledge. Moreover, you have no idea whether or not residue of his saliva could infect you with whatever caused him to change in the first place. As far as you're concerned, his word is moot on the matter until you see the effects for yourself firsthand."
  say paragraph "\"That's... fair,\" the wolf grumbles. He seems annoyed by your decision. \"But, just so you know, I've done nothing to the water inside except purify it after collecting it. Also, what *I* have isn't something you can just passively 'catch', if that makes sense. Takes intent to pass it along.\" You'd ask him what he means by that, but reckon he is just falling into the trappings of an urban myth. You know enough about infections to understand that aspects like \"energy\" and \"mindset\" have jack-shit to do with a strictly physical process. Logan picks up on your doubt, but doesn't push the subject further."

SharingMREs: =>
  say paragraph ""