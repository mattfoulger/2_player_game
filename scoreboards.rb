def leaders
  Player.all.sort_by {|player| [player.wins, player.overall_score] }.reverse
end


def scoreboard
  puts "  Player           Round Wins         Points".yellow
  puts "----------------------------------------------".yellow
  leaders.each do |player|
    string = ""
    string << "   #{player.name}"
    until string.length >= 23 do
      string << " "
    end
    string << "#{player.wins}"
    until string.length >= 40 do
      string << " "
    end
    string << "#{player.overall_score}"
    puts string
  end
end


def round_score

  puts "--------------------------------"
  @players.each do |player|
    puts "#{player.name} has #{player.lives} lives and #{player.score} points"
  end
  puts "--------------------------------"

end




