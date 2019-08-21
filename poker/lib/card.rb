class Card

  attr_accessor :number, :suit
  def initialize(number, suit)
    @number = number
    @suit = suit
  end

  def self.numbers
    NUMBERS
  end

  def self.suits
    SUITS
  end
  
private

  NUMBERS = [ "A", 2, 3, 4, 5 , 6, 7, 8, 9, 10, "J", "Q", "K" ].freeze

  SUITS = [ "H", "D", "C", "S" ].freeze
end