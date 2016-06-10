require 'rspec'
require 'card'

describe Card do
  describe "#initialize" do
    card = Card.new(1)
    it "creates a card with a value of what's passed in" do
      expect(card.value).to eq(1)
    end
  end
end
