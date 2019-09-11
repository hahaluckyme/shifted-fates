name: "Library"

Enter: =>
    say paragraph "The library is home to rows upon rows of fully stocked bookshelves. All of the material here appears to be nonfiction centered around astronomy. There's biographies of famous historical figures, the history of technological advances in the field, a section of journals pertaining to the discovery of new celestial bodies, and even a popular science section for the general public. The air here is saturated with the musty scent of old paper, a relaxing atmosphere to sit down and study."

Choices: =>
    option "Biographies": => await scene @Biographies
    option "Technological Advances": => await scene @TechnologicalAdvances
    option "Recent Discoveries": => await scene @RecentDiscoveries
    option "Popular Science": => await scene @PopularScience
    await do choice

Biographies: =>
    say paragraph "You pick out one of the biographies at random and find a seat on a cozy armchair."

TechnologicalAdvances: =>
    if CrystalSpectrograph.player_checked_device = true
        CrystalSpectrograph.player_understands_device = true
        say paragraph "Recalling the strange device you found in the research lab, you grab the book called \"Astronomy: Technology through Time\". You lug the heavy tome toward the nearest desk, pull up a chair, and take a seat to start looking at the illustrations. Chances are you'll eventually find something similar to the device you saw earlier."
        say paragraph "After a couple minutes, you happen upon something promising. The device doesn't look exactly the same, but it's close enough to seem like they share an underlying function. A bold header sensationally proclaims, \"How the Spectrograph changed our understanding of the universe forever\". Reading on, you're forced to squint to parse through the jargon. Its fundamental purpose appears to be determining the exact chemical composition of a material. The instrument accomplishes this by splitting light into component wavelengths and casting those bands onto a detector plate, whereupon the exact frequency of each band is recorded and optionally run against a database. Using this approach, astronomers are able to analyze the exact chemical composition of any observable object."
        say paragraph "The section continues on about the various different forms of spectrums, as well as the difference between spectrometers, spectroscopes, and spectrographs. Once finished reading, you return the book to its spot on the shelf and resolve to take another look at the spectrograph in the research lab."
    else
        say paragraph "You grab a book called \"Astronomy: Technology through Time\". The tome is surprisingly heavy, requiring two arms to carry without straining yourself. You lug the book toward the nearest wooden desk, pull up a chair, and take a seat to start reading."

RecentDiscoveries: =>
    say paragraph "You pick out one of the journals at random and find a seat on a cozy armchair."

PopularScience: =>
    say paragraph "You grab a book called \"A Beginner's Guide to Astronomy\" and find a seat on a cozy armchair."