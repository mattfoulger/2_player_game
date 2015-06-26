def game_initialize
  @turn_count = 0
  @players.each do |player|
    player[:score] = 0
    player[:lives] = 3
  end

  puts ""
  puts "-----------NEW GAME-------------"
  if @players.select{|p| p[:wins] > 0}.any?
    puts "The overall score is..."
  end

  @current_player_index = rand(0..(@player_count - 1))
end