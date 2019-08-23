# Legend
# Acronyms on the map are linked to room file names
# Acronyms use the first three letters of a single-world room
# Acronyms use the first letter of each word for a multi-word room

CAF = ObservatoryCafeteria
CC  = ObservatoryComputerCenter
GS  = ObservatoryGiftShop
HE  = ObservatoryHallwayEast
HFE = ObservatoryHallwayFarEast
HI  = ObservatoryHallwayIntersection
HN  = ObservatoryHallwayNorth
HS  = ObservatoryHallwaySouth
HW  = ObservatoryHallwayWest
JC  = ObservatoryJanitorsCloset
LIB = ObservatoryLibrary
OBS = ObservatoryObservatory
REC = ObservatoryReception
RES = ObservatoryRestrooms
RL  = ObservatoryResearchLab
SE  = ObservatoryStaffEntrance
VE  = ObservatoryVisitorEntrance

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
  [   ,   ,   ,   ,   ,   , RL,   ,   ,   ,   ,   ,   ]
  [   ,   ,   ,   ,   ,   ,'|',   ,   ,   ,   ,   ,   ]
  [   ,   ,   ,   ,LIB,'-', HN,   ,RES,   , JC,   ,   ]
  [   ,   ,   ,   ,'|',   ,'|',   ,'|',   ,'|',   ,   ]
  [ VE,'-',REC,'-', HW,'-', HI,'-', HE,'-',HFE,'-',OBS]
  [   ,   ,   ,   ,'|',   ,'|',   ,'|',   ,'|',   ,   ]
  [   ,   ,   ,   ,CAF,   , HS,   , GS,   , CC,   ,   ]
  [   ,   ,   ,   ,   ,   ,'|',   ,   ,   ,   ,   ,   ]
  [   ,   ,   ,   ,   ,   , SE,   ,   ,   ,   ,   ,   ]
]

# Additional Exits
