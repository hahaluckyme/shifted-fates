name: "Research Lab"

SpectrometerDescription1: =>
  if CrystalSpectrometer.player_understands_device
  then "some sort of device"
  else "what you now know is a spectrometer"

SpectrometerDescription2: =>
  if CrystalSpectrometer.player_understands_device
  then "device you don't recognize"
  else "spectrometer"

Enter: =>
    say paragraph "You are standing in a medium-sized research lab. The room is not as sterile-looking as you'd expect from a laboratory, a mix of beige walls, tan floors, and light gray counters. A computer has been set up on one of the desks, the system unit hooked up to #{do @SpectrometerDescription1}. There's a filing cabinet beside one of the desks that's sitting slightly ajar."
    say paragraph "Unlike the room you woke up in, you do not see any equipment out of the ordinary. There are no crystal-powered machines here and nothing resembling deliberate vandalism like what you saw in the observatory dome."

Choices: =>
    option "Computer": => await scene @Computer
    option "Filing Cabinet": => await scene @FilingCabinet
    if CrystalSpectrometer.player_understands_device
        option "Spectrometer": => await scene @Spectrometer
    else
        option "Device": => await scene @Spectrometer
    await do choice

Computer: =>
    say paragraph "You take a closer look at the computer. The system unit is a medium-sized tower that's been sequestered under the desk for space. Hooked up to it is an LCD monitor, a wired mouse, a simple black keyboard, and a #{do SpectrometerDescription2}. The hardware is nothing remarkable, most likely used by the researchers for browsing, printing, or data entry while more intensive tasks are handled elsewhere."
    if @player_knows_power_is_out
        say paragraph "You try to turn on the computer or monitor, but it looks like power is still out in this room."
    else
        @player_knows_power_is_out = true
        say paragraph "You attempt to turn on the system unit, then the monitor, but to no avail. You check the wall outlet where the cords lead to, but plugging the connectors into different sockets doesn't seem to fix anything. Looks like power isn't reaching this room at all."

Filing Cabinet: =>
    say paragraph "PLACEHOLDER"

Spectrometer: =>
    if not CrystalSpectrometer.active
        CrystalSpectrometer.active = true
        CrystalSpectrometer.player_checked_device = true
        say paragraph "Unfortunately, you have not the faintest idea what this device is or how to operate it. You make a mental note to return here later if you find a use for it."
    else if not CrystalSpectrometer.player_understands_device
        say paragraph "You still have not the faintest idea what this device is or how to operate it. Maybe there's someone or something around here that could help?"
    else
        say paragraph "From what you recall reading in the library, this instrument is a spectrograph. White light is shone through a substance in a gaseous state, filtered by a narrow vertical slit, reflected by a diffraction grating, and then cast onto a detector. The result is a dark line spectrum that identifies the chemical composition of a material based on the specific wavelengths of light that the gas absorbs. The concept of a spectrograph is still a little over your head, but you do see a potential use for it - finding out what exactly those strange crystals are made of."
        say paragraph "Looking back at the instrument, you realize that there are some obstacles in the way. The spectrograph looks like it requires interfacing with the computer for exact wavelength analysis, so you'd need to ensure that both devices are on and functional first. You can't carry the instrument to the observatory deck without risk of breaking it, which means that you'll have to bring a crystal here instead. Problem is, those crystals are quite literally glowing, and you're not keen on touching something that could give you fatal radiation poisoning with your bare hands. Last but not least, you'll need some means of vaporizing a sample crystal and keeping the gas contained in a clear tube. If you can do all that, you should be able to discern the elemental composition of a sample crystal."
        say paragraph "Before you turn away, you write down what you'll need on a blank pink sticky note and take it with you for later reference."