def round_end
# evaluate winner and add to his/her win count
  winner = @players.detect{|player| player[:lives].to_i > 0}
  winner[:wins] += 1

# final score and message
round_score
  puts "Game Over! #{winner[:name]} won the game with #{winner[:score]} points."

end

