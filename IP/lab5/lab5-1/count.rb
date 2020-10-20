#!/usr/bin/ruby
# frozen_string_literal: true

# counts given function
module Counter
  def self.count(x, y, z)
    res = (1 + Math.cos(y.to_f - 2)) / ((x.to_f**4)/2 + (Math.sin(z.to_f)**2))
  end
end
