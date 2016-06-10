class Board

  def self.generate_board(difficulty)
    difficulty_hash = {easy: 4, moderate: 6, hard: 8}
    size = difficulty_hash[difficulty]
    grid = Array.new(size) { Array.new(size) }
    Board.new(grid)
  end

  attr_reader :grid

  def initialize(arr)
    @grid = arr
  end

  def flatten
    self.grid.flatten
  end

  def length
    self.grid.length
  end

end
