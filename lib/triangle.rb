
require 'pry'

class Triangle

  class TriangleError < StandardError
  end
  
  attr_accessor :l, :w, :h

  @@all = []

  def initialize(l, w, h)
    @l = l
    @w = w
    @h = h 
    @@all << self
  end

  def kind
    side_array = []
    side_array = [@l,@w,@h]
    sorted_array = side_array.sort
    if @l <= 0 || @w <=0 || @h <= 0  || (sorted_array[0] + sorted_array[1]) <= sorted_array[2]
      raise TriangleError
    
    elsif sorted_array.uniq.length == 1
      return :equilateral

    elsif sorted_array.uniq.length == 2
      return :isosceles
    
    elsif sorted_array.uniq.length == 3
      return :scalene
    end
  end

  def self.all 
    @@all
  end

end

