require 'spec_helper'

RSpec.describe Game do
  let(:game) { Game.new }
  let(:player_1) {Player.new('X')}
  let(:player_2) {Player.new('O')}

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
      game.register_player(player_1)

      expect(game.players.count).to eq(1)
      expect(game.players.first.class).to be(Player)
    end

    it 'adds another player with symbol O to players collection' do
      game.register_player(player_1)
      game.register_player(player_2)

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

  describe '#players_turn' do
    before do
      game.register_player(player_1)
      game.register_player(player_2)
    end

    it 'lets player 1 start first' do
      expect(game.players_turn).to eq(player_1)
    end

    it 'lets player 2 go next' do
      game.next_round
      expect(game.players_turn).to eq(player_2)
    end

    it 'lets player 1 go again' do
      game.next_round
      game.next_round
      expect(game.players_turn).to eq(player_1)
    end
  end
end
