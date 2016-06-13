require 'rspec'
require 'player'

describe Player do

  describe "#initialize" do

    player = Player.new("Player One")

    it "creates a player instance with a name" do
      expect(player.name).to eq("Player One")
    end

  end

end
