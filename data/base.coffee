React = require 'react'

game = null

export hook = (comp) =>
  game = comp

buffer = []
export flush = () =>
  if buffer.length is 0
    return
  game.print(buffer)
  buffer = []

# disabled until fixed...
# Function::toStringOld = Function::toString
# Function::toStringBuffer = =>
#   buffers.push ''
#   @()
#   buffer = buffers.pop()
#   return buffer

say = (inner) =>
  if typeof inner is 'string'
    inner = inner.replace 'undefined', ''
    if inner[inner.length-1] in '.!?"'
      inner = inner + ' '

  buffer = <>{buffer}{inner}</>

scene = (inner) =>
  if inner instanceof Scenario
    await game.playScene inner.Start
  else
    await game.playScene inner

speech = (inner) =>
  return '"' + inner + '"'

paragraph = (inner) =>
  flush()
  return inner

add = (object, ...additions) =>
  object.push(...additions)

end = =>
  say paragraph "The end."
  flush()
  game.end()

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

options = {}
option = (outcome_obj) =>
  options = {
    options...
    outcome_obj...
  }

choice = =>
  flush()
  tmp_options = options
  options = {}
  await new Promise (resolve) => game.showChoices tmp_options, resolve

pause = =>
  option "...": =>
  await do choice

placeholder = "<PLACEHOLDER>"

str = 'STR'
dex = 'DEX'
per = 'PER'
int = 'INT'
cha = 'CHA'
luck = 'LUCK'

red = (inner) =>
  <b style={{color: 'red'}}>{inner}</b>

green = (inner) =>
  <b style={{color: 'green'}}>{inner}</b>

roll20 = (attribute, dc) =>
  bonus = switch attribute
    when str then Player.str
    when dex then Player.dex
    when per then Player.per
    when int then Player.int
    when cha then Player.cha
    when luck then Player.luck

  roll = Math.floor Math.random() * 20 + 1
  result = roll + bonus
  passed = result >= dc
  say paragraph "[d20] #{roll} + #{bonus} (#{attribute}) = "
  if passed
    say green "#{result}"
  else
    say red "#{result}"
  say " vs. #{dc}"
  return passed

debug = window.location.search is "?debug"
