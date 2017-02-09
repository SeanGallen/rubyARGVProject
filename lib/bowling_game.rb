class BowlingGame
  attr_reader :pointsHolder

  def initialize
    @pointsHolder = []
    @frameIndex = 0
  end

  def score
    sum = 0
    if @pointsHolder.empty?
    else
      @pointsHolder.each { |a| sum += a }
    end
    sum
  end

  def roll(pin)
    @pointsHolder[@frameIndex] = pin
    @frameIndex += 1
  end

  def end_of_game_message
    "Game Over \n The Final Score is #{score}"
  end
end
