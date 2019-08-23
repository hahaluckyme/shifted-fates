name: "Restrooms"

Enter: =>
    say paragraph "You walk up to the restrooms. Each door is marked with the standard white silhouette of a male or female figure. Given that no one is around, you have free reign to enter either without repercussion."

Choices: =>
    option "Men's Restroom": => await Player.location = ObservatoryRestroomsMen
    option "Women's Restroom": => await Player.location = ObservatoryRestroomsWomen
    await do choice