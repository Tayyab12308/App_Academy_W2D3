require "rspec"
require "card"

describe Card do
  context "#initialize" do
    let(:valid_card) { Card.new(4, "H") }
    let(:invalid_card) { Card.new(23, "P") }
    
    it "should create a card instance with a number" do
       expect(valid_card.number).to eq(4)
    end

    it "should create a card instance with a suit" do
       expect(valid_card.suit).to eq("H")
    end

    it "creates cards using all valid numbers" do
      expect(Card.numbers.include?(valid_card.number)).to eq(true)
      expect(Card.numbers.include?(invalid_card.number)).to eq(false)
    end

    it "creates cards using all valid suits" do
      expect(Card.suits.include?(valid_card.suit)).to eq(true)
      expect(Card.suits.include?(invalid_card.suit)).to eq(false)
    end

  end
end