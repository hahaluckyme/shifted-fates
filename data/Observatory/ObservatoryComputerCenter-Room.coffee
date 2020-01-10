name: "Computer Center"

Enter: =>
    say paragraph "A well-kept computer center. Long wooden desks have been set up on opposite ends of the room with equidistant workspaces. The system units stowed beneath the desks look bulky and expensive. In the center of the room is a square table with a wireless printer and several piles of documents and printouts."

Choices: =>
    option "Documents": => await scene @Documents
    option "Computers": => await scene @Computers
    option "Printer": => await scene @Printer
    await do choice

Documents: =>
    if @player_searched_documents
        say paragraph "You've already rifled through these documents. It's unlikely that you'll find anything more on a second pass."
    else
        @player_searched_documents = true
        say paragraph "You pick up a stack of paper and begin to read through the researchers' work. Most of the content is technical jargon that goes right over your head, but you continue reading in the hopes of finding anything relevant to your kidnapping."
        say paragraph "After a while, you come across a neatly formatted memo. The memo discusses yearly funding and lists sources of expenses. Most of the money is set to flow into wages and facility maintenance, although a large portion is set aside for miscellaneous fees. To your dismay, you don't find anything relevant to your own situation, and you step away from the desk again without anything to show for your efforts."

Computers: =>
    say paragraph "You take a closer look at the computers. Despite being plugged in, none of them seem to be getting power right now."

Printer: =>
    say paragraph "A home office printer with a full supply of blank paper. It looks a little roughshod, like it was used more often than intended."