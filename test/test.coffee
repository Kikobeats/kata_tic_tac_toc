## -- Dependencies -------------------------------------------------------------

should = require 'should'

Board = require '../lib/Board'
Game = require '../lib/Game'

## -- Tests -------------------------------------------------------------

describe 'Tic Tac Toc ::', ->

  it 'board empty without players', ->
    board = new Board()
    board.status().should.eql 0

  it 'print the empty board', ->
    board = new Board()
    board.print().should.eql '---\n---\n---'

  it 'create a new game with empty board and 2 players', ->
    game = new Game()
    game.getBoard().status().should.eql 0
    game.getPlayer1().getId().should.eql 1
    game.getPlayer2().getId().should.eql 2

  it 'player1 moves to first board position', ->
    game = new Game()
    game.movement(player: 1, position: 0)
    game.getBoard().status().should.eql 1
    game.getBoard().print().should.eql '1--\n---\n---'
