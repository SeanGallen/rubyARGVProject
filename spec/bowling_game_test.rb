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

  def test_if_a_roll_goes_into_the_gutter_the_score_does_not_change
    score = 0
    assert_equal score, @bowlingGame.score
    assert_equal score, @bowlingGame.gutter
    assert_equal 0, @bowlingGame.score
  end

  def test_if_a_pin_is_knocked_down_the_score_increases
    pin =1
    @bowlingGame.roll(pin)
    assert_equal 1, @bowlingGame.score
    pin = 5
    @bowlingGame.roll(pin)
    assert_equal 6, @bowlingGame.score
  end

  def test_end_of_game_message_appears
    string = "Game Over \n The Final Score is #{@bowlingGame.score}"
    assert_equal string, @bowlingGame.end_of_game_message
  end
end
