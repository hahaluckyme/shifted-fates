Enter: =>
    say paragraph "."
    option North: => await Player.location = ObservatoryHallwayNorth
    option East: => await Player.location = ObservatoryHallwayEast
    option West: => await Player.location = ObservatoryHallwayWest
    option South: => await Player.location = ObservatoryHallwaySouth
    await do choice