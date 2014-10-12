## -- Dependencies ------------------------------------------------------

Board  = require './Board'
Player = require './Player'

## -- Class -------------------------------------------------------------

class Game

  constructor: ->
    @_board = new Board()
    @_player1 = new Player(1)
    @_player2 = new Player(2)

  getBoard: -> @_board
  getPlayer1: -> @_player1
  getPlayer2: -> @_player2

  movement: (obj) ->
    @_board.registerMovement(obj)

## -- Exports ----------------------------------------------------------

exports = module.exports = Game
