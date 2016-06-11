require 'rspec'
require 'board'
require 'card'

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

    it "creates a board full of Card objects" do
      board = Board.generate_board(:easy)
      expect(board.flatten.all? { |card| card.is_a?(Card) }).to be true
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

  describe "#[]" do

    arr = [[1, 2, 3, 4], [5, 6, 7, 8]]
    board = Board.new(arr)

    it "returns 1 when 0,0 is passed in" do
      expect(board[0, 0]).to eq(1)
    end
  end

  describe "#flip" do

    grid = [[Card.new(1), Card.new(1)], [Card.new(2), Card.new(2)]]
    board = Board.new(grid)

    it "switches cards not showing to showing" do
      board.flip(0, 0)
      expect(board[0, 0].showing).to be true
    end

    it "switches cards showing to not showing" do
      board.flip(0, 0)
      expect(board[0, 0].showing).to be false
    end

  end

  describe "#display" do

    grid = [[Card.new(1), Card.new(1)], [Card.new(2), Card.new(2)]]
    board = Board.new(grid)

    it "displays all cards face down when none are showing" do
      expect(board.display).to eq("---------\n| X | X |\n---------\n| X | X |\n---------\n")
    end

    it "displays showing cards face up" do
      board.flip(0, 0)
      expect(board.display).to eq("---------\n| 1 | X |\n---------\n| X | X |\n---------\n")
    end
  end
end
