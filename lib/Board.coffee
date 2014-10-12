## -- Private -----------------------------------------------------------

SYMBOL = '-'

## -- Class -------------------------------------------------------------

class Board

  constructor: ->
    console.log 'test'.repeat(1)
    @_state = 0
    @_cells = new Array(SYMBOL,SYMBOL,SYMBOL,SYMBOL,SYMBOL,SYMBOL,SYMBOL,SYMBOL,SYMBOL)



  status: -> @_state

  print: ->
    @_cells.splice 3, 0, '\n'
    @_cells.splice 7, 0, '\n'
    @_cells.join ''

  registerMovement: (obj) ->
    @_state++
    @_cells[obj.position] = obj.player

## -- Exports ----------------------------------------------------------

exports = module.exports = Board
