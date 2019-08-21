require_relative "deck"
class Hand

  def initialize(deck)
    @hand = deck.sample(5)
  end

end