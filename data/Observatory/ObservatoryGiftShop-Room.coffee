name: "Gift Shop"

Enter: =>
    say paragraph "A colorful gift shop stocked with several aisles of goods. In one corner is a section for children with space-themed toys amd informational posters about astronomy. In another corner is a unisex dressing room for trying on clothes in relative privacy. To the side of the room is an empty counter with an unattended cash register."

Choices: =>
    option "Gifts": => await scene @Gifts
    option "Dressing Room": => await scene @DressingRoom
    if not ObservatoryGiftShop.looted
        option "Cash Register": => await scene @CashRegister
    await do choice

Gifts: =>
    say paragraph "Looking over the shelves, you see an assortment of paraphernalia. There's baseball caps, jackets, and t-shirts with the site's logo on them, miniature figurines of the facility, and a couple large boxes of planetary models."

DressingRoom: =>
    say paragraph "You walk into the dressing room and take a look around. Despite its small size, it's quite comfortable. There's a sturdy wooden bench to sit down on and a clothing hook to use while changing. A tall, frameless mirror sits up against the wall. Seeing nothing of interest, you walk back out of the changing room."

CashRegister: =>
    say paragraph "Without anyone around, you are free to take a closer look at the check-out counter. The cash register's drawer appear to be hanging open and there's some loose change inside of it."

    option "Steal the change.": => await scene @Steal
    option "Leave it alone.": => await scene @NoSteal
    await do choice

Steal: =>
    ObservatoryGiftShop.looted = true
    say paragraph "You pocket the change before anyone can catch you in the act. Might buy you a snack if you get hungry later."

NoSteal: =>
    say paragraph "Whether out of personal morality or simply fear of consequences, you stop short of looting the register. Better to err on the side of caution here."