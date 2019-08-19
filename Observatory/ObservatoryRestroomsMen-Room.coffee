Enter: =>
    say paragraph "You are standing in the men's restroom."

Choices: =>
    option South: => await Player.location = ObservatoryHallwayEast
    await do choice