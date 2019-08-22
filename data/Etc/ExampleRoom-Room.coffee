# The scene called "Enter" is always run first when a Room is entered.
Enter: =>
  say paragraph "You enter into an example room."

  say paragraph "Upon entering, you find a computer terminal with big buttons. Which do you press?"

# The scene called "Choices" is always run when the player is idle in the room.
Choices: =>
  option "Example Scenario": => await scene ExampleScenario
  await do choice
