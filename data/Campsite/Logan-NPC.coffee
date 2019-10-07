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
  await scene @SharingSupplies

SupplyOfferDecline: =>
  say paragraph "The wolf man gives you an incredulous look. \"Well, I guess I can't blame you. You must be all kinds of paranoid after everything you just heard. Still, you really shouldn't look a gift horse in the mouth. I think you'll feel a *lot* better with something in your belly...\""
  option "Insist.": => await scene @SupplyOfferInsist
  option "Relent.": => await scene @SupplyOfferRelent
  await do choice

SupplyOfferInsist: =>
  say paragraph "\"Suit yourself,\" Logan says dismissively. \"I'm not going to claim responsibility when someone finds your body on the side of the road.\" His comment strikes you as uncharacteristically dark, only affirming your growing distrust of the man. With your hunger still a pressing concern, you head on your way, making sure to look over your shoulder every now and then to make sure you're not being followed."

SupplyOfferRelent: =>
  say paragraph "Oh, what the hell. There's no point in being difficult here. You let Logan know that - fine - he can go ahead and give you some of his supplies if he wants. The wolf smirks to himself at the news. \"Great,\" he rumbles. \"I'll be right back.\""
  say paragraph "The wolf disappears inside of his tent. You hear the rustling of supplies being moved, but can't see exactly what he's up to. The pit in your gut grows more prominent as you anxiously wait for him to find what he's looking for. After a few seconds, he reemerges with a large canteen and two MREs."
  say paragraph "On one hand, you're relieved that he wasn't just biding time to look for a knife or something. On the other, you're still concerned about the contents of the opaque canteen and most-likely-expired MREs. Noticing your expression, Logan gives you a knowing look. \"Food's food. You can't afford to be a picky eater these days. Let's dig in.\""
  await do pause
  await scene @SharingSupplies

SupplyOfferFlee: =>
  say paragraph "You may have spilled your guts to him already, but you're not about to let that become literal. You nod your assent to the wolf, wait for him to disappear halfway into the tent, then turn heel to sprint from the campsite as fast as your feet will carry you. You take a sharp turn once past the clearing to run down the mountain pathway, determined to put as much distance between yourself and the imposing wolf man. You hear Logan call after you, but he doesn't seem to pursue, his voice growing distant before trailing off completely. Exhausted, you find a seat on a nearby stump to catch your breath and recenter. It may have been presumptuous to beat tracks without more concrete reasons to suspect him, but hey, better safe than slaughtered by a werewolf."

# TODO: talk more about the world maybe? idk
# Song advice: Probably want to focus on the player asking for basic things. Landmarks, how to survive, etc.
# Logan gives you a bit of supplies but is otherwise not really going to help you whatsoever

SharingSupplies: =>
  say paragraph "Placeholder."
  take "Water Bottle"
  take "Food"
  say paragraph "\"Here's a bit of supplies. Bye now.\""
  do end
