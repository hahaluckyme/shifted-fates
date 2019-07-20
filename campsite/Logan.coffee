export Logan = new class extends NPC
  sex: "male"
  met: false

  Introduce: =>
    @met = true

    say paragraph "You wait at the campsite for a while longer. Hearing noises behind you, you turn around and suddenly stare in disbelief as a wolf man walks toward you. \"Hey, you!\" he growls, quickly drawing closer. \"What are you doing up here? Hands where I can see them!\""

    say paragraph "You take a few steps back and nervously tell the large wolf that you didn't touch anything of his. In fact, you've actually woken up a short while ago and just walked over from a building over there."

    say paragraph "He eyes you suspiciously. \"Nobody comes up here, not this far up the mountain. What were you doing in there?\""

    await choice =>
      "You don't know": =>

    say paragraph "You tell him that you really don't have any clue why you woke up there. Last thing you remember... well, you must have struck your head or something, because you can't recall anything peculiar about the night before. You also mention that you've never seen a werewolf before, and you're curious who he is."

    say paragraph "He eyes you for a moment, then relaxes his expression. Seeing this, you relieve your tense muscles, too. \"You seem strange... but genuine. The name's Logan. I've been living on this mountain for years. Nobody else bothers me up here. Forgive me for being so suspicious. My last encounter with another person was not so pleasant.\""

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

    say paragraph "... to be continued"

    await do end
