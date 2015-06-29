class Game

  def initialize
  
    puts "How many players?"
    @player_count = gets.chomp.to_i

    # TODO: figure out single player mode!
    #       handle non number input for how many players
    if @player_count == 1
      puts "Must play with a minimum of two players."
      @player_count = 2
    end

    @player_count.times do |number|
      puts "Player #{number + 1}, please enter your name"
      name = gets.chomp
      Player.create(name)
    end

    @round_count = 1
    
  end

  def round_loop
    while(true) 
      if @round_count % 2 == 0
        type = "Geography"
      else
        type = "Math"
      end
      round = Round.new(Player.all, type, @round_count)
      round.turn_loop
      break if round.round_end
      @round_count += 1
    end
  end

  def game_end

    # evaluate winner
    winner = leaders[0]

    # final score and message
    # TODO: fix pluralization of "wins" if winner only won once
    puts "------------------GAME OVER-------------------".yellow
    puts "#{winner.name} won the game with #{winner.wins} round wins and #{winner.overall_score} points!"
    puts "----------------------------------------------".yellow
    puts ""
    puts "Final Scores:"
    scoreboard
    puts "----------------------------------------------".yellow

    puts "Thanks for playing!"

  end


end