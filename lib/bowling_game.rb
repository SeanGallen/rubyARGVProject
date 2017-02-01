class BowlingGame
  attr_reader :score
  def initialize
    @score = 0
  end

  def roll
    if gutter
      @score
    else
      @score = 10
    end
  end

  def gutter
    true
  end
end
