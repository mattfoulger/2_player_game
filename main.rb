require 'byebug'
require 'colorize'

require_relative 'game'
require_relative 'player'
require_relative 'round'
require_relative 'question'
require_relative 'question_math'
require_relative 'question_geo'
require_relative 'scoreboards'

game = Game.new
game.round_loop
game.game_end










 



