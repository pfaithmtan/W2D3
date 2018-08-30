require 'tdd.rb'
require 'rspec'
require 'spec_helper'

RSpec.describe Array do 
  
  describe "#my_uniq" do 

    it "removes duplicates from an array" do
      expect([1, 2, 1, 3, 3].my_uniq).to eq([1,2,3])
    end 
    
    it "does not use .uniq method" do 
      expect([1,2,1,3,3]).not_to receive(:uniq)
    end 
    
    it "returns empty array when called on empty array" do 
      expect([].my_uniq).to eq([])
    end 
  end 
  
  describe "#two_sum" do 
    
    it "finds all pairs of positions that sum to zero" do 
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end 
    
    it "returns smaller elements first" do 
      expect([-1, 0, 2, -2, 1].two_sum).not_to eq([[2, 3], [0, 4]])
    end 
    
    it "returns empty array when called on empty array" do 
      expect([].two_sum).to eq([])
    end 
  end
  
  describe "#my_transpose" do
    matrix = [[0, 1, 2],[3, 4, 5],[6, 7, 8]]
    
    it "transposes a matrix" do 
      expect(matrix.my_transpose).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
    end
    
    it "should be a square matrix" do 
      expect(matrix[0].length).to eq(matrix.length)
    end 
    
  end 
  
  describe "#stock_picker" do 
    
    days = [14, 14, 21, 13, 11]
    it "returns an array with the best days to buy and sell" do 
      expect(days.stock_picker).to eq([0, 2])
    end
    
    it "expects the buy day to be the first day available at the lowest bid" do 
      expect(days.stock_picker).to eq([0, 2])
    end 
    
    it "expects only one buy day and one sell day" do 
      expect(days.stock_picker.length).to eq(2)
    end
    
  end
    
  
end 