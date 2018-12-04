require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')


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

  def test_add_fish_to_river
    salmon = Fish.new("Salmon")
    @river.add_fish_to_river(salmon)
    assert_equal(1, @river.fish_count)
  end

  def test_remove_fish_from_river
    fish1 = Fish.new("Salmon")
    fish2 = Fish.new("Tuna")
    fish3 = Fish.new("Mackerel")
    @river.add_fish_to_river(fish1)
    @river.add_fish_to_river(fish2)
    @river.add_fish_to_river(fish3)
    @river.remove_fish_from_river(fish2)
    assert_equal(2, @river.fish_count)
  end


end
