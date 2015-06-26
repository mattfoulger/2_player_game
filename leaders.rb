def leaders
  @players.sort_by {|player| [player[:wins].to_i, player[:overall_score].to_i] }.reverse
end


def scoreboard
  puts "  Player           Round Wins         Points".yellow
  puts "----------------------------------------------".yellow
  leaders.each do |player|
    string = ""
    string << "   #{player[:name]}"
    until string.length >= 23 do
      string << " "
    end
    string << "#{player[:wins]}"
    until string.length >= 40 do
      string << " "
    end
    string << "#{player[:overall_score]}"
    puts string
  end
end
