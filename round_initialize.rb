def round_initialize
  @players.each do |player|
    player[:score] = 0
    player[:lives] = 3
  end

  puts ""
  puts "------------------ROUND #{@round_count}---------------------".yellow
  
  unless @round_count == 1
    puts "Overall Score:"

  end

  puts "----------------------------------------------".yellow

  #randomize who gets to go first this round
  @current_player_index = rand(0..(@player_count - 1))
  puts "#{@players[@current_player_index][:name]} gets to go first this round."
end