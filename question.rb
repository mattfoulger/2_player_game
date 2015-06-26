require_relative 'question_generator_math'
require_relative 'question_generator_geo'


def question(player, type)

  case type
  when "Math"
    question_generator_math
  when "Geography"
    question_generator_geo
  end

  response = gets.chomp

  if response == @answer 
    player.points(5)
    puts "CORRECT!".green + " #{player.name} just earned 5 points."
  else
    player.lives -= 1
    puts "WRONG!".red + " The correct answer is #{@answer}."
    puts "#{player.name} just lost a life."
  end

end
