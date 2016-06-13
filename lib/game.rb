class Game

  attr_reader :player, :board

  def initialize(board, player)
    @player = player
    @board = board
  end

end
