#!/usr/bin/ruby
# frozen_string_literal: true

# counts given function
module Counter
  def self.count(radius, epsilon)
    n = 2
    s = 0
    while ((radius ** 2) * Math::PI - s) > epsilon
    	n += 1
    	s = 0.5 * (radius ** 2) * n * Math.sin(2 * Math::PI / n)
    end
    return n - 2
  end
end

#p Math::PI
#p Counter.count(6, 0.0001)