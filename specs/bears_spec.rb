require('minitest/autorun')
require('minitest/rg')
require_relative('../bears')

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


end
