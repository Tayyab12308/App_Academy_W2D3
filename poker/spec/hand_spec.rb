require 'rspec'
require 'hand'

describe Hand do 
  
  context "#initialize" do
    let(:hand) { Hand.new(card) }

    it "creates hand with 5 card instances" do
      expect(hand.cards.length).to eq(5)
    end

    it "creates hand with 5 random card instances" do
      expect(hands.cards.uniq.length).to eq (hands.cards.length)
    end
  end

end