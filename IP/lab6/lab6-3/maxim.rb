#!/usr/bin/ruby
# frozen_string_literal: true

# counts max distance between functions
module Distance
  def self.maxim(func2, start, stop, step_size, &func1)
    max_distance = 0
    (start..stop).step(step_size) do |x|
      max_distance = (func1.call(x) - func2.call(x)).abs \
           if (func1.call(x) - func2.call(x)).abs > max_distance
    end
    max_distance
  end
end
