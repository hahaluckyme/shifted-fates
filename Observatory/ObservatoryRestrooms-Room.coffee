Enter: =>
    say paragraph "."

Choices: =>
    option "Men's Restroom": => await Player.location = ObservatoryMensRestroom
    option "Women's Restroom": => await Player.location = ObservatoryWomensRestroom
    await do choice