require 'spec_helper'

RSpec.describe Board do
  describe '.initialize' do
    describe 'default instance' do
      board = Board.new()

      it 'as a board object' do
        expect(board.class).to be(Board)
      end

      it 'has x upper range of 2' do
        expect(board.x).to eq(2)
      end

      it 'has y upper range of 2' do
        expect(board.y).to eq(2)
      end
    end

    describe 'customize instance with dimension 5' do
      board = Board.new(5)

      it 'has x upper range of 4' do
        expect(board.x).to eq(4)
      end

      it 'has y upper range of 4' do
        expect(board.y).to eq(4)
      end
    end
  end
end
