require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')

class RiverTest < MiniTest::Test

  def setup()
    @river = River.new("Clyde")
    @fish = Fish.new("Salmon")
  end

  def test_can_get_name()
    assert_equal("Clyde", @river.name)
  end

  def test_fish_count()
    assert_equal(0, @river.fish_count())
  end

  def test_add_fish()
    @river.add_fish(@fish)
    assert_equal(1, @river.fish_count())
  end

  def test_remove_fish()
    @river.add_fish(@fish)
    @river.add_fish(@fish)
    @river.add_fish(@fish)
    @river.remove_fish()
    assert_equal(2, @river.fish_count())
  end
#
end
