name: "Restrooms"

Enter: =>
    say paragraph "You walk up to the restrooms. Each door is marked with the a male or female figure. Given that no one appears to be around, you have free reign to enter either without repercussions."

Choices: =>
    option "Men's Restroom": => await Player.location = ObservatoryRestroomsMen
    option "Women's Restroom": => await Player.location = ObservatoryRestroomsWomen
    await do choice