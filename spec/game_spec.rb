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

end
