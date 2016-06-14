class Player

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def guess
    one_row = gets.chomp.to_i
    one_col = gets.chomp.to_i
    two_row = gets.chomp.to_i
    two_col = gets.chomp.to_i
    [[one_row, one_col], [two_row, two_col]]
  end

end
