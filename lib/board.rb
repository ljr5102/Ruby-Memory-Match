class Board

  attr_reader :grid

  def initialize
    @grid = Array.new(4) { Array.new(4) }
  end

end
