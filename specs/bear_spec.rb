require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Baloo", "Brown Bear")
  end

  def test_can_get_name()
    assert_equal("Baloo", @bear.name)
  end

  def test_can_get_type()
    assert_equal("Brown Bear", @bear.type)
  end

  def test_food_count()
    assert_equal(0, @bear.food_count())
  end

#
end
