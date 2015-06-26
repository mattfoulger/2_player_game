def round_end
# evaluate winner and add to his/her win count
  winner = @players.detect{|player| player.lives > 0}
  winner.wins += 1 


# round end score and message
  puts "------------------ROUND OVER------------------".yellow
  puts "  #{winner.name}" + " won Round #{@round_count} with #{winner.score} points!"
  puts "----------------------------------------------".yellow
  puts ""
  puts "Current Scores:"
  scoreboard
  puts "----------------------------------------------".yellow

  @round_count += 1
end

