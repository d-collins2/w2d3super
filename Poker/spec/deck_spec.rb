require "rspec"
require "deck"

describe Deck do
  subject(:deck){Deck.new}

  describe "#initialize" do
    it "should have 52 cards" do
      expect(deck.cards.count).to eq(52)
    end

    it "should have 4 of each card" do
      jacks = deck.cards.select{ |card| card.value == :jack}
      expect(jacks.length).to eq(4)
    end

    it "should have 4 different suits with 13 cards" do
      deck_count = Hash.new { |hash, key| hash[key] = 0 }
      deck.cards.each do |card|
        deck_count[card.suit] += 1
      end
      expect(deck_count.keys.count).to eq(4)
      expect(deck_count[:spade]).to eq(13)
    end

    # it "should shuffle deck" do
    #   deck2 = Deck.new
    #   deck2.cards = deck.cards.shuffle
    #   expect(deck2.cards).not_to eql(deck.cards)
    # end
  end
end
