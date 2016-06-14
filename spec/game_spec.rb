require 'rspec'
require 'game'
require 'board'
require 'player'

describe Game do

  describe "#initialize" do

    new_board = Board.generate_board(:easy)
    new_player = Player.new("PlayerOne")
    new_game = Game.new(new_board, new_player)

    it "creates a game instance with a player and board attributes" do
      expect(new_game.player).to eq(new_player)
      expect(new_game.board).to eq(new_board)
    end

  end

  describe "#over?" do

    new_board = Board.new([[Card.new(1), Card.new(2)]])
    new_player = Player.new("PlayerOne")
    new_game = Game.new(new_board, new_player)

    it "returns false when there are cards that are not showing" do
      expect(new_game.over?).to be false
    end

    it "returns true when all cards are showing" do
      new_board.flip(0, 0)
      new_board.flip(0, 1)
      expect(new_game.over?).to be true
    end

  end

  describe "#play" do

    new_board = Board.new([[Card.new(1), Card.new(2)]])
    new_player = Player.new("PlayerOne")
    new_game = Game.new(new_board, new_player)

    it "continues to loop until the game is over" do
      new_board.flip(0, 0)
      new_board.flip(0, 1)
      expect(new_game.play).to be_nil
    end

  end

end
