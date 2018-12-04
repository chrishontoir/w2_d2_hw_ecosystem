require('minitest/autorun')
require('minitest/rg')
require_relative('../bears')
require_relative('../fish')

class BearsTest < MiniTest::Test

  def setup
    @bears = Bears.new("Yogi", "Grizzly", [])
  end

  def test_return_bear_name
    assert_equal("Yogi", @bears.get_bear_name)
  end

  def test_return_bear_type
    assert_equal("Grizzly", @bears.get_bear_type)
  end

  def test_return_stomach_array
    assert_equal([], @bears.get_stomach_array)
  end

  def test_stomach_count
    assert_equal(0, @bears.stomach_count)
  end

  def test_add_contents_to_stomach
    @fish1 = Fish.new("Salmon")
    @bears.add_content_to_stomach(@fish1)
    assert_equal(1, @bears.stomach_count)
  end

  def test_remove_contents_from_stomach
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Tuna")
    @fish3 = Fish.new("Mackerel")
    @bears.add_content_to_stomach(@fish1)
    @bears.add_content_to_stomach(@fish2)
    @bears.add_content_to_stomach(@fish3)
    @bears.remove_content_from_stomach(@fish1)
    assert_equal(2, @bears.stomach_count)
  end
end
