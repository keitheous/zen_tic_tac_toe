require 'spec_helper'

RSpec.describe Board do
  describe '.initialize' do
    describe 'default instance' do
      board = Board.new()

      it 'as a board object' do
        expect(board.class).to be(Board)
      end

      it 'has x range of 0 - 2' do
        expect(board.x_min).to eq(0)
        expect(board.x_max).to eq(2)
      end

      it 'has y range of 0 - 2' do
        expect(board.x_min).to eq(0)
        expect(board.x_max).to eq(2)
      end
    end

    describe 'customize instance with dimension 5' do
      board = Board.new(5)

      it 'has x range of 0 - 4' do
        expect(board.x_min).to eq(0)
        expect(board.x_max).to eq(4)
      end

      it 'has y range of 0 - 4' do
        expect(board.x_min).to eq(0)
        expect(board.x_max).to eq(4)
      end
    end
  end
end
