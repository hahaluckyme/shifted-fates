name: "Observatory"

# Legend
# Acronyms on the map are linked to room file names
# Acronyms use the first three letters of a single-world room
# Acronyms use the first letter of each word for a multi-word room

CAF = ObservatoryCafeteria
CC  = ObservatoryComputerCenter
ENT = ObservatoryEntrance
GS  = ObservatoryGiftShop
H1  = ObservatoryHallway1
H2  = ObservatoryHallway2
H3  = ObservatoryHallway3
H4  = ObservatoryHallway4
H5  = ObservatoryHallway5
H6  = ObservatoryHallway6
JC  = ObservatoryJanitorsCloset
LIB = ObservatoryLibrary
LOU = ObservatoryLounge
OBS = ObservatoryObservatory
REC = ObservatoryReception
RES = ObservatoryRestrooms
RL  = ObservatoryResearchLab

# Map
# The map is a matrix grid
#     = empty coordinate
# ABC = acronym for a room defined in the legend
# '|' = north-south connection
# '-' = west-east connection
# '^' = one-way north connection (no exit back)
# '>' = one-way east connection (no exit back)
# '<' = one-way west connection (no exit back)
# 'v' = one-way south connection (no exit back)

Grid: [
  [   ,   ,   ,   ,OBS,   ,   ,   ,   ]
  [   ,   ,   ,   ,'|',   ,   ,   ,   ]
  [   ,   , JC,'-', H1,'-', CC,   ,   ]
  [   ,   ,   ,   ,'|',   ,   ,   ,   ]
  [   ,   ,RES,'-', H2,'-', GS,   ,   ]
  [   ,   ,   ,   ,'|',   ,   ,   ,   ]
  [ RL,'-', H3,'-', H4,'-', H5,'-',LOU]
  [   ,   ,   ,   ,'|',   ,   ,   ,   ]
  [   ,   ,LIB,'-', H6,'-',CAF,   ,   ]
  [   ,   ,   ,   ,'|',   ,   ,   ,   ]
  [   ,   ,   ,   ,REC,   ,   ,   ,   ]
  [   ,   ,   ,   ,'|',   ,   ,   ,   ]
  [   ,   ,   ,   ,ENT,   ,   ,   ,   ]
]

# Additional Exits
