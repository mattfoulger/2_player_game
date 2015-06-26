def game_end

# evaluate winner
  winner = @players.sort_by {|player| [player[:wins].to_i, player[:score].to_i] }[-1]

# final score and message
# TODO: fix pluralization of "wins" if winner only won once
  puts "------------------GAME OVER-------------------".yellow
  puts "#{winner[:name]} won the game with #{winner[:wins]} wins and #{winner[:score]} points!".yellow
  puts "----------------------------------------------".yellow

  puts "Thanks for playing!"

end