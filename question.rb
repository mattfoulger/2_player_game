def question 


answer = "a"

puts ""
puts "Hey, so what's the answer?"
response = gets.chomp

if response == answer 
  @current_player[:score] += 5
  puts "CORRECT! #{@current_player[:name]} just earned 5 points."
else
  @current_player[:lives] -= 1
  puts "WRONG! #{@current_player[:name]} just lost a life."
end

end
