name: "Staff Entrance"

Enter: =>
    say paragraph "Any staff who enter the building are greeted with a quaint little area where they can hang up their outside clothes and store their valuables in their assigned footlockers. A leather couch rests to one side of the room with a glass coffee table to place food or drinks, and plastic potted plants lend a little atmosphere to the otherwise bland beige interior. North of here leads deeper into the facility, whereas a door to the south is marked as the exit."

South: =>
  await Player.location = MountainObservatory
