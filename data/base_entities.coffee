class Entity
  @get: (props) =>
    for prop, func of props
      Object.defineProperty @prototype, prop,
        configurable: true
        get: func
  @set: (props) =>
    for prop, func of props
      Object.defineProperty @prototype, prop,
        configurable: true
        set: func

class Character extends Entity
  @get has_cock: => @sex is 'male'
  @get has_cunt: => @sex is 'female'
  @set location: (target) => await game.goTo target

class Scenario extends Entity

export Player = new class extends Character
  inventory: []
  sex: "male"
  name: "Player"
  str: 0
  dex: 0
  per: 0
  int: 10
  cha: 0
  luck: 0

take = (...elems) => Player.inventory.push ...elems

class NPC extends Character
class Room extends Entity
  discovered: false

  GridChoices: =>
    if @South then option South: => await do @South
    if @North then option North: => await do @North
    if @West then option West: => await do @West
    if @East then option East: => await do @East

  Choices: =>
    await do choice

class Quest extends Entity

class Zone extends Entity
  constructor: ->
    super()
    for row, gy in @Grid
      for elem, gx in row
        # local scoping to freeze variables
        `let y = gy`
        `let x = gx`
        if elem instanceof Room
          elem.zone = @
        else if typeof elem is 'string'
          switch elem
            when '|'
              @Grid[y-1][x].South = => await Player.location = @Grid[y+1][x]
              @Grid[y+1][x].North = => await Player.location = @Grid[y-1][x]
            when '-'
              @Grid[y][x-1].East = => await Player.location = @Grid[y][x+1]
              @Grid[y][x+1].West = => await Player.location = @Grid[y][x-1]

    for prop of @
      console.log(prop)