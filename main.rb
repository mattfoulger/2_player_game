require 'byebug'
require 'colorize'
require './question'
require './game_score'
require './game_initialize'

@players = []
puts "How many players?"
@player_count = gets.chomp.to_i

@player_count.times do |number|
  puts "Player #{number + 1}, please enter your name"
  name = gets.chomp
  @players << {name: name, lives: 0, score: 0, overall_score: 0, wins: 0}
end

@no_more = false

# binding.byebug

# this method is called by the turn loop to see if the game is still on
def playing?
  @players.select{|p| p[:lives] > 0}.count > 1
end

def game
  
  #set up the game
  game_initialize

  # turn loop, calls a turn then moves to the next player
  while playing? do
    turn(@current_player_index)
    unless @current_player_index == @player_count - 1
      @current_player_index += 1
    else
      @current_player_index = 0
    end
  end

  winner = @players.detect{|player| player[:lives].to_i > 0}
  game_score
  puts "Game Over! #{winner[:name]} won the game with #{winner[:score]} points."
  puts "Would you like to play again? Y/N"
  response = gets.chomp.downcase
  if response == "n"
    @no_more = true
  end
end

def turn(player_index)
  @current_player = @players[player_index]
  return unless @current_player[:lives].to_i > 0
  game_score
  puts "#{@current_player[:name]}, it's your turn!"
  question
end

while(true) 
  game
  break if @no_more == true
end

 



