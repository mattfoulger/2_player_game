class Game
  class BadPlayerCountError < StandardError
  end
  attr_reader :player_count
  attr_accessor :round_count
  
  def initialize(player_count)
    @player_count = player_count
    @round_count = 1
  end

  def gather_players
    player_count.times do |number|
      puts "Player #{number + 1}, please enter your name"
      name = gets.chomp
      Player.create(name)
    end
  end

  def round_loop
    while(true) 
      if round_count % 2 == 0
        type = "Geography"
      else
        type = "Math"
      end
      round = Round.create(Player.all, type, round_count)
      break if round.round_end
      self.round_count += 1
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

  class << self
    def create(player_count)
      
      begin
        raise BadPlayerCountError, "Please enter a number greater than 1." if player_count.to_i < 2
        game = Game.new(player_count.to_i)
      end
    end
  end
end