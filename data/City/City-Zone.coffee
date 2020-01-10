name: "City"

# Legend
# Acronyms on the map are linked to room file names
# Acronyms use the first three letters of a single-world room
# Acronyms use the first letter of each word for a multi-word room

OUT = CityStreetOutskirts
CC  = CityCenter
HH  = HuskyHouse

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
  [   ,   ,OUT,   ,   ]
  [   ,   ,'|',   ,   ]
  [   ,   , CC,'-', HH]
]

# Additional Exits
