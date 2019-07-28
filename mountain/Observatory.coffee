export ObservatoryInside = new class extends Room
  discovered: false
  scavenged: false

  Enter: =>
    if not @discovered
      @discovered = true
      say paragraph "You are surrounded by metal walls and a single glass window. The tight, enclosed environment immediately makes you feel claustrophobic. You press your hands against the glass, and to your surprise, the pane comes loose fairly easily, falling right off its frame with a crash as it shatters across the concrete floor."
      say paragraph "You carefully climb out and into what looks to be a makeshift lab. The machines around you are constructed with various metals and embedded crystals, now crushed and shattered over years of disuse."
    else
      say paragraph "It's the room you woke up in. The floor is covered in small glass shards from the broken pane."
    say paragraph "The light is coming through the window of a closed door to the north."

  Choices: =>
    "Scavenge": if not @scavenged then =>
      await scene @Scavenge
    North: =>
      say paragraph "You unlock the heavy deadbolt and open the door to leave. Bright light striking your eyes, you lift your hands to shield yourself until you adjust to the sun's rays. Where are you?"
      await Player.location = ObservatoryOutside

  Scavenge: =>
    @scavenged = true
    say paragraph "You find some broken lab equipment on a nearby table. It doesn't look to be of much use."


export ObservatoryOutside = new class extends Room
  discovered: false

  Enter: =>
    if not @discovered
      @discovered = true
      say paragraph "You immediately shiver as cold air blows past you, raising goosebumps on your skin. It's chilly out here and fairly windy. You can see mountains in the distance, and by your view, you guess that you're just on a smaller ridge connected to it."
      say paragraph "The treeline is just ahead, gradually entering a forested biome with dense trees."
    else
      say paragraph "You're in some kind of forested area just outside of the building you woke up in. Maybe on a mountain?"
    say paragraph "An unmaintained trail runs to the north. To the south is the building you originally came from."

  Choices:
    South: => await Player.location = ObservatoryInside
    North: =>
      say paragraph "You walk down the trail, treading carefully with each step. It's definitely better than walking through the forest, but it's not an easy hike even with it being downhill. You're not sure how much farther you should go down, but "
      await Player.location = CampsiteEmpty
