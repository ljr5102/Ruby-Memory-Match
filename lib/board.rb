require 'card'

class Board

  def self.generate_board(difficulty)
    difficulty_hash = {easy: 4, moderate: 6, hard: 8}
    size = difficulty_hash[difficulty]

    card_value_arr = []
    values_range = (1..(size * size / 2))
    values_range.each do |i|
      2.times { card_value_arr << Card.new(i) }
    end
    card_value_arr.shuffle!

    grid = Array.new(size) { Array.new(size) }
    grid.each do |row|
      row.map! do
        card_value_arr.pop
      end
    end

    Board.new(grid)

  end

  attr_reader :grid

  def initialize(arr)
    @grid = arr
  end

  def [](row, col)
    self.grid[row][col]
  end

  def flatten
    self.grid.flatten
  end

  def length
    self.grid.length
  end

  def flip(row, col)
    self[row, col].showing ? self[row, col].unshow : self[row, col].show
  end

  def matches(loc1, loc2)
    self[loc1[0], loc1[1]].matches?(self[loc2[0], loc2[1]])
  end

  def display
    display_string = ""
    borders = ""
    (8 * (self.grid[0].length / 2) + 1).times { borders << "-" }
    display_string << borders + "\n"
    display_grid = self.grid.each do |row|
      row.map do |card|
        card.to_s
      end
    end
    display_grid.each do |row|
      display_string << "|"
      display_string << row.join("|")
      display_string << "|" + "\n"
      display_string << borders + "\n"
    end
    display_string
  end

end
