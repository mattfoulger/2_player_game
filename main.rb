require 'byebug'
require 'colorize'

require_relative 'game'
require_relative 'player'
require_relative 'round'
require_relative 'question'
require_relative 'question_math'
require_relative 'question_geo'
require_relative 'scoreboards'

puts "How many players?"
player_count = gets.chomp.to_i

game = Game.create(player_count)
game.gather_players
game.round_loop
game.game_end










 



