export Logan = new class extends NPC
  sex: "male"
  met: false

  Introduce: =>
    @met = true
    await scene LoganIntroduction

export LoganIntroduction = =>
  say paragraph "You wait at the campsite for a while. Your thoughts drift back to the laboratory again, wondering what exactly happened to you. A sudden noise from behind you jars you back to reality. When you turn to face the source, you can only stare in bewilderment at the sight of a large, bipedal wolf walking toward you. \"Hey, you!\" the creature calls out. \"What do you think you're doing? Hands where I can see them!\""

  say paragraph "You didn't expect to find trouble so soon, much less in the form of a humanoid wolf who can somehow speak your language. You take a few steps back and nervously assure him that you didn't touch any of his stuff. The wolf eyes you suspiciously. \"Nobody comes up here, not this far up the mountain. What were you doing in my camp?\""

  await choice =>
    "Amnesia and exploring": =>
      say paragraph "You answer honestly, saying that you have no idea where you are or how you woke up here. The last thing you remember... well, you must have struck your head or something, because you can't recall anything about the night before. All you remember is waking up in a nearby building and stumbling upon his camp while exploring the area."
      say paragraph "He eyes you for a moment, then relaxes his expression. Seeing this, you feel the tension in your muscles abate and let out a quiet sigh of relief. \"You seem strange, but genuine. The name's Logan. I've been living on this mountain for years. Nobody else bothers me up here. Forgive me for being so suspicious - my last encounter with another person was not so pleasant.\""
      say paragraph "You ask him how he's stayed hidden all this time. Christ, it's 2019 and you've never seen any news articles about him, or at least, the government seems to have suppressed the existence of werewolves to just mere fiction."
      say paragraph "Logan looks extremely confused. \"News? Government? 2019 was ages ago. There hasn't been a government for decades. Did you just wake up from a coma or something?\""

      await choice =>
        "What?": =>
        "No!": =>
        "Then what year is it?": =>

      say paragraph "Shocked, he ponders for a few seconds and taps his finger to his snout. \"You really don't know? Oh... how do I explain this all? It's been a couple of decades since the Burst. No clue exactly how long since then. There was this global crisis and almost everyone disappeared off the face of the planet at the same time. Like that one movie. And the survivors, they turned into big furry creatures like me. And smaller ones, too, I guess.\""
      say paragraph "The wolf man gives you a sheepish look. \"Sorry if that's confusing. Don't really talk to people much, so I'm not much of a storyteller.\" You can't help but feel skeptical, unsure if this is truly some sort of elaborate prank."

      await choice =>
        "Believe him": =>
          say paragraph "Some part of you is telling you to run away from this madman, but he *is* a giant talking werewolf, so it can't be too much crazier."
        "Don't believe him": =>
          say paragraph "He laughs. \"Well, you'll believe me soon enough! Sorry to break the news to you!\""

      # TODO: talk more about the world maybe? idk
      # Songadvice: Probably want to focus on the player asking for basic things. Landmarks, how to survive, etc.
      # Logan gives you a bit of supplies but is otherwise not really going to help you whatsoever
      take "Water Bottle"
      take "Food"
      say paragraph "\"Here's a bit of supplies. Bye now.\""

    "(Lie) Scavenging for supplies": =>
      say paragraph "Worried that the telling him the truth of your situation would make you more suspicious, you omit the details of how you got here and say that you were just looking for supplies. \"A thief, then?\" the wolf says brusquely, a smirk crooking his muzzle as he looks you up and down. \"No, you don't look the type. Just a drifter, then?\""
    "None of his business": =>
      say paragraph "Firmly, you tell the wolf that you'd rather not say. You'll just be right on your way-"
      say paragraph "\"No, you're not going anywhere,\" the wolf man growls, quickly reaching out to take hold of your bicep and pull you toward him. Standing right in front of his formidable form, you have to crane your head back to meet his icy gaze. \"Nobody stomps through my territory without answering me. What were you doing in my camp?\""
