name: "Cafeteria"

Enter: =>
    say paragraph "Not so much a traditional cafeteria as a commercial catering service with some tables to sit down and eat. The menu offers sandwiches, pizza slices, fruit salad, drinks, pastries, and even a small salad bar for those seeking a healthier alternative. Less impressive is the seating area, which just consists of some metal picnic tables that have been repurposed for inside use. It's a clean and well-kept space, but makes no effort to appeal to the eye with its budget-minded pragmatism."
    if CrystalSpectrometer.player_made_plan and not CrystalSpectrometer.has_tongs
        say paragraph "Recalling the spectrometer in the research lab, you may be able to find a pair of tongs around here to transport one of the glowing crystals without coming into direct contact with it."

Choices: =>
    if CrystalSpectrometer.player_made_plan and not CrystalSpectrometer.has_tongs
        option "Look for tongs": => await scene @Tongs
        await do choice

Tongs: =>
    CrystalSpectrometer.has_tongs = true
    say paragraph "A"