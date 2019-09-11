name: "Strange Device"

active: false

Log: =>
    if not CrystalSpectrograph.player_understands_device
        say paragraph "You found a strange device in a research lab. Who knows what it's for?"
    else if not CrystalSpectrograph.player_made_plan
        say paragraph "You found out that the instrument in the research lab is a spectrograph. By making use of it, you may be able to learn more about the strange, glowing crystals in the room you woke up in."
    else
        say paragraph "Using the spectrograph you found in the research lab, you should be able to determine the composition of the strange, glowing crystals in the main observatory deck. Looking back at the list you wrote on a sticky note, you still need to:"
        if CrystalSpectrograph.has_tongs
            say paragraph "• [s]Find means to safely transport a crystal[/s]"
        else
            say paragraph "• Find means to safely transport a crystal"
        if CrystalSpectrograph.has_crystal
            say paragraph "• [s]Transport a crystal to the lab[/s]"
        else
            say paragraph "• Transport a crystal to the lab"
        if CrystalSpectrograph.has_burner
            say paragraph "• [s]Find means to vaporize the crystal[/s]"
        else
            say paragraph "• Find means to vaporize the crystal"
        if CrystalSpectrograph.has_bong
            say paragraph "• [s]Find a clear tube to contain the vaporized gas[/s]"
        else
            say paragraph "• Find a clear tube to contain the vaporized gas"
        if CrystalSpectrograph.has_power
            say paragraph "• [s]Restore power to the lab[/s]"
        else
            say paragraph "• Restore power to the lab"