def game_initialize
  @players = []
  puts "How many players?"
  @player_count = gets.chomp.to_i
  
  # TODO: figure out single player mode!
  #       handle non number input for how many players
  if @player_count == 1
    puts "Must play with a minimum of two players."
    @player_count = 2
  end

  @player_count.times do |number|
    puts "Player #{number + 1}, please enter your name"
    name = gets.chomp
    @players << Player.new(name)
  end

  @round_count = 1
end