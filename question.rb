require_relative 'geo_capitals'

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

  def question_generator_math
    num1 = rand(0..20)
    num2 = rand(0..20)

    operation = ["add", "sub", "mult", "div"].sample

    case operation
    when "add"
      question = "#{num1} + #{num2}"
      answer = (num1 + num2).to_s
    when "sub"
      question = "#{num1} - #{num2}"
      answer = (num1 - num2).to_s
    when "mult"
      question = "#{num1} x #{num2}"
      answer = (num1 * num2).to_s
    when "div"
      question = "#{num1 * num2} / #{num2}"
      answer = num1.to_s
    end

    puts "What is " + question + "?"
    answer
  end

  def question_generator_geo

    range = geo_capitals.length - 1
    pairs = []

    4.times do |i|
      pair = geo_capitals[rand(0..range)]
      pairs << { number: (i+1), country: pair[0], city: pair[1] }
    end

    question_pair = pairs.sample

    q_type = ["q_city", "q_country"].sample

    case q_type
    when "q_city"
      answer = question_pair[:number].to_s
      puts "Which city is the capital of #{question_pair[:country]}?"
      pairs.each do |pair|
        puts "#{pair[:number]}. #{pair[:city]}"
      end
    when "q_country"
      answer = question_pair[:number].to_s
      puts "#{question_pair[:city]} is the capital of which country?"
      pairs.each do |pair|
        puts "#{pair[:number]}. #{pair[:country]}"
      end
    end
    answer
  end

end