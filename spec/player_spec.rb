require 'rspec'
require 'player'

describe Player do

  describe "#initialize" do

    player = Player.new("Player One")

    it "creates a player instance with a name" do
      expect(player.name).to eq("Player One")
    end

  end

  describe "#guess" do

    player = Player.new("Player One")

    it "returns two arrays of values guessed by the user" do
      expect(player.guess.length).to eq(2)
      expect(player.guess[0].length).to eq(2)
      expect(player.guess[1].length).to eq(2)
    end
    
  end

end
