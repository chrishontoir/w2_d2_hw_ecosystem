require('minitest/autorun')
require('minitest/rg')
require_relative('../river')

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon", [])
  end

  def test_return_river_name
    assert_equal("Amazon", @river.get_river_name)
  end

  def test_return_fish_array
    assert_equal([], @river.get_fish_array)
  end

  def test_fish_count
    assert_equal(0, @river.fish_count)
  end


end
