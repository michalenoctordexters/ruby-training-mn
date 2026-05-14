# frozen_string_literal: true

def triangle(a, b, c)
  raise TriangleError if [a, b, c].any? { |side| side <= 0 }
  s1, s2, s3 = [a, b, c].sort
  raise TriangleError if s1 + s2 <= s3
  if a == b && b == c
    :equilateral
  elsif a == b || b == c || a == c
    :isosceles
  else
    :scalene
  end
end



# Error class used in triangle_spec. No need to change this code.
class TriangleError < StandardError
end
