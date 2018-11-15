class Board
  attr_reader :x_max, :y_max, :x_min, :y_max

  def initialize(upper_limit = 3)
    @x_min = 0
    @y_max = 0
    @x_max = upper_limit - 1
    @y_max = upper_limit - 1
  end
end
