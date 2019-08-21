require_relative 'card'
class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    Card.numbers.each do |num|
      Card.suits.each do |suit|
        self.cards << Card.new(num, suit)
      end
    end
  end

end