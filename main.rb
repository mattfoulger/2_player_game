require 'byebug'
require 'colorize'

require_relative 'Game'
require_relative 'Player'
require_relative 'Round'
require_relative 'Turn'
require_relative 'question'
require_relative 'round_score'
require_relative 'leaders'

game = Game.new
game.round_loop
game.game_end













 



