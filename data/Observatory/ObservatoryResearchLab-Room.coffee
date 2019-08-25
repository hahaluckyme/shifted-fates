name: "Research Lab"

Enter: =>
    say paragraph "You are standing in a medium-sized research lab. The room is not as sterile-looking as you'd expect from a laboratory, a mix of beige walls, tan floors, and light gray counters. There's a computer on one of the desks that's hooked up to a printer beside it. All along the walls are posters depicting laboratory safety standards and images of intricately annotated celestial bodies."
    say paragraph "Unlike the room you woke up in, you do not see any equipment out of the ordinary here. There are no crystal-powered machines and nothing resembling deliberate vandalism like you saw in the observatory dome."

Choices: =>
    option "Computer": => await scene @Computer
    option "Printer": => await scene @Printer
    option "Posters": => await scene @Posters
    await do choice

Computer: =>
    say paragraph "You take a closer look at the computer. The system unit is a medium-sized tower that's been sequestered under the desk for space. Hooked up to it is an LCD monitor, a wired mouse, a simple black keyboard, and a large printer. The hardware is nothing remarkable, most likely used by the researchers for browsing, printing, or data entry while more intensive tasks are handled elsewhere."
    if @player_knows_power_is_out
        say paragraph "You try to turn on the computer or monitor, but it looks like power is still out in this room."
    else
        @player_knows_power_is_out = true
        say paragraph "You attempt to turn on the system unit, then the monitor, but to no avail. You check the wall outlet where the cords lead to, but plugging the connectors into different sockets doesn't seem to fix anything. Looks like power isn't reaching this room at all."

Printer: =>
    say paragraph "The printer is a mid-2000s-looking home office inkjet with a plastic exterior and a supply of blank paper in a slanted tray. It looks a little roughshod, like it was run more often than intended by whoever worked at this facility. You'd think they'd spring for something a little more robust, but decide not to question it."

Posters: =>
    say paragraph "You take a look at some of the posters on the walls. The most eye-catching ones (by design) are the laboratory safety guides. They rail on about keeping the workspace clean, practicing good hygiene, and maintaining a buffer of distance between yourself and other researchers in the event of an accident. Every poster features in fine print the specific articles in state and federal law that mandate these practices."
    say paragraph "Aside from the warnings, there's an abundance of intricately labeled posters depicting galaxies, stars, and planets. Boxes of text to the side offer additional information, getting into nitty gritty details like the size, density, and estimated energy of stars, as well as details on which institute discovered what and when."