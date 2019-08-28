name: "Computer Center"

Enter: =>
    say paragraph "A small, well-kept computer center. Long wooden desks have been set up on opposite ends of the room with equidistant workspaces. The system units stowed beneath the desks look more bulky than standard towers, though not so large that they'd seem out of place in an expensive home office. There's also a wireless printer in the corner of the room."
    say paragraph "In the center of the room is a low, square table covered in several piles of technical-looking documents and printouts. The area was most likely used as a shared space for the researchers who manned this facility, or it may have just been a convenient way to offload loose paper."

Choices: =>
    option "Documents": => await scene @Documents
    option "Computers": => await scene @Computers
    option "Printer": => await scene @Printer
    await do choice

Documents: =>
    say paragraph "You pick up one of the stacks and begin to read the researchers' work. If any of these people were involved in your sudden relocation, you might be able to gleam some valuable information from their findings. Unfortunately, the copious technical jargon may as well be a foreign language to you. Even the charts are borderline incomprehensible, featuring all manner of acronyms and numbers without any legend to decipher what they mean. You decide to start skimming over anything not written in plain English to avoid wasting your time on subjects you know nothing about."
    say paragraph "After a while, you find a neatly formatted memo. The memo concerns yearly funding and distribution, outlining their sources of income and expected expenses in great detail. Most of the money is set to flow into wages and facility maintenance, although a good chunk is set aside for miscellaneous fees. To your dismay, there's nothing to be found regarding the crystal-powered machinery in the observatory dome, nor is there any information pertaining to your capture and containment within the futuristic pod."
    say paragraph "You finish browsing through the other documents, but find nothing else of interest. Mentally exhausted, you step away from the central desk."

Computers: =>
    say paragraph "You take a closer look at the computers to determine if any of them are currently active. Attempting to rouse the systems from sleep or turn them on yields no result, so you check the extension strips. The translucent switches are clearly pushed toward the \"ON\" symbols, but there's no backlights to signify that current is flowing through them."

Printer: =>
    say paragraph "The printer is a mid-2000s home office inkjet with a plastic exterior and a supply of blank paper in a slanted tray. It looks a little roughshod, like it was run more often than intended by whoever worked at this facility. You'd think they'd spring for something a little more robust, but decide not to question it."