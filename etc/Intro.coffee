export IntroRoom = new class extends Room
  Enter: =>
    await scene IntroScene

export Nowhere = new class extends Room

export IntroScene = =>
  # set player initial stats
  Player.sex = "male"
  Player.name = "Player"
  Player.str = 5
  Player.dex = 5
  Player.per = 5
  Player.int = 5
  Player.cha = 5
  Player.luck = 0

  # temporarily put the player in the city to test city scenes
  # await Player.location = CityStreetOutskirts

  # return
  say paragraph "A cold breeze blows gently against your skin, rousing your consciousness as your eyes flutter open. The light is painful at first, but you quickly adjust, and soon your blurred vision sharpens, allowing you to see the cracks in the steamy glass in front of you clearly. You take a deep breath, letting the air fill your lungs as you try to remember what happened to you."

  say paragraph "You remember the earth shaking, the sound of screaming, the sight of people bursting into blue energy and vanishing into nothingness. You don't remember too much else about what's happened."

  #  (if non-human: -at least you remember who you were, but you are different now than how you used to be.)

  # say paragraph "What's your name?"

  # await choice =>
    # "Lucky": =>

  await Player.location = ObservatoryInside
