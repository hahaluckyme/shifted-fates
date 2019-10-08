name: "Empty Camp"

discovered: false
take_canteen: false
take_chair: false
take_flashlight: false
take_food: false
take_knife: false
take_sleeping_bag: false
waited: false

Enter: =>
    say paragraph "Interest piqued by curiosity and hunger, you wander through the clearing into the empty campsite. As you approach, you hesitate at the sight of some glowing embers in the fire pit. Someone must still live here. Even so, you're not sure how much longer you can survive in the wilderness without any supplies. Chances are this will be your last taste of civilization until you reach the base of the mountain, and who knows how much longer that will take?"

Choices: =>
  option "Open the tent": =>
    say paragraph "You don't hear or see anyone inside the tent, but it's hard to tell for certain given the near-opaque material. Baiting your breath, ready for anything, you unzip the fly to look inside. Mercifully, there's nothing lying in wait, only a sleeping bag and some supplies. You count a canteen, several packets of freeze-dried food, a hunting knife in a leather sheath, and a heavy-looking flashlight. There's also a couple bags for storing the sleeping bag and the tent itself."
    if not @take_sleeping_bag then option "Take the sleeping bag": =>
      say paragraph "It's not the most immediately useful item, but a sleeping bag would help keep you warm at night. You roll it tight to the best of your abilities and cram it inside of its bag. It's a little bulky, but very light."
      @take_sleeping_bag = true
    option "Take the canteen": if not @take_canteen then =>
      say paragraph "You push aside a twang of guilt and pick the canteen up off the ground. By the way it sloshes when you lift it, you can tell that it's at least partially filled. You dare to unscrew the top and drip a little of its contents on your fingers to sample. The fluid smells and tastes like water, and you can't immediately discern anything impure about it. You suppress your conscience as you pocket the canteen, convincing yourself that whoever lives here must have some sort of contingency plan."
      @take_canteen = true
    if not @take_food then option "Take the food": =>
      say paragraph "You pocket the freeze-dried food without a second thought, focused only on filling the void in your belly."
      @take_food = true
    if not @take_knife then option "Take the knife": =>
      say paragraph "You quickly grab the knife off the ground and pocket it. You'd rather be the one with the blade if push comes to shove."
      @take_knife = true
    if not @take_flashlight then option "Take the flashlight": =>
      say paragraph "A flashlight might come in handy if night falls before you make it back to civilization. You check the battery by flicking it on and back off again, then stow it on your person for later use."
      @take_flashlight = true
    option "Take the whole tent": =>
      say paragraph "You figure a tent could provide the bare minimum of shelter to sleep safely through the night. With a cautious look over your shoulder, you climb out of the tent and set to work tearing it down. First comes the rain fly, which has been stretched taut over the tent's dome. The guy lines keeping it stable are easy enough to loosen. Next up is the tent itself. The stakes in each corner have been lodged deep in the ground, forcing you to get down on your knees and grab each stake with both hands to pull them up."
      await do pause
      await scene @AngryMountaineer
    await do choice
  if not @take_chair then option "Take the chair": =>
    say paragraph "While not strictly necessary for survival, a camping chair seems like a modest luxury to steal for yourself. It's quite easy to collapse, and the materials are light enough to carry under your arm without too much trouble. A petty acquisition, but one you're not exactly going to lose sleep over."
    @take_chair = true
  option "Wait": =>
    if @take_canteen or @take_chair or @take_flashlight or @take_knife or @take_food or @take_sleeping_bag
      await scene @AngryMountaineer
    else if not @waited
      say paragraph "You decide to wait for a few minutes. The chilly air nips at your skin."
      @waited = true
    else
      await scene Logan.Introduce
  option South: =>
    if @take_canteen or @take_chair or @take_flashlight or @take_knife or @take_food or @take_sleeping_bag
      await scene @AngryMountaineer
    else
      await Player.location = MountainTrail2
  await do choice

AngryMountaineer: =>
  say paragraph "You hear a growl from behind you. Turning around, you pale at the sight of a large wolf man staring at you."
  say paragraph "\"I don't think that belongs to you,\" he growls."
  say paragraph "Before you can react, he throws a hard punch at your head. You don't even feel the pain of the impact as you black out."
  await do pause
  await Player.location = CampsiteCaptured