class Card
  attr_reader :value, :showing

  def initialize(val)
    @value = val
    @showing = false
  end

  def matches?(card)
    self.value == card.value
  end

  def show
    @showing = true
  end

  def unshow
    @showing = false
  end

  def to_s
    @showing == true ? " #{self.value} " : " X "
  end

end
