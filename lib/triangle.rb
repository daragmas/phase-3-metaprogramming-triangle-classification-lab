class Triangle
  attr_reader :sides

  def initialize side1, side2, side3
    @sides = [side1, side2, side3].sort
  end

  def kind
    if @sides.include?(0)
      raise TriangleError
    elsif @sides[0]+@sides[1] <= @sides[2]
      raise TriangleError
    else
      triangle_type = if (sides.uniq).length == 1
                        :equilateral
                      elsif (sides.uniq).length == 2
                        :isosceles
                      else
                        :scalene
                      end
    end
  end

  class TriangleError < StandardError
    def message
      "Invalid length(s) for sides of the triangle"
    end
  end

end
