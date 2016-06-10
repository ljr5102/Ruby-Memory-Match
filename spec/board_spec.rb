require 'rspec'
require 'board'

describe Board do
  describe "::generate_board" do
    it "creates a Board instance" do
      expect(Board.generate_board(:easy)).to be_an_instance_of(Board)
    end
    it "creates a 4x4 board when :easy is passed in as an argument" do
      expect(Board.generate_board(:easy).flatten.length).to eq(16)
      expect(Board.generate_board(:easy).length).to eq(4)
    end
    it "creates a 6x6 board when :moderate is passed in as an argument" do
      expect(Board.generate_board(:moderate).flatten.length).to eq(36)
      expect(Board.generate_board(:moderate).length).to eq(6)
    end
    it "creates a 8x8 board when :hard is passed in as an argument" do
      expect(Board.generate_board(:hard).flatten.length).to eq(64)
      expect(Board.generate_board(:hard).length).to eq(8)
    end
  end

  describe "#initialize" do
    arr = [[1, 2, 3, 4], [5, 6, 7, 8]]
    board = Board.new(arr)
    it "creates an array for a grid" do
      expect(board.grid).to be_an_instance_of(Array)
    end

    it "creates a grid the size of what was passed in" do
      expect(board.grid).to match_array(arr)
    end

  end
end
