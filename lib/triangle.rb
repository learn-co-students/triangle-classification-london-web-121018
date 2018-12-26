class Triangle
  attr_accessor :s1, :s2, :s3, :type

  def initialize(side1, side2, side3)
    @triangle = []
    @triangle << side1
    @triangle << side2
    @triangle << side3
    @type = nil
  end

  def valid?
     if (@triangle.none? {|side| side <= 0}) &&
     (@triangle[0] + @triangle[1] > @triangle[2] &&
     @triangle[0] + @triangle[2] > @triangle[1] &&
     @triangle[1] + @triangle[2] > @triangle[0])
       true
     else
       false
     end
   end

  def kind
    if valid?
      if @triangle.uniq.length == 1
        @type = :equilateral
      elsif @triangle.uniq.length == 2
        @type = :isosceles
      else
        @type = :scalene
      end
    else
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
  def message
    "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality. Further, each side must be larger than 0."
  end
end
