require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("Salmon")
  end

  def test_return_fish_type
    assert_equal("Salmon", @fish.get_fish_type)
  end
  
end
