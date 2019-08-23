name: "Observatory"

# scavenged: false

Enter: =>
  if not @discovered
    say paragraph "Taking stock of your surroundings, you seem to be standing in a narrow pod with metal walls and a single glass window. The tight, enclosed space almost instantly makes you feel claustrophobic. You press your hands against the glass, and to your surprise, the pane comes loose fairly easily, falling right off its frame with a crash as it shatters across the concrete floor."
    say paragraph "You carefully climb out and into what looks to be the main room of an observatory. The center of the space is dominated by an enormous telescope, looking like something torn directly off a space craft and affixed to a rotating pivot. The ceiling above it is a great dome of metal with curved steel rafters for support. An opening between the two halves allows light to steam in, revealing both the bright blue sky overhead and the fact that's it's currently day out."
    say paragraph "Given the state you woke up in, it's clear that this place has been converted into something much different than its original design. The machines around you are certainly unlike anything you've ever seen before. Strange, faintly glowing crystals power devices made from alloys and plastics. Most of the equipment appears to be in a state of disrepair, several devices strewn across the floor and others completely smashed to pieces."
    say paragraph "The only exit out of this room is a wooden door to the west, currently standing ajar."
  else
    say paragraph "The room you woke up in feels eerie to return to. The equipment doesn't seem to have been touched since you were last here, and the floor is still covered in glass from when you shattered the containment pod's pane. It's hard not to admire the gigantic reflector telescope standing unfazed amidst the chaos."

# Choices: =>
#   if not @scavenged then option "Scavenge": => await scene @Scavenge
#   option West: =>
#     say paragraph "You take a cautious look around the door to ensure that nothing is lying in wait beyond it. Not seeing or hearing any threats, you walk through the open door and quietly shut it behind you."
#     await Player.location = ObservatoryHallwayFarEast
#   await do choice

# Scavenge: =>
#   @scavenged = true
#   say paragraph "You find some broken lab equipment on a nearby table. It doesn't look to be of much use."
