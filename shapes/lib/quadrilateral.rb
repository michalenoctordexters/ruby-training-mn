# frozen_string_literal: true

def quadrilateral(a, b, c, d)
  raise QuadrilateralError if a <= 0 || b <= 0 || c <= 0 || d <= 0
  raise QuadrilateralError if [a, b, c, d].sum != 360
  if a == b && b == c && c == d
    [:square, :rectangle]
  elsif (a == b && c == d) || (a == c && b == d) || (a == d && b == c)
    [:parallelogram, :rhombus]
    else [:quadrilateral]
  end
end

# Error class used in quadrilateral_spec. No need to change this code.
class QuadrilateralError < StandardError
end
