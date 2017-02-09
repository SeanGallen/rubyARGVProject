class BowlingGame
  attr_reader :score
  def initialize
    @score = 0
  end

  def roll(pin)
    @score += pin
  end

  def gutter
    pin = 0
  end

  def end_of_game_message
    "Game Over \n The Final Score is #{score}"
  end
end
