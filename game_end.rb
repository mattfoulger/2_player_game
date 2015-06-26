def game_end

# evaluate winner
  winner = leaders[0]

# final score and message
# TODO: fix pluralization of "wins" if winner only won once
  puts "------------------GAME OVER-------------------".yellow
  puts "#{winner[:name]} won the game with #{winner[:wins]} round wins and #{winner[:score]} points!"
  puts "----------------------------------------------".yellow
  puts ""
  puts "Final Scores:"
  scoreboard
  puts "----------------------------------------------".yellow

  puts "Thanks for playing!"

end