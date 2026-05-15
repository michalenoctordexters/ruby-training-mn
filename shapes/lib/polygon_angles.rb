# frozen_string_literal: true

def internal_angle(number_of_sides)
  ((number_of_sides - 2) * 180.0 / number_of_sides).round(2)
end

def external_angle(number_of_sides)
  (360.0 / number_of_sides).round(2)
end
