# lib/triangle.rb

class Triangle
  # triangle code
  attr_accessor :l, :w, :h

  def initialize(l,w,h)
    @l = l
    @w = w
    @h = h
  end

  def kind
    if (@l + @w <= @h) || (@l + @h <= @w) || (@w + @h <= @l) || (@l == 0 || @w == 0|| @h == 0)
      raise TriangleError

    else
      if @l == @w && @w == @h
        :equilateral
      elsif (@l == @w || @l == @h || @w == @h)
        :isosceles
      else
        :scalene
      end
    end
  end








  class TriangleError < StandardError
    # triangle error code
  end
end
