
Enter: =>
  say paragraph "Secret Shifted Fates Debug menu!"

Choices: =>
  option "Husky Hero": => await scene HuskyHero
  option "Cattle Dog Encounter": => await scene CattleDogEncounter
  option "Example Room": => await Player.location = ExampleRoom
  option "Example Scenario": => await scene ExampleScenario
  option "Set main stat": => await scene @SetMainStat
  await do choice

SetMainStat: =>
  Player.str = 0
  Player.dex = 0
  Player.per = 0
  Player.int = 0
  Player.cha = 0

  say paragraph "Set your main stat!"

  option "Strength": => Player.str = 10
  option "Dexterity": => Player.dex = 10
  option "Perception": => Player.per = 10
  option "Intelligence": => Player.int = 10
  option "Charisma": => Player.cha = 10
  await do choice

  say paragraph "Strength: +#{Player.str}"
  say "\nDexterity: +#{Player.dex}"
  say "\nPerception: +#{Player.per}"
  say "\nIntelligence: +#{Player.int}"
  say "\nCharisma: +#{Player.cha}"
