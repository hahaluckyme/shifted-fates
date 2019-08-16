# Legend

CL  = ObservatoryComputerLab
GS  = ObservatoryGiftShop
HE  = ObservatoryHallwayEast
HFE = ObservatoryHallwayFarEast
HI  = ObservatoryHallwayIntersection
HN  = ObservatoryHallwayNorth
HS  = ObservatoryHallwaySouth
HW  = ObservatoryHallwayWest
JC  = ObservatoryJanitorsCloset
LAB = ObservatoryLaboratory
LIB = ObservatoryLibrary
M   = ObservatoryMain
R   = ObservatoryRestrooms
RR  = ObservatoryReceptionRoom
SE  = ObservatoryStaffEntrance
STU = ObservatoryStudy
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
  [   ,   ,   ,   ,   ,   ,   ,   ,LAB,   ,   ,   ,   ,   ,   ]
  [   ,   ,   ,   ,   ,   ,   ,   ,'|',   ,   ,   ,   ,   ,   ]
  [   ,   ,   ,   ,   ,   ,STU,'-', HN,   ,  R,   , JC,   ,   ]
  [   ,   ,   ,   ,   ,   ,'|',   ,'|',   ,'|',   ,'|',   ,   ]
  [ VE,'-', RR,'-', TH,'-', HW,'-', HI,'-', HE,'-',HFE,'-',  M]
  [   ,   ,   ,   ,   ,   ,'|',   ,'|',   ,'|',   ,'|',   ,   ]
  [   ,   ,   ,   ,   ,   ,LIB,   , HS,   , GS,   , CL,   ,   ]
  [   ,   ,   ,   ,   ,   ,   ,   ,'|',   ,   ,   ,   ,   ,   ]
  [   ,   ,   ,   ,   ,   ,   ,   , SE,   ,   ,   ,   ,   ,   ]
]

# Additional Exits

ObservatoryJanitorsCloset:
  option Up: => await Player.location = Observatory2FHallway
