export HuskyHero = =>
  say paragraph "You find a fox girl being taken by an alpha husky."

  await choice =>
    "Fight and save her!": =>
      await scene HuskyHeroFight
    "Skulk away...": =>
      await scene HuskyHeroSkulk

export HuskyHeroFight = =>
  say paragraph "You decide that you will be a hero! You go up and find that the male husky's muscles are a lot bigger than you anticipated."

  roll20 str, =>
    0: =>
      await scene HuskyHeroFailedFight
    20: =>
      say paragraph "Wow! You manage to beat the husky due to sheer luck or something."

export HuskyHeroFailedFight = =>
  say paragraph "You get fucked because he's a huge fucking husky and you're not. He lifts you up by the cuff of your shirt and you dangle helplessly in the air. You notice the fox girl is nowhere in sight."

  say paragraph "\"Well, well. Looks like someone's going to have to be doing double duty when we get back to the house.\""

  await scene HuskyHeroBroughtToHouse

export HuskyHeroSkulk = =>
  say paragraph "You skulk away because you're probably going to die if you get on the wrong side of that husky."

  roll20 dex, =>
    0: =>
      await scene HuskyHeroFailedSkulk
    12: =>
      say paragraph "You avoid detection and leave the scene."

export HuskyHeroFailedSkulk = =>
  say paragraph "You stub your toe on a rock and yelp, alerting the husky of your presence. The husky collars the fox girl to a pole and runs over to you."

  await choice =>
    "Fight for your life!": =>
      await scene HuskyHeroSelfDefense
    "Run as fast as you can!": =>
      await scene HuskyHeroEscape

export HuskyHeroSelfDefense = =>
  say paragraph "You need to fight for your life or this alpha is going to fuck you up!"

  roll20 str, =>
    0: =>
      await scene HuskyHeroFailedSelfDefense
    25: =>
      say paragraph "You manage to beat him! Wow."

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

  roll20 dex, =>
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
