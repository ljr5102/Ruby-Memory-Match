require 'rspec'
require 'board'

describe Board do
  describe "#initialize" do
    board = Board.new
    it "creates an array for a grid" do
      expect(board.grid).to be_an_instance_of(Array)
    end

    it "creates a 10x10 size grid" do
      expect(board.grid.length).to eq(4)
      expect(board.grid[0].length).to eq(4)
    end

    it "creates an empty grid" do
      expect(board.grid.flatten.all? { |val| val.nil? }).to be true
    end
  end
end
