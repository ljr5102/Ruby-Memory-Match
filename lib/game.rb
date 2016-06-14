require './lib/board'
require './lib/player'

class Game

  attr_reader :player, :board

  def initialize(board, player)
    @player = player
    @board = board
    self.play
  end

  def over?
    board.flatten.all? { |card| card.showing }
  end

  def play
    until over?
      system("clear")
      puts board.display
      guesses = player.guess
      board.flip(guesses[0][0], guesses[0][1])
      board.flip(guesses[1][0], guesses[1][1])
      puts board.display
      sleep(2)
      unless board.matches(guesses[0], guesses[1])
        board.flip(guesses[0][0], guesses[0][1])
        board.flip(guesses[1][0], guesses[1][1])
      end
    end
  end

end

if __FILE__ == $PROGRAM_NAME
  new_board = Board.generate_board(:easy)
  new_player = Player.new("PlayerOne")
  new_game = Game.new(new_board, new_player)
end
