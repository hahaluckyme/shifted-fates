Enter: =>
    say paragraph "You look inside of a small, dark closet with some janitorial tools and cleaning chemicals. The space is large enough to stand in, but you see no reason to move past the threshold of the doorframe. A faint chemical scent wafts from the closet."

Choices: =>
    option "Tools": => await scene @Tools
    option "Chemicals": => await scene @Chemicals
    await do choice

Tools: =>
    say paragraph "You see a mop, a bucket, a plunger, a toilet brush, a broom, a vacuum cleaner, clean rags, sponges, disinfectant wipes, toilet paper, paper towels, trash bags, latex gloves, and a feather duster."

Chemicals: =>
    say paragraph "You see large bottles of bleach, ammonia, vinegar, detergent, various cleaners, and disinfectant. Not finding anything of immediate use, you take a step back to clear your nose of the smell of chemicals."