Enter: =>
    say paragraph "You enter the restrooms."

Choices: =>
    option "Men's Restroom": => await Player.location = ObservatoryRestroomsMen
    option "Women's Restroom": => await Player.location = ObservatoryRestroomsWomen
    await do choice