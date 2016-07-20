require "spec_helper"

describe Player do
  let(:player) { Player.new("Jack", 'x')}

  describe "#initialize" do
    it "stores the name of each player" do
      expect(player.player).to eq("Jack")
    end

    it "has an x character" do
      expect(player.character).to eq('x')
    end

    it "has an o character" do
      player_2 = Player.new("Joe", 'o')
      expect(player_2.character).to eq('o')
    end
  end
end
