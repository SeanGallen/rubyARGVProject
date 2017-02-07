class BowlingGame
  attr_reader :score, :frame
  def initialize
    @score = 0
    @frame = 0
  end

  def roll
    if gutter
      score
    else
      score = 10
    end
  end

  def gutter
    true
  end

  def end_of_game_message
    "Game Over \n The Final Score is #{@score}"
  end
end
