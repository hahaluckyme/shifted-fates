name: "Research Lab"

SpectrometerDescription: =>
  if CrystalSpectrometer.player_made_plan
  then "spectrometer"
  else "device you don't recognize"

Enter: =>
    say paragraph "You are standing in a medium-sized research lab. The room is not as sterile-looking as you'd expect from a laboratory, a mix of beige walls, tan floors, and light gray counters. Several posters have been hung up on the walls that give instructions on how to handle the equipment. A computer has been set up on one of the desks, the system unit hooked up to a #{do @SpectrometerDescription}. There's a filing cabinet beside one of the desks that's sitting slightly ajar."
    say paragraph "Unlike the room you woke up in, you do not see anything out of the ordinary. There are no crystal-powered machines here and nothing resembling deliberate vandalism like what you saw in the observatory dome."

Choices: =>
    option "Computer": => await scene @Computer
    option "Filing Cabinet": => await scene @FilingCabinet
    if CrystalSpectrometer.player_made_plan
        option "Spectrometer": => await scene @Spectrometer
    else
        option "Strange Device": => await scene @Spectrometer
    await do choice

Computer: =>
    say paragraph "You take a closer look at the computer. The system unit is a medium-sized tower that's been sequestered under the desk for space. Hooked up to it is an LCD monitor, a wired mouse, a simple black keyboard, and a #{do SpectrometerDescription}. The hardware is nothing remarkable, most likely used by the researchers for browsing, printing, or data entry while more intensive tasks are handled elsewhere."
    if @player_knows_power_is_out
        say paragraph "You try to turn on the computer or monitor, but power is still out in this room."
    else
        @player_knows_power_is_out = true
        say paragraph "You attempt to turn on the system unit, then the monitor, but to no avail. You check the wall outlet where the cords lead to, but plugging the connectors into different sockets doesn't seem to fix anything. Looks like power isn't reaching this room at all."

FilingCabinet: =>
    say paragraph "PLACEHOLDER"

Poster: =>
    if CrystalSpectrometer.player_made_plan
        say paragraph "You take another look at the posters on the walls. The writing on them is surprisingly clear and concise, detailing the exact names, functions, and individual components of each piece of equipment in the laboratory. These must have been made with visitors in mind, as there's little in the way of technical jargon that would confuse a layman reader."
        say paragraph "With nothing more to gleam from them, you turn away from the posters."
    else
        CrystalSpectrometer.active = true
        CrystalSpectrometer.player_checked_device = true
        CrystalSpectrometer.player_made_plan = true
        say paragraph "You take a look at the posters on the walls. The writing on them is surprisingly clear and concise, detailing the exact names, functions, and individual components of each piece of equipment in the laboratory. These must have been made with visitors in mind, as there's little in the way of technical jargon that would confuse a layman reader."
        say paragraph "One of the posters in particular catches your eye. The contents pertain to the rectangular device that's currently hooked into the computer. Apparently, it's called a \"spectrometer\". The instrument works by splitting light into component wavelengths and casting those bands onto a detector plate, whereupon they are recorded and run against a database. Using this approach, astronomers are able to analyze the chemical composition of any observable object."
        say paragraph "You think back to the glowing crystals in the observatory dome. The spectrometer should be able to analyze what they're made of. Maybe the results will shed some light on what's going on at this facility? Unfortunately, you don't recall the observatory deck having any standard electrical outlets, so you'd need to bring a sample shard to the research lab instead. In addition, both the spectrometer and the computer it's hooked up to must be powered on. A tenuous plan in mind, you write down what you'll need on a sticky note and take it with you for later reference."

Spectrometer: =>
    if not CrystalSpectrometer.player_checked_device
        CrystalSpectrometer.player_checked_device = true
        say paragraph "A strange, rectangular device with cords leading out of it on either end. You have not the faintest idea what this device is or how to operate it."
    else if not CrystalSpectrometer.player_made_plan
        say paragraph "A strange, rectangular device with cords leading out of it on either end. You still don't know what this device is or how to operate it."
    else if not CrystalSpectrometer.complete
        say paragraph "The spectrometer sits idle."