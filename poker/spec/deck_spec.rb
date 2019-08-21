require "rspec"
require "deck"

describe Deck do
  context "#initialize" do
    deck = Deck.new
    it "creates a set of unique cards" do
      expect(deck.cards.uniq.length).to eq(deck.cards.length)
    end
    it "creates the deck with 52 cards" do
      expect(deck.cards.count).to eq(52)
    end
    
  end
end