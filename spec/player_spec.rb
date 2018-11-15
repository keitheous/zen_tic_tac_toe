require 'spec_helper'

RSpec.describe Player do
  describe '.initialize' do
    it 'creates Player with symbol X' do
      player_x = Player.new('X')

      expect(player_x.symbol).to eq('X')
    end

    it 'creates Player with symbol O' do
      player_o = Player.new('O')

      expect(player_o.symbol).to eq('O')
    end
  end
end
