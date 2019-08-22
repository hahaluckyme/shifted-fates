# Legend

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
M   = ObservatoryMain
REC = ObservatoryReception
RL  = ObservatoryResearchLab
RR  = ObservatoryRestrooms
SE  = ObservatoryStaffEntrance
TH  = ObservatoryTransitHouse
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
  [   ,   ,   ,   ,   ,   ,   ,   , RL,   ,   ,   ,   ,   ,   ]
  [   ,   ,   ,   ,   ,   ,   ,   ,'|',   ,   ,   ,   ,   ,   ]
  [   ,   ,   ,   ,   ,   ,LIB,'-', HN,   , RR,   , JC,   ,   ]
  [   ,   ,   ,   ,   ,   ,'|',   ,'|',   ,'|',   ,'|',   ,   ]
  [ VE,'-',REC,'-', TH,'-', HW,'-', HI,'-', HE,'-',HFE,'-',  M]
  [   ,   ,   ,   ,   ,   ,'|',   ,'|',   ,'|',   ,'|',   ,   ]
  [   ,   ,   ,   ,   ,   ,CAF,   , HS,   , GS,   , CC,   ,   ]
  [   ,   ,   ,   ,   ,   ,   ,   ,'|',   ,   ,   ,   ,   ,   ]
  [   ,   ,   ,   ,   ,   ,   ,   , SE,   ,   ,   ,   ,   ,   ]
]

# Additional Exits
