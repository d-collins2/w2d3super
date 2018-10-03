require "rspec"
require "card"

describe Card do
  subject(:card){Card.new(:spade, :five)}
  describe "#initialize" do
    it "has a suit" do
      expect(card.suit).to eq(:spade)
    end

    it "has a value" do
      expect(card.value).to eq(:five)
    end
  end
end
