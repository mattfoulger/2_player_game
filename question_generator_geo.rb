require_relative 'geo_capitals'

def question_generator_geo

  range = geo_capitals.length - 1
  pairs = []

  4.times do |i|
    pair = @geo_capitals[rand(0..range)]
    pairs << { number: (i+1), country: pair[0], city: pair[1] }
  end

  question_pair = pairs.sample

  q_type = ["q_city", "q_country"].sample

  case q_type
  when "q_city"
    @answer = question_pair[:number].to_s
    puts "Which city is the capital of #{question_pair[:country]}?"
    pairs.each do |pair|
      puts "#{pair[:number]}. #{pair[:city]}"
    end
  when "q_country"
    @answer = question_pair[:number].to_s
    puts "#{question_pair[:city]} is the capital of which country?"
    pairs.each do |pair|
      puts "#{pair[:number]}. #{pair[:country]}"
    end
  end
  @answer
end