class Player
  attr_accessor :score, :lives

  def initialize
    @lives = 3
    @turn = 1
    @score = 0
  end

  def lose_life
    @lives = lives - 1
  end

end