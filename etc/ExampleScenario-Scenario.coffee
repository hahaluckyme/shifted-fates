# If a line starts with a # symbol, it is just a comment.

# The scene called "Start" is always run first when a Scenario begins.
Start: =>
  say paragraph "You stumble across a handsome stag."

  # This is how you show choices to the screen. They will show up in the order that you list them here.
  # Each option will point to a scene that's also in this file (the @ means that it's in this file)
  option "Make conversation": => await scene @Talk
  option "Offer sex": => await scene @Sex
  option "Leave": => await scene @Leave
  await do choice

Talk: =>
  say paragraph "You have a friendly conversation with the stag, then leave."

Sex: =>
  # This is how you can test the player on a stat roll, and must roll at least a 10.
  if roll20 cha, 10
    say paragraph "You convince the stag to have sex with you."
  else
    say paragraph "You offer sex, but the stag is not interested."

Leave: =>
  say paragraph "You leave the entire universe and disappear into the void."
  # This next line ends the game. OMIT this if you want the Scenario to peacefully resolve and let the player return to their previous room to continue playing.
  await do end
