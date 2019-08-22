discovered: false

Enter: =>
  if not @discovered
    say paragraph "You shiver as cold air blows past you, raising the hairs on your skin. It's chilly out here and fairly windy. The sky is speckled with wispy clouds, and the grass beneath you feet rustles in the breeze. You can see mountains in the distance, and judging from your perspective, you must be on a lower ridge. The treeline of a dense conifer forest lies just ahead."
  else
    say paragraph "You're in the grassy area just outside of the building you woke up in. The air up here is cool and clean, and the soft sound of rustling grass soothes your nerves."
  say paragraph "You could enter the observatory again through either the visitor or staff entrance. An unmaintained trail runs through the forest to the west."

Choices: =>
  option "Visitor Entrance": => await Player.location = ObservatoryVisitorEntrance
  option "Staff Entrance": => await Player.location=ObservatoryStaffEntrance
  option West: =>
    say paragraph "You walk down the trail, treading carefully with each step. It's definitely better than walking through the underbrush, but it's not an easy hike even with it being downhill. You let your mind wander in the meanwhile, wondering what exactly happened to you or the lab you woke up in."
    await Player.location = CampsiteEmpty
  await do choice

# Song: The following commented-out writing is an optional prompt for investigating the campsite instead of just showing up there.

# Choices: =>
#   "Investigate the camp": =>
#     say paragraph "Feeling curious, you cut a path through the trees to take a closer look at the abandoned campsite."
#       await Player.location = CampsiteEmpty
#   "Keep moving": =>
#     say paragraph "You reign in the impulse to check out the campsite. Who knows if someone's still living there? You'd just rather not run that kind of unnecessary risk. Feeling good about your decision, you continue to walk down the pathway, keeping your eyes open for any other threats or opportunities along the way."
