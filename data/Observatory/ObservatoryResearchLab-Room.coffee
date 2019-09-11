name: "Research Lab"

SpectrographDescription1: =>
  if CrystalSpectrograph.player_understands_device
  then "some sort of device"
  else "what you now know is a spectrograph"

SpectrographDescription2: =>
  if CrystalSpectrograph.player_understands_device
  then "device you don't recognize"
  else "spectrograph"

Enter: =>
    say paragraph "You are standing in a medium-sized research lab. The room is not as sterile-looking as you'd expect from a laboratory, a mix of beige walls, tan floors, and light gray counters. A computer has been set up on one of the desks, the system unit hooked up to #{do @SpectrographDescription1}. There's a filing cabinet beside one of the desks that's sitting slightly ajar."
    say paragraph "Unlike the room you woke up in, you do not see any equipment out of the ordinary. There are no crystal-powered machines here and nothing resembling deliberate vandalism like what you saw in the observatory dome."

Choices: =>
    option "Computer": => await scene @Computer
    option "Filing Cabinet": => await scene @FilingCabinet
    if CrystalSpectrograph.player_understands_device
        option "Spectrograph": => await scene @Spectrograph
    else
        option "Device": => await scene @Spectrograph
    await do choice

Computer: =>
    say paragraph "You take a closer look at the computer. The system unit is a medium-sized tower that's been sequestered under the desk for space. Hooked up to it is an LCD monitor, a wired mouse, a simple black keyboard, and a #{do SpectrographDescription2}. The hardware is nothing remarkable, most likely used by the researchers for browsing, printing, or data entry while more intensive tasks are handled elsewhere."
    if @player_knows_power_is_out
        say paragraph "You try to turn on the computer or monitor, but it looks like power is still out in this room."
    else
        @player_knows_power_is_out = true
        say paragraph "You attempt to turn on the system unit, then the monitor, but to no avail. You check the wall outlet where the cords lead to, but plugging the connectors into different sockets doesn't seem to fix anything. Looks like power isn't reaching this room at all."

FilingCabinet: =>
    say paragraph "PLACEHOLDER"

Spectrograph: =>
    if not CrystalSpectrograph.active
        CrystalSpectrograph.active = true
        CrystalSpectrograph.player_checked_device = true
        say paragraph "Unfortunately, you have not the faintest idea what this device is or how to operate it. You make a mental note to return here later if you find a use for it."
    else if not CrystalSpectrograph.player_understands_device
        say paragraph "You still have not the faintest idea what this device is or how to operate it. Maybe there's something around here that could elucidate its function?"
    else if not CrystalSpectrograph.player_made_plan
        CrystalSpectrograph.player_made_plan = true
        say paragraph "From what you recall reading in the library, this instrument is a spectrograph. White light is shone through a substance in a gaseous state, filtered by a narrow vertical slit, reflected by a diffraction grating, and then cast onto a detector. The result is a dark line spectrum that identifies the chemical composition of a material based on the specific wavelengths of light that the gas absorbs. The concept of a spectrograph is still a little over your head, but you may be able to utilize it to find out what exactly those strange crystals are made of."
        say paragraph "Looking back at the instrument, you think about everything you'll need to put your plan into action. You don't recall the observatory deck having any standard electrical outlets, so you'll first need to transport a shard to the research lab. However, you're not keen on touching something glowing with your bare hands, so you'll have to accrue either gloves or something else to as a barrier beforehand. Secondly, you'll need some means of vaporizing a sample crystal and keeping the gas contained in a clear tube. Last but not least, both the spectrograph and the computer it's hooked up to must be powered on to perform wavelength analysis. If you can do all that, you should be able to discern the elemental composition of a sample crystal."
        say paragraph "Before you turn away, you write down what you'll need on a sticky note and take it with you for later reference. Hopefully the results will shed some light on what exactly is going on at this facility."