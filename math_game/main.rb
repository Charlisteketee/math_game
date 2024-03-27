require_relative 'player'
require_relative 'question'
require_relative 'game'

#initialize players
player1 = Player::Player.new("Player1")
player2 = Player::Player.new("Player2")

#initialize game
game = Game::Game.new(player1, player2)

#start the game
game.start

