require 'rspec'
require 'card'

describe Card do
  describe "#initialize" do

    card = Card.new(1)

    it "creates a card with a value of what's passed in" do
      expect(card.value).to eq(1)
    end

    it "defaults the showing attribute to 'false'" do
      expect(card.showing).to be false
    end

  end

  describe "#matches?" do

    card_one = Card.new(1)
    card_two = Card.new(1)
    card_three = Card.new(3)

    it "returns true when the cards have equal value" do
      expect(card_one.matches?(card_two)).to be true
    end

    it "returns false when the cards do not have equal value" do
      expect(card_one.matches?(card_three)).to be false
    end

  end

  describe "#show" do

    card = Card.new(1)

    it "flips the showing attribute to true" do
      card.show
      expect(card.showing).to be true
    end

  end

  describe "#unshow" do

    card = Card.new(1)

    it "flips the showing attribute to false" do
      card.show
      expect(card.showing).to be true
      card.unshow
      expect(card.showing).to be false
    end

  end

  describe "#to_s" do

    card = Card.new(1)

    it "displays an 'X' when showing attribute is false" do
      expect(card.to_s).to eq(" X ")
    end

    it "displays the value when showing attribute is true" do
      card.show
      expect(card.to_s).to eq(" 1 ")
    end
    
  end
end
