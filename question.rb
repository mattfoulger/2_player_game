require_relative 'geo_capitals'

class Question

  attr_accessor 'player', 'answer'

  def initialize(player)
    @player = player
    result
  end

  def ask
    # puts out a question and return answer
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