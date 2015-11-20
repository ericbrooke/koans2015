# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  raise TriangleError, "Need some numbers" if a+b+c == 0
  raise TriangleError, "No negative numbers" if a <= 0 || b <= 0 || c <= 0
  raise TriangleError, "The sum of any two sides must exceed the third" if (a + b) < c
  raise TriangleError, "The longest side cannot be more than half the total" if [a,b,c].max >= (a+b+c)/2.0

case [a,b,c].uniq.length
  when 1
     :equilateral
  when 2
     :isosceles
  when 3
     :scalene
  else
    raise TriangleError, "Not a triangle"
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
