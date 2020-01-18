name: "City Street Outskirts"

Enter: =>
  if not @discovered
    say paragraph "You enter the city and see the desolate ruins up close. Years of wear have torn down the roofs of the building and cracked the windows and concrete, making many of the structures completely useless as shelter."
  else
    say paragraph "You are on a city street. It is eerily quiet."

Explore: =>
  await oneof =>
    1: => await scene HuskyHero
    2: => say paragraph "You cough a bit."
    3: => say paragraph "You find some nice flowers!"

Up: =>
  await Player.location = OverworldCity

Choices: =>
  option "Explore": => await scene @Explore
  # option North: => say paragraph "There's too much wreckage to go north."
  # option East: => await Player.location = CityStreetHuskyHouse
  await do choice
