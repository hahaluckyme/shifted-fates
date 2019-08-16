Enter: =>
    say paragraph "."
    option North: => await Player.location = ObservatoryRestrooms
    option East: => await Player.location = ObservatoryHallwayFarEast
    option South: => await Player.location = ObservatoryGiftShop
    option West: => await Player.location = ObservatoryHallwayIntersection
    await do choice