require 'rspec'
require 'card'

RSpec.describe Card do 
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
  
  subject(:card) {Card.new(5, :diamonds)}
  
  describe "#initialize" do 
    it "should take a value and a suit" do 
      expect(card.value).to eq(5)
      expect(card.suit).to eq(:diamonds)
    end 
  end 
  
  describe "::values" do 
    it "should return value of key argument" do 
      expect(Card.values(:five)).to eq(5)
    end 
  end 
  
  describe "#suits" do 
    it "should return all the suits" do 
      expect(card.suits).to eq([:spades, :hearts, :diamonds, :clubs])
    end 
  end 
  
  describe "<=> override method" do 
    it "compares values" do 
    end 
    
    it ""
     
    it "returns an integer" do 
    end 
  end 
  
    
end 
