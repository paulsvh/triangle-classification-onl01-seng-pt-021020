class Triangle
  attr_accessor :side1, :side2, :side3

  sides = []

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    sides << side1
    sides << side2
    sides << side3
  end

  def kind #returns type of triangle (equilateral, isosceles, or scalene). Raises custom error TriangleError if triangle is invalid
    if person.class != Person
     begin
       raise TriangleError
     rescue TriangleError => error
         puts error.message
     end
   else

   end
  end

  class TriangleError < StandardError
   def message
     "The supplied side lengths do not form a triangle!"
   end
 end

end



#TRIANGLE VALIDITY:
#The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality.
#Further, each side must be larger than 0.
