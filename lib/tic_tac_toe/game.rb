class Game
  attr_reader :players, :round

  def initialize
    @players = []
    @round = 1
  end

  def register_player(new_player)
    players << new_player
  end

  def next_round
    @round = round + 1
  end
end
