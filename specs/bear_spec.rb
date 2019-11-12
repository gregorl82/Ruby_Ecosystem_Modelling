require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearTest < MiniTest::Test

  def setup()
    @fish = Fish.new("Salmon")

    @river = River.new("Clyde")
    @river.add_fish(@fish)
    @river.add_fish(@fish)
    @river.add_fish(@fish)

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

  def test_roar()
    output = @bear.roar()
    assert_equal("ROAR!", output)
  end

  def test_eat_fish()
    @bear.eat_fish(@fish)
    assert_equal(1, @bear.food_count())
  end

  def test_catch_fish()
    @bear.catch_fish(@river)
    assert_equal(1, @bear.food_count())
    assert_equal(2, @river.fish_count())
  end



#
end
