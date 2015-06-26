def turn(player, type)
    return unless player.lives > 0
    round_score
    puts "#{player.name}, it's your turn!"
    question(player, type)
end