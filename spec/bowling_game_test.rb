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

  def test_game_starts_at_the_1st_frame
    assert_equal 0, @bowlingGame.frame
  end

  def test_a_bowling_ball_roll_can_change_the_score
  end

  def test_a_gutter_ball_does_not_change_the_score
    score = 0
    assert_equal score, @bowlingGame.score
    assert_equal true, @bowlingGame.gutter
    assert_equal 0, @bowlingGame.score
  end

  def test_if_a_roll_goes_into_the_gutter_the_score_does_not_change
    score = 0
    assert_equal score, @bowlingGame.score
    assert_equal true, @bowlingGame.gutter
    assert_equal score, @bowlingGame.roll
    assert_equal 0, @bowlingGame.score
  end

end
