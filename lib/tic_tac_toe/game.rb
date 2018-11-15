class Game
  attr_reader :players

  def initialize
    @players = []
  end

  def register_player(new_player)
    players << new_player
  end
end
