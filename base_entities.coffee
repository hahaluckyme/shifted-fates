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
take = (...elems) => Player.inventory.push ...elems

class NPC extends Character
class Room extends Entity