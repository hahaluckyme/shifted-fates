# export ThePoundCellEnslaved = new class extends Room
#   @is_player_sitting: false

#   Choices: =>
#     "Look": =>
#       say paragraph "The cell is empty and barren. You don't feel so great."
#     "Sit": if not @is_player_sitting then =>
#       say paragraph "You sit down on the cold floor."
#       @is_player_sitting = true
#     "Stand": if @is_player_sitting then =>
#       say paragraph "You stand on the cold floor."
#       @is_player_sitting = false
