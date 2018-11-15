require 'spec_helper'

RSpec.describe Game do
  let(:game) { Game.new }
  let(:a_player) {Player.new('X')}
  let(:another_player) {Player.new('O')}

  describe '.initialize' do
    it 'creates a collection of players' do
      expect(game.players).to eq([])
    end

    it 'starts with round 1' do
      expect(game.round).to eq(1)
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

  describe '#next_round' do
    it 'increment round by 1 everytime' do
      game.next_round
      expect(game.round).to eq(2)

      game.next_round
      expect(game.round).to eq(3)

      game.next_round
      game.next_round
      expect(game.round).to eq(5)
    end
  end
end
