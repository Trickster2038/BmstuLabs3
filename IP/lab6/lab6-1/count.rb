#!/usr/bin/ruby
# frozen_string_literal: true

# counts given function
module Counter
  def self.count(radius, epsilon)
    sides = 2
    square = 0
    while ((radius**2) * Math::PI - square) > epsilon
      sides += 1
      square = 0.5 * (radius**2) * sides * Math.sin(2 * Math::PI / sides)
    end
    sides - 2
  end
end
