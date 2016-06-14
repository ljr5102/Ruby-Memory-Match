class Game

  attr_reader :player, :board

  def initialize(board, player)
    @player = player
    @board = board
  end

  def over?
    board.flatten.all? { |card| card.showing }
  end

  def play
    until over?
      puts "you're stuck!"
    end
  end

end
