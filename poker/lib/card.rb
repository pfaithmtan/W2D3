require 'rspec'
require 'spec_helper'

class Card 
  CARD_VALUES = {
    two: 2,
    three: 3,
    four: 4,
    five: 5,
    six: 6,
    seven: 7,
    eight: 8,
    nine: 9,
    ten: 10,
    J: 11,
    Q: 12,
    K: 13,
    A: 14
  }
  
  CARD_SUITS = {
    spades: '♠',
    hearts: '♥',
    diamonds: '♦',
    clubs: '♣',
  }
  
  attr_accessor :suit, :value
  
  def initialize(value, suit)
    @suit = suit
    @value = value
  end 
  

  def self.values(key)
    CARD_VALUES[key]
  end 
  
  def suits 
    CARD_SUITS.keys
  end
  
  def <=>(other_card)
    if self < other_card 
      return -1 
    elsif self > other_card
      return 1 
    else 
      return 0 
    end 
  end 
  
end 

