class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @food = []
  end

  def food_count()
    return @food.length()
  end

  def roar()
    return "ROAR!"
  end

  def eat_fish(fish)
    @food.push(fish)
  end

  def catch_fish(river)
    river.remove_fish()
  end

#
end
