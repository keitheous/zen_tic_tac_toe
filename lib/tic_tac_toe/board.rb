class Board
  attr_reader :x, :y

  def initialize(upper_limit = 3)
    @x = upper_limit - 1
    @y = upper_limit - 1
  end
end
