name: "Empty Camp"

discovered: false
take_chair: false
take_pot: false
take_bottles: false
waited: false
# TODO: Rewrite to prioritize survival-oriented items, such as water, food, some kind of knife, etc.

Enter: =>
    say paragraph "Interest piqued by hunger and curiosity, you wander through the clearing into the empty campsite. As you approach, you hesitate at the sight of some glowing embers in the fire pit. It looks like someone still lives here. Maybe it'd be best to leave before they come back? On the other hand, you're not sure how much longer you can survive out here without any supplies."

Choices: =>
  option "Take the tent": =>
    say paragraph "That's way too big for you to pick up."
  if not @take_chair then option "Take the chair": =>
    @take_chair = true
    take "Chair"
    if @take_pot
      say paragraph "You put the pot on your head and pick up the chair."
    else
      say paragraph "You pick up the chair with both hands."

    if @take_pot and @take_chair and @take_bottles
      await scene @AngryMountaineer
  if not @take_pot then option "Take the pots": =>
    @take_pot = true
    take "Pot"
    if @take_chair
      say paragraph "You put the pot on your head, pocket the silverware, and pick up the chair again with your hands."
    else
      say paragraph "You pick up the pot and pocket the silverware."
    if @take_pot and @take_chair and @take_bottles
      await scene @AngryMountaineer
  if not @take_bottles then option "Take the bottles": =>
    @take_bottles = true
    take "Water Bottle"
    take "Water Bottle"
    say paragraph "You take the two bottles and stuff them in your pockets."
    if @take_pot and @take_chair and @take_bottles
      await scene @AngryMountaineer
  option "Wait": =>
    if @take_pot or @take_chair or @take_bottles
      await scene @AngryMountaineer
    else if not @waited
      say paragraph "You wait for a few minutes. It's a little chilly, but the fire keeps you warm."
      @waited = true
    else
      await scene Logan.Introduce
  option South: =>
    if @take_pot or @take_chair or @take_bottles
      await scene @AngryMountaineer
    else
      await Player.location = MountainTrail2
  await do choice

AngryMountaineer: =>
  say paragraph "You hear a growl from behind you. Turning around, you see a large wolf man staring at you."

  say paragraph "\"I don't think that belongs to you,\" he growls."

  say paragraph "Before you can react, he throws a hard punch at your head. You don't even feel the pain of the impact as you black out."

  await do pause

  await Player.location = CampsiteCaptured