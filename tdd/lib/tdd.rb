require 'rspec'
require 'spec_helper'

class Array 
  
  def my_uniq
    result = []
    self.each do |el|
      result << el unless result.include?(el)
    end 
    result 
  end 
  
  def two_sum
    result = []
    
    (0...length-1).each do |idx|
      j = idx + 1
      (j...length).each do |idx2|
        result << [idx, idx2] if self[idx] + self[idx2] == 0
      end
    end 
    
    result
  end
  
  def my_transpose 
    result = Array.new(3) { Array.new }
    
    (0...length).each do |i|
      j = i + 1
      (0...length).each do |j|
        result[i] << self[j][i]
      end 
    end 
    
    result
  end 
  
  def stock_picker
    result = []
    
    each_with_index
    
    result
  end
  
end 