name: "Mountain"

# Legend
# Acronyms on the map are linked to room file names
# Acronyms use the first three letters of a single-world room
# Acronyms use the first letter of each word for a multi-word room

LC  = MountainLoganCamp
OBS = MountainObservatory
T1  = MountainTrail1
T2  = MountainTrail2
T3  = MountainTrail3

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
  [   ,   ,OBS]
  [   ,   ,'|']
  [   ,   , T1]
  [   ,   ,'|']
  [ LC,'-', T2]
  [   ,   ,'|']
  [   ,   , T3]
]

# Additional Exits
