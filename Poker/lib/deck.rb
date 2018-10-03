require "card"
require 'byebug'
class Deck

  attr_reader :cards

  SUIT = [:spade, :heart, :diamond, :clubs]
  VALUE = [:two, :three, :four, :five, :six, :seven,
          :eight, :nine, :ten, :jack, :queen, :king, :ace]

  def initialize
    @cards = []
    populate
    shuffle
  end

  def shuffle
    self.cards.shuffle!
  end

  def populate
    SUIT.each do |suit|
      VALUE.each do |value|
        self.cards << Card.new(suit, value)
      end
    end
    self.cards
  end

end
