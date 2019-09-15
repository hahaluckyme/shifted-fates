name: "Strange Device"

active: false

Log: =>
    if not CrystalSpectrometer.complete
        say paragraph "Using the spectrometer you found in the research lab, you should be able to determine the composition of the strange, glowing crystals in the main observatory deck. Looking back at the list you wrote on a sticky note, you still need to:"
        if CrystalSpectrometer.has_power
            say paragraph "• [s]Restore power to the lab[/s]"
        else
            say paragraph "• Restore power to the lab"
        if CrystalSpectrometer.found_tongs
            say paragraph "• [s]Find means to safely transport a crystal[/s]"
        else
            say paragraph "• Find means to safely transport a crystal"
        if CrystalSpectrometer.transported_crystal
            say paragraph "• [s]Transport a crystal to the lab[/s]"
        else
            say paragraph "• Transport a crystal to the lab"
        if CrystalSpectrometer.tested_crystal
            say paragraph "• [s]Use the spectrometer on the crystal[/s]"
        else
            say paragraph "• Use the spectrometer on the crystal"