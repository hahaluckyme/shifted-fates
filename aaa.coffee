buffers = []
stdout = ''

game = require('game');

str = 'STR'
dex = 'dex'
per = 'PER'
int = 'INT'
cha = 'CHA'
luck = 'LUCK'

# disabled until fixed...
# Function::toStringOld = Function::toString
# Function::toStringBuffer = =>
#   buffers.push ''
#   @()
#   buffer = buffers.pop()
#   return buffer

export flush = (force) =>
  if stdout.trim() is ''
    return
  lines = stdout.split '\n'

  if not force
    for line in lines[0...-1]
      game.print line
    [..., stdout] = lines
  else
    for line in lines
      game.print line
    stdout = ''

say = (inner) =>
  if typeof inner is 'function'
    inner()
  else if inner != null
    inner = '' + inner
    inner = inner.replace 'undefined', ''
    if inner[inner.length-1] in '.!?"'
      inner = inner + ' '

    if buffers.length is 0
      stdout += ''+inner
      flush()
    else
      buffers[buffers.length-1] += inner

scene = (inner) =>
  if inner instanceof Scenario
    game.playScene inner.Start
  else
    game.playScene inner

speech = (inner) =>
  return '"' + inner + '"'

paragraph = (inner) =>
  return '\n' + inner

add = (object, ...additions) =>
  object.push(...additions)

end = =>
  await Player.location = Nowhere
  say paragraph "The end."

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

delay = (seconds) =>
  flush(true)
  new Promise (r) => setTimeout(r, seconds * 1000);

oneof = (...args) =>
  if typeof args[0] is 'function'
    outcomes = args[0]()
    keys = Object.keys outcomes
    random_key_index = Math.floor Math.random() * keys.length
    random_key = keys[random_key_index]
    await scene outcomes[random_key]
  else
    outcomes = args
    random_key_index = Math.floor Math.random() * outcomes.length
    return outcomes[random_key_index]

choice = (choices) =>
  flush(true)
  if typeof choices is 'function'
    choices = choices()
  return new Promise (resolve) => game.setChoices choices, resolve

pause = =>
  choice =>
    "...": =>

roll20 = (attribute, dc_outcomes_func) =>
  bonus = switch attribute
    when str then Player.str
    when dex then Player.dex
    when per then Player.per
    when int then Player.int
    when cha then Player.cha
    when luck then Player.luck

  dc_outcomes = dc_outcomes_func()
  roll = Math.floor Math.random() * 20 + 1
  result = roll + bonus
  dcs = (Object.keys dc_outcomes).map (e) => parseInt(e)

  max_dc = Math.max ...dcs.filter (e) => result >= e
  min_dc = Math.min ...dcs
  if max_dc of dc_outcomes
    if max_dc is min_dc
      say paragraph "Dice: #{roll} + #{bonus} (#{attribute}) = #{result} (failed)"
    else
      say paragraph "Dice: #{roll} + #{bonus} (#{attribute}) = #{result} (success)"
    await scene dc_outcomes[max_dc]
  else
    say paragraph "Dice: #{roll} + #{bonus} (#{attribute}) = #{result} (failed) "
    await scene dc_outcomes[min_dc]
