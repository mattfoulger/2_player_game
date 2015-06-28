require_relative 'question_generator_math'
require_relative 'question_generator_geo'

class Question

  attr_reader 'type'
  attr_accessor 'player', 'answer'

  def initialize(player, type)
    @player = player
    @type = type
    result
  end

  def ask
    case type
    when "Math"
      question_generator_math
    when "Geography"
      question_generator_geo
    end
  end

  def listen
    gets.chomp
  end

  def correct?
    ask == listen
  end

  def result
    if correct? 
      player.points(5)
      puts "CORRECT!".green + " #{player.name} just earned 5 points."
    else
      player.lives -= 1
      puts "WRONG!".red + " The correct answer is #{answer}."
      puts "#{player.name} just lost a life."
    end
  end

end