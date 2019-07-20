export ObservatoryInside = new class extends Room
  discovered: false
  scavenged: false

  Enter: =>
    if not @discovered
      @discovered = true
      say paragraph "You press your hands against the glass. To your surprise, the pane comes loose fairly easily, falling right off its frame with a crash as it shatters across the concrete floor. You carefully climb out and into what looks to be a makeshift lab. The machines around you are constructed with various metals and embedded crystals, now crushed and shattered over years of disuse. You have no idea where you are or what happened here, but it couldn't have been good."
    else
      say paragraph "It's the room you woke up in."
    say "There's a door to the north. Light floods through the window."

  Choices: =>
    "Scavenge": if not @scavenged then =>
      await scene @Scavenge
    North: =>
      await Player.location = ObservatoryOutside

  Scavenge: =>
    @scavenged = true
    say paragraph "You find various broken lab equipment on a nearby table. It doesn't look to be of much use unless you want to risk cutting yourself on glass."


export ObservatoryOutside = new class extends Room
  discovered: false

  Enter: =>
    if not @discovered
      @discovered = true
      say paragraph "You unlock the heavy deadbolt and open the door to leave. Bright light striking your eyes, you lift your hands to shield yourself until you properly adjust to the sun's rays."
    say paragraph "It's very cold out here. You're in some kind of forested area, and you appear to be at high elevation."

  Choices:
    South: => await Player.location = ObservatoryInside
    North: => await Player.location = CampsiteEmpty
