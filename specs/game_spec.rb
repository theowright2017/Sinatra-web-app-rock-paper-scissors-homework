require 'minitest/autorun'
require_relative '../models/game.rb'

class TestGame < Minitest::Test


  def setup()
    @game = Game.new("rock", "scissors")
    @game1 = Game.new("paper", "scissors")
    @game2 = Game.new("paper", "paper")
  end
  #
  def test_hand1_wins()
    assert_equal("Hand 1 wins with rock", @game.winner)
  end

  def test_hand2_wins()
    assert_equal("Hand 2 wins with scissors", @game1.winner)
  end

  def test_game_is_draw()
    assert_equal("It is a draw", @game2.winner)
  end


  # def test_hand1_winner()
  #   assert_equal("Hand 1 wins", @game.random)
  # end
  # #unable to test as using .sample and gives random outcome each time.  How would this be resolved??
  #


end
