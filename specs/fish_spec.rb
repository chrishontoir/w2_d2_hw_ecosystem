require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class FishTest < MiniTest::Test

  def setup
    @salmon = Fish.new("Salmon")
    @tuna = Fish.new("Tuna")
    @mackerel = Fish.new("Mackerel")
  end

  def test_return_fish_type
    assert_equal("Salmon", @fish.get_fish_type)
  end


end
