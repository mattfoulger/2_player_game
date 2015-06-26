class Player

  attr_reader :name
  attr_accessor :score, :overall_score, :wins, :lives

  def initialize(name)
    @name = name
    @score = 0
    @overall_score = 0
    @wins = 0
    @lives = 3
  end

  # use this class instead of attr because we want to adjust
  #  score as well as overall overall_score
  def points(value)
    @score += value
    @overall_score += value
  end

end
