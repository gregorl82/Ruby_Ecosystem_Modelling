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

#
end
