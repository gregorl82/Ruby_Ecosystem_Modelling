class River

  attr_reader :name, :stock

  def initialize(name)
    @name = name
    @stock = []
  end

  def fish_count()
    return @stock.length()
  end

  def add_fish(fish)
    @stock.push(fish)
  end

  def remove_fish()
    @stock.shift()
  end
#
end
