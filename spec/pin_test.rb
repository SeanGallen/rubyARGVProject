require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/bowling_game'

class BowlingGameTest < Minitest::Test
  def setup
    @BowelingGame = BowlingGame.new
  end
end
