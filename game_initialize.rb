def game_initialize
  @players = []
  puts "How many players?"
  @player_count = gets.chomp.to_i

  @player_count.times do |number|
    puts "Player #{number + 1}, please enter your name"
    name = gets.chomp
    @players << {name: name, lives: 0, score: 0, overall_score: 0, wins: 0}
  end
end