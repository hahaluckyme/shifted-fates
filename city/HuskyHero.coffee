export HuskyHero = new class extends Scenario
  active: true

  # CHOICES

  Start: =>
    say paragraph "While wandering through the city, you end up passing by one of the seedier-looking neighborhoods. You're about to give it a wide berth when you hear an agonized cry from down the street. Sparing another glance, you spot a fox woman writhing in protest beneath a muscular male husky, the canine growling aggressively as he pins her arms to the ground and kicks apart her legs. Her cries grow louder when the husky spears his stiff doggy cock into her folds, his hips rocking hard and fast as he plows into her unwilling form."

    await choice =>
      "Fight him!": =>
        say @FightText
        await scene @Combat
      "Distract him and run!": =>
        say @DistractText
        await scene @Combat
      "Hide and watch": =>
        say @HideText
        await scene @Sneak
      "Skulk away...": =>
        say @SkulkText
        await scene @Sneak

  Combat: =>
    say paragraph "The city may have gone to hell, but you're not about to let someone be brutally raped without intervening. After taking a deep breath to steel your resolve, you run up to the husky and kick the dog's side as hard as you can. He lets out a pained yelp at this, quickly shoving the fox girl off his length and turning to growl at you. Seizing the opportunity, his prey scrambles to her feet and runs away with frightened whimpers, not sparing her rescuer another glance in her panic. "
    say paragraph "Standing upright, the canine proves much taller than you anticipated. His broad shoulders and muscular stature speak of someone who has spent years honing their physique. You can see every little ripple of tension beneath that dense, cream-colored fur as he glowers at you. After a moment, the sharp scowl on his muzzle melts into a self-satisfied smirk as he sizes you up. \"You picked the wrong fight,\" the husky rumbles darkly. \"I'm gonna enjoy breaking you, bitch.\""

    await choice =>
      "Overpower him (STR)": =>
        say @OverpowerText
        await roll20 str, =>
          0: =>
            say @OverpowerLostText
            await scene @LostFight
          25: =>
            say @OverpowerWonText
            await scene @WonFight
      "Outmaneuver him (DEX)": =>
        say @OutmaneuverText
        await roll20 dex, =>
          0: =>
            say @OutmaneuverLostText
            await scene @LostFight
          20: =>
            say @OutmaneuverWonText
            await scene @WonFight
      "Bolt away (DEX)": =>
        say @BoltAwayFromFightText
        await roll20 dex, =>
          0: =>
            say @BoltAwayFromFightLostText
            await scene @LostFight
          20: =>
            say @BoltAwayFromFightWonText
            await scene @Escaped

  Sneak: =>
    say paragraph "You skulk away because you're probably going to die if you get on the wrong side of that husky."

    await choice =>
      "Bolt away (DEX)": =>
        say @BoltAwayFromHidingText
        await roll20 dex, =>
          0: =>
            say @BoltAwayFromHidingLostText
            await scene @LostFight
          20: =>
            say @BoltAwayFromHidingWonText
            await scene @Escaped
      "Sneak away (DEX)": =>
        say @SneakAwayText
        await roll20 dex, =>
          0: =>
            say @SneakAwayLostText
            await scene @LostFight
          20: =>
            say @SneakAwayWonText
            await scene @Escaped

  # OUTCOMES

  LostFight: =>
    say paragraph "\"Well, well. Looks like someone's going to have to be doing double duty when we get back to the house.\""
    await do pause

    await do end
    # await Player.location = HuskyHouse

  WonFight: =>
    await do end

  Escaped: =>
    await do end

  # TEXT

  FightText: =>
    say paragraph "Fight!"

  DistractText: =>
    say paragraph "Distract!"

  HideText: =>
    say paragraph "Hide!"

  SkulkText: =>
    say paragraph "Skulk!"

  OverpowerText: =>
    say paragraph "Overpower him!"

  OverpowerLostText: =>
    say paragraph "Swallowing your fear, you brace yourself for a forward leap to tackle the large husky male. The force of the impact is enough to leave him on unsteady footing, and some extra clumsy wrestling drags him down to the ground with you. You straddle the canine's hips and start to wail away at his face with frenzied punches. Try as you might to subdue him, however, the male finds an opening to pull your chest against his and rolls over on top of you, turning the tables by pinning you beneath his bulk."
    say paragraph "\"Stupid whore!\" the husky snarls from above, his paws pressing your arms to the pavement and preventing you from writhing free. His combined weight and strength are too much for you to contest, but you thrash and cry out all the same, hoping against hope that you'll get someone's attention. Your cries are suddenly muffled when that long canine snout presses firm to your lips, silencing your efforts with a deep French kiss, his broad doggy tongue entwining with yours as it swirls around in your throat."
    say paragraph "The strangely arousing taste of kiss eventually overpowers what will you had to voice protest, your fierce struggling fading into half-hearted squirming. Only once you fall completely limp, short of breath and half-hard beneath him, does your attacker finally relent, panting hotly against your face while you look up at him bitterly. \"See? It's not so bad once you just give in. You'll be a good pack bitch in no time,\" he teases, and you shudder in a mix of revulsion and excitement at the thought."

  OverpowerWonText: =>
    say paragraph "Intent on giving the husky a lesson he won't soon forget, you jump forward and tackle him before he has a chance to gain the upper hand. The force of the impact startles the dog and knocks him flat on his back. You immediately wail away at his muzzle with harsh, fast punches. He growls and attempts to shove you off the whole time, but you have none of it, continuing to pummel his head until his snarls degrade into fearful whimpers and pained cries. Only once the last ounce of machismo is forcibly knocked from the hurting husky's head do you relent, the canine shivering and raising his arms in front of his face before you can do any irreparable damage."
    say paragraph "Satisfied with the bad dog's scolding, you rise to your feat, breathing heavily from the adrenaline and exertion. The husky doesn't wait an instant to scamper off, running on all fours like the cowed dog he is. Once he's out of sight, you let out a quiet sigh of relief and begin to wander back to a safer area, hoping you don't have to play hero like this again any time soon. You can't help but feel like maybe you went overboard, but if that's what it takes to protect "

  OutmaneuverText: =>
    say paragraph "Outmaneuver him!"

  OutmaneuverLostText: =>
    say paragraph "You don't even see the husky's fist before it's too late. In one swift swing, you're knocked flat on your ass, your vision swimming from the force of the impact. Ringing erupts in your ears as the canine crouches down to look into your eyes, his cocksure smile and rock-hard cock spelling out his intent. Dazed as you are, it's all too easy for the dog to guide you down onto your back with a single firm, imploring press of his handpaw."
    say paragraph "You look up at the sky without word. Some part of you is worried you might have a concussion, another screaming to lift yourself up and run away before it's too late. Your head, on the other hand, is in far too much pain to want to move at all, content to just lie here and let whatever happens wash over you. He beat you fair and square, you rationalize dimly, seeking any excuse to limit the ache in your skull."
    say paragraph "The husky leans over you, his breath bathing your face in warmth as he stares deeply into your eyes. \"Thought you were some hot shit, didn't ya?\" he teases. \"Don't kid yourself. You're nothing but another bitch in the making. Nothing but a stupid little whore who needs a hot dose of cum to fix that head of yours. Now be a good slut and spread those legs for me.\" There's something about his assertive tone and the way his paws stroke along your sides that leaves you hard despite yourself, your cock twitching weakly in submissive resignation."

  OutmaneuverWonText: =>
    say paragraph "You successfully weave under his lightning-quick punch and drive your knee directly into the husky's balls. His shrill yelp of pain is the opening you need to ram your fist into his throat, stealing the breath from his lungs. With every ounce of your strength, you twist your body to kick the dog's stomach, sending him reeling before he stumbles back on his ass. The husky groans and coughs weakly on the ground, giving you time to beat tracks before he can recover enough to return the favor."
    say paragraph "Adrenaline pumping through your veins, you run a long time before finally coming to a stop around several city blocks. You're still worried he'll be able to scent you, but bank on the rank stank of the city-folk to mask your own smell. Wiping your brow, you continue walking back to safety, fingers crossed that you'll never meet the husky again."

  BoltAwayFromFightText: =>
    say paragraph "BoltAwayFromFightText!"

  BoltAwayFromFightLostText: =>
    say paragraph "BoltAwayFromFightLostText!"

  BoltAwayFromFightWonText: =>
    say paragraph "BoltAwayFromFightWonText!"

  BoltAwayFromHidingText: =>
    say paragraph "BoltAwayFromHidingText!"

  BoltAwayFromHidingLostText: =>
    say paragraph "BoltAwayFromHidingLostText!"

  BoltAwayFromHidingWonText: =>
    say paragraph "BoltAwayFromHidingWonText!"

  SneakAwayText: =>
    say paragraph "SneakAwayText!"








