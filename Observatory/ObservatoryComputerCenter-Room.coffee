Enter: =>
    say paragraph "A small, well-kept computer center. Long wooden desks have been set up on opposite ends of the room with equidistant multi-monitor workspaces. The system units stowed beneath the desks look more bulky than standard towers, though not so large that they'd seem out of place in an expensive home office. It's all appreciably high-end without feeling like a server cluster; whoever was in charge of distributing funds for the facility must have weighed the right balance between price point and processing power."
    say paragraph "In the center of the room is a low, square table covered in several piles of technical-looking documents and printouts. The area was most likely used as a shared space for the researchers who manned this facility, or it may have just been a convenient way to offload loose paper without cluttering the primary work area. Regardless of the original purpose, the desk remains a treasure trove of data that you doubt will be of any use for a layman like yourself."

Choices: =>
    option "Light Switch": => await scene @LightSwitch
    option "Documents": => await scene @Documents
    option "Computers": => await scene @Computers
    await do choice

LightSwitch: =>
    say paragraph "You move toward the wall near the entrance of the room and flip up the switch. The ceiling lights fail to turn on, so you flick the switch back and forth a few times, verifying that it wasn't just a fluke or temporary outage. You can't help but wonder whether all the bulbs are nonfunctional, a breaker switch was activated, or if the building has lost power entirely. After one last attempt for good measure, you mindfully flip the switch back to the \"OFF\" position and return your focus to the rest the room."

Documents: =>
    say paragraph "Determined to find out how and why you ended up here, you pick up one of the stacks and begin to read the researchers' work. If any of these people were involved in your sudden relocation, you might be able to gleam some valuable information from their findings. Unfortunately, the copious technical jargon may as well be a foreign language to you. Even the charts are borderline incomprehensible, featuring all manner of acronyms and values without any legend to decipher what they mean. You decide to start skimming over anything not written in plain English to avoid wasting your time on subjects you know nothing about."
    say paragraph "After a while, you find a neatly formatted memo. The memo concerns yearly funding and distribution, outlining their sources of income and expected expenses in great detail. Most of the money is set to flow into wages and facility maintenance, although a good chunk is set aside for miscellaneous fees. To your dismay, there's nothing to be found regarding the crystal-powered machinery in the observatory dome, nor is there any information pertaining to your capture and containment within the strange pod."
    say paragraph "You finish browsing through the other documents, but find nothing else of interest. Mentally exhausted, you step away from the central desk and think about your next course of action."

Computers: =>
    say paragraph "You take a closer look at the high-end computers to determine if any of them are currently active. Attempting to rouse the systems from sleep or turn them on yields no result, so you check the shared extension strips on either end of the room. The translucent switches are clearly pushed toward the \"ON\" symbols, but there's no backlights to signify that current is flowing through them. Odd."