require 'spec_helper'

RSpec.describe Game do
  let(:game) { Game.new }
  let(:a_player) {Player.new('X')}
  let(:another_player) {Player.new('O')}


  describe '.initialize' do
    it 'creates a collection of players' do
      expect(game.players).to eq([])
    end
  end

  describe '#register_player' do
    it 'adds a new player with symbol X to players collection' do
      game.register_player(a_player)

      expect(game.players.count).to eq(1)
      expect(game.players.first.class).to be(Player)
    end

    it 'adds another player with symbol O to players collection' do
      game.register_player(a_player)
      game.register_player(another_player)

      expect(game.players.count).to eq(2)
    end
  end
end
