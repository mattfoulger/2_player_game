require_relative 'question_generator_math'
require_relative 'question_generator_geo'


def question 

  unless @round_count % 2 == 0
    question_generator_math
  else
    question_generator_geo
  end

  response = gets.chomp

  if response == @answer 
    @current_player[:score] += 5
    puts "CORRECT!".green + " #{@current_player[:name]} just earned 5 points."
  else
    @current_player[:lives] -= 1
    puts "WRONG!".red + " #{@current_player[:name]} just lost a life."
  end



end