# OLD STUFF

export HuskyHeroFailedSkulk = =>
  say paragraph "You stub your toe on a rock and yelp, alerting the husky of your presence. The husky collars the fox girl to a pole and runs over to you."

export HuskyHeroSelfDefense = =>
  say paragraph "You need to fight for your life or this alpha is going to fuck you up!"

export HuskyHeroFailedSelfDefense = =>
  say paragraph "You get mega fucked up by the beefcake, who batters and bruises your body until you can no longer resist."

  say paragraph "The husky pulls out a collar from his bag and chains it to you, attaching you to a heavy dumpster."

  say paragraph "The fox girl is terrified and in tears. The husky throatfucks her and she slowly gives in to the pleasure, crying in ecstasy as her fur puffs out in grayish tones. The alpha moves to the side and reveals her new form to be a mindless husky slut, lusting after his dick, only tethered by the tied leash."

  say paragraph "\"Sorry, babe, gotta save some of that spunk for the new girl.\" She begs and whines as he walks towards you. Somehow you don't feel like he's going to be respecting your pronouns. You inch back until your rope is taut against your neck, but are helpless to escape, body still aching from the beating you just took."

  say paragraph "The husky grabs the end of your leash with one paw and forces you onto your knees with the other. \"Get to it, weakling. You better be a fast learner, or else you're going to be bottom bitch to even that whore over there.\""

  if Player.int > 4
    say paragraph "He throatfucks you, and you do such a good job that he cums hard, pumping seed deep into your belly"
  else
    say paragraph "He throatfucks you, and you messily give him a blowjob. He cums deep into your belly."

  say "Instead of instinctively spitting it out, you find that you can't help but swallow, panting as your breasts fill out and juices spill down your legs."

  say paragraph "(...to be continued, ending 3)"
  await do end

export HuskyHeroEscape = =>
  say paragraph "You run as fast as you can to get away from the angry husky."

  await roll20 dex, =>
    0: =>
      await scene HuskyHeroFailedEscape
    23: =>
      say paragraph "You manage to run away from him! Wow."

export HuskyHeroFailedEscape = =>
  say paragraph "You are caught by the speedy husky."

  say paragraph "\"You're mine now, bitch. I'll teach you both how to stay like good girls.\""

  say paragraph "He drags you back to where you first saw him. \"Where the fuck did that slut go?\" he fumes, picking up a chewed up leash."

  say paragraph "\"Boy, you've got me pissed, now. Looks like you'll just have to take double shifts when we get back.\""

  await scene HuskyHeroBroughtToHouse

export HuskyHeroBroughtToHouse = =>
  say paragraph "The husky unceremoniously drags you down the city streets and to"

  if CityStreetHuskyHouse.discovered
    say "the husky house you've seen before. As you are brought in, the "

  say paragraph "You've been captured! You will be taken to the Husky House and pounded."

  await Player.location = ThePoundCellEnslaved
