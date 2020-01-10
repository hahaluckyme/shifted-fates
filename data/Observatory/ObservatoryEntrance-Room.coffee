name: "Entrance"

Enter: =>
    say paragraph "A tidy, well-kept foyer. Accommodations include a large indoor mat, a coatrack, an umbrella stand, and a couch to one side of the room. There's also a drinking fountain to slake your thirst and a capsule machine for kids or collectors."
    say paragraph "The reception room is to the north. The doors to your south lead outside."

South: =>
  await Player.location = MountainObservatory
