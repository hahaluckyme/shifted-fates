name: "Empty Camp"

discovered: false
take_canteen: false
take_chair: false
take_flashlight: false
take_knife: false
take_MRE: false
take_sleeping_bag: false
take_tent: false
waited: false

Enter: =>
    say paragraph "Interest piqued by curiosity and hunger, you wander through the clearing into the empty campsite. As you approach, you hesitate at the sight of some glowing embers in the fire pit. Someone must still live here. Even so, you're not sure how much longer you can survive in the wilderness without any supplies. Chances are this will be your last taste of civilization until you reach the base of the mountain, and who knows how much longer that will take?"

Choices: =>
  if not @take_tent then option "Open the tent": =>
    say paragraph "You don't hear or see anyone inside the tent, but it's hard to tell for certain given the near-opaque material. Baiting your breath, ready for anything, you unzip the fly to look inside. Mercifully, there's nothing lying in wait, only a sleeping bag and some supplies. You count a canteen, two MREs, a hunting knife in a leather sheath, and a heavy-looking flashlight. There's also a couple bags for storing the sleeping bag and the tent itself."
    if not @take_sleeping_bag then option "Take the sleeping bag": =>
      say paragraph "It's not the most immediately useful item, but a sleeping bag would help keep you warm at night. You roll it tight to the best of your abilities and cram it inside of its bag. It's a little bulky, but very light."
      @take_sleeping_bag = true
    option "Take the canteen": if not @take_canteen then =>
      say paragraph "You push aside a twang of guilt and pick the canteen up off the ground. By the way it sloshes when you lift it, you can tell that it's at least partially filled. You dare to unscrew the top and drip a little of its contents on your fingers to sample. The fluid smells and tastes like water, and you can't immediately discern anything impure about it. You suppress your conscience as you pocket the canteen, convincing yourself that whoever lives here must have some sort of contingency plan."
      @take_canteen = true
    if not @take_MRE then option "Take the MREs": =>
      say paragraph "These MREs should still be good based on the expiration dates on the packaging. They also helpfully give instructions on how to heat the contents without an external source of heat. You pocket them without a second thought, focused only on filling the void in your belly."
      @take_MRE = true
    if not @take_knife then option "Take the knife": =>
      say paragraph "You quickly grab the knife off the ground and pocket it. You'd rather be the one with the blade if push comes to shove."
      @take_knife = true
    if not @take_flashlight then option "Take the flashlight": =>
      say paragraph "A flashlight might come in handy if night falls before you make it back to civilization. You check the battery by flicking it on and back off again, then stow it on your person for later use."
      @take_flashlight = true
    option "Take the whole tent": =>
      say paragraph "You figure a tent could provide the bare minimum of shelter to sleep safely through the night. With a cautious look over your shoulder, you climb out of the tent and set to work tearing it down. First comes the rainfly, which has been stretched taut over the tent's dome. The guy lines keeping it stable are easy enough to loosen. Next is the tent itself. The stakes in each corner have been lodged deep in the ground, requiring an embarrassing amount of time and effort to remove. After pulling them up, you shimmy the metal poles out of their criss-crossing sleeves. The tent collapses in on itself as soon as support is robbed from the dome. Finally, you roll up the ground tarp and cram everything into the main tent bag to lug with you. The load's a little on the heavy side, but nothing you can't handle."
      @take_tent = true
    await do choice
  if not @take_chair then option "Take the chair": =>
    say paragraph "While not strictly necessary for survival, a camping chair seems like a modest luxury to steal for yourself. It's quite easy to collapse, and the materials are light enough to carry under your arm without too much trouble. A petty acquisition, but one you're not exactly going to lose sleep over."
    @take_chair = true
  option "Wait": =>
    if @take_canteen or @take_chair or @take_flashlight or @take_knife or @take_MRE or @take_sleeping_bag or @take_tent
      await scene @AngryMountaineer
    else if not @waited
      say paragraph "You decide to wait for a few minutes. The chilly air nips at your skin."
      @waited = true
    else
      await scene Logan.Introduce
  option South: =>
    if @take_canteen or @take_chair or @take_flashlight or @take_knife or @take_MRE or @take_sleeping_bag or @take_tent
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