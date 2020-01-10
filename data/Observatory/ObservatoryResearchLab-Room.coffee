name: "Research Lab"

SpectrometerDescription: =>
  if CrystalSpectrometer.player_understands_device
  then "spectrometer"
  else "device you don't recognize"

Enter: =>
    say paragraph "You are standing in a small research lab. The room is not as sterile as you'd expect from a laboratory, a mix of beige walls, tan floors, and light gray counters. A computer has been set up on one of the desks, the system unit hooked up to a #{do @SpectrometerDescription}. Several posters have been hung up on the walls that give instructions on how to handle the equipment."

Choices: =>
    option "Computer": => await scene @Computer
    option "Posters": => await scene @Posters
    if CrystalSpectrometer.player_understands_device
        option "Spectrometer": => await scene @Spectrometer
    else
        option "Strange Device": => await scene @Spectrometer
    await do choice

Computer: =>
    say paragraph "You take a closer look at the computer. The system unit is a medium-sized tower that's been sequestered under the desk for space. Hooked up to it is an LCD monitor, a wired mouse, a simple black keyboard, and a #{do @SpectrometerDescription}."
    if @player_knows_power_is_out
        say paragraph "You try to turn on the computer or monitor, but power is still out in this room."
    else
        @player_knows_power_is_out = true
        say paragraph "You attempt to turn on the system unit, then the monitor, but to no avail. You check the wall outlet where the cords lead to, but plugging the connectors into different sockets doesn't seem to fix anything. Looks like power isn't reaching this room at all."

Spectrometer: =>
    if not CrystalSpectrometer.player_understands_device
        say paragraph "A strange, rectangular device with cords leading out of it on either end. You have not the faintest idea what this device is or how to operate it."
    else if not CrystalSpectrometer.complete
        say paragraph "The spectrometer sits idle."

Posters: =>
    say paragraph "You take a look at the posters on the walls. The writing on them is clear and comprehensive, detailing the exact names, functions, and individual components of each piece of equipment in the laboratory. These must have been made with visitors in mind, as there's little in the way of technical jargon that would confuse a layman reader."
    if CrystalSpectrometer.player_understands_device
        say paragraph "With nothing more to gleam from the posters, you turn away from them again."
    else
        CrystalSpectrometer.active = true
        CrystalSpectrometer.player_understands_device = true
        say paragraph "One of the posters depicts the rectangular device that's currently hooked into the computer. Apparently, it's called a \"spectrometer\". The instrument works by splitting light into component wavelengths and casting those bands onto a detector plate, whereupon they are recorded and run against a database. Using this approach, astronomers are able to analyze the chemical composition of any observable object."
        say paragraph "You think back to the glowing crystals in the observatory dome. If the spectrometer can determine what they're made of, the results might just shed some light on what's going on at this facility. You write the idea down on a sticky note for later reference."