class River

  attr_reader :name

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
  
#
end
