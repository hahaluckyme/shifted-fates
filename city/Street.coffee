export CityStreetOutskirts = new class extends Room
  discovered: false

  Enter: =>
    if not @discovered
      @discovered = true
      say paragraph "You enter the city and see the desolate ruins up close. Years of wear have torn down the roofs of the building and cracked the windows and concrete, making many of the structures completely useless as shelter."
    else
      say paragraph "You are on a city street. It is eerily quiet."

  Explore: =>
    await oneof =>
      1: => await scene HuskyHero
      2: => say paragraph "You cough a bit."
      3: => say paragraph "You find some nice flowers!"

  Choices: =>
    "Explore": => await scene @Explore
    North: => say paragraph "There's too much wreckage to go north."
    East: => await Player.location = CityStreetHuskyHouse

export CityStreetHuskyHouse = new class extends Room
  discovered: false

  Enter: =>
    if not @discovered
      @discovered = true
      say paragraph "You travel down the road a bit and see a house covered in toilet paper and graffiti. It seems a bit raucous and there are several husky creatures wandering outside, some obviously very drunk. There are plenty of girls, collared and leashed, and a few lithe husky boys in a similar but slightly less oppressed role."

      say paragraph "A large tapestry hangs outside, ruined by weather, but still clearly reading Husky House ΔΤΧ."

      say paragraph "You keep your distance and stay out of sight."
    else
      say paragraph "You keep your distance and stay out of sight."

  Choices: =>
    West: => await Player.location = CityStreetOutskirts
