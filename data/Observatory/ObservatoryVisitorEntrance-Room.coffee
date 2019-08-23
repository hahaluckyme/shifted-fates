name: "Visitor Entrance"

Enter: =>
    say paragraph "Visitors enter through a pair of double doors into a tidy, well-kept foyer. Accommodations include a large indoor mat, a coatrack, an umbrella stand, and a couch to one side of the room. There's also a drinking fountain to slake your thirst and a coin-up capsule machine for kids or collectors."
    say paragraph "The reception room is not far to the east. The doors to your west lead outside."

Choices: =>
    option "Exit": => await Player.location = MountainObservatory
    await do choice