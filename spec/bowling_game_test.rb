require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/bowling_game'

class BowlingGameTest < Minitest::Test
  def setup
    @bowlingGame = BowlingGame.new
  end

  def test_if_it_has_a_starts_with_a_score
    assert_equal 0, @bowlingGame.score
  end
end
