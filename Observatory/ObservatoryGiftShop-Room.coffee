Enter: =>
    say paragraph "A rather large room stocked with several aisles of gifts. To the southeast corner is a section for children with informational posters about astronomy and chintzy space-themed toys. To the southwest corner is a unisex, single-person dressing room for trying on souvenir shirts in relative privacy. To the northwest corner is an empty counter with an unattended cash register. There's a white-on-black sign behind it that reads \"NO CHECKS! NO TRADE-INS! NO REFUNDS!\", suggesting that they've had more than a few problem customers before."

Choices: =>
    option "Gifts": => await scene @Gifts
    option "Dressing Room": => await scene @DressingRoom
    option "Cash Register": => await scene @CashRegister
    await do choice

Gifts: =>
    say paragraph "Looking over the shelves, you see an assortment of tasteful paraphernalia. There's baseball caps, jackets, and t-shirts with the site's logo on them, miniature figurines of the facility with a tiny telescope poking out, and planetary models in colorful cardboard boxes with pictures of kid actors pointing at them."

DressingRoom: =>
    say paragraph "You walk into the dressing room and take a look around. Despite its small size, it's quite comfortable. There's a sturdy wooden bench to sit down on and a two-pronged clothing hook to hold your attire while changing. As an additional courtesy, a tall, frameless mirror has been fitted into a recess in a wall to check yourself out in without leaving the stall. Seeing nothing else around, you walk back out of the changing room to peruse the rest of the store."

CashRegister: =>
    say paragraph "Without anyone around, you are free to take a closer look at the check-out counter. You impulsively start with the register, trying to find any kind of button or lever to open the cash drawer. The button with a padlock icon doesn't seem to work, but you do notice the keyhole on the drawer itself and make a mental note to return here if you ever find means to unlock it."