def round_end
# evaluate winner and add to his/her win count
  winner = @players.detect{|player| player[:lives].to_i > 0}
  winner[:wins] += 1

# final score and message
  puts "------------------ROUND OVER------------------".yellow
  puts "#{winner[:name]} won Round #{@round_count} with #{winner[:score]} points!".yellow
  puts "----------------------------------------------".yellow

  @round_count += 1
end

