def game_score

puts "--------------------------------"
@players.each do |player|
  puts "#{player[:name]} has #{player[:lives]} lives and #{player[:score]} points"
end
puts "--------------------------------"

end