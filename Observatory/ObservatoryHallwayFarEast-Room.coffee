Enter: =>
    say paragraph "A connecting hallway to other parts of the observatory-turned-laboratory. Rays of daylight from the adjacent deck illuminate the area enough to see your surroundings clearly. The path seems to lead all the way from the west end to the east end of the facility, interrupted only by perpendicular intersection with another hallway."
    option North: => await Player.location = ObservatoryJanitorsCloset
    option East: => await Player.location = ObservatoryMain
    option West: => await Player.location = ObservatoryHallwayEast
    option South: => await Player.location = ObservatoryComputerLab
    await do choice