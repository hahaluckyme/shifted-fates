if debug
  say paragraph "Secret Shifted Fates Debug menu!"
  option "Husky Hero Scenario": => await scene HuskyHero
  await do choice
else
  say paragraph "A cold breeze blows gently against your skin, rousing your consciousness as your eyes flutter open. The light is painful at first, but you quickly adjust. Soon your blurred vision sharpens, allowing you to see the cracks in the steamy glass in front of you. You take a deep breath, letting the air fill your lungs as you try to remember what happened."
  say paragraph "You vaguely recall shouting and falling into a blue void... but where are you now?"

  #  (if non-human: -at least you remember who you were, but you are different now than how you used to be.)

  # say paragraph "What's your name?"

  await Player.location = ObservatoryInside
