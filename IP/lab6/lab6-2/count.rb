#!/usr/bin/ruby
# frozen_string_literal: true

# counts given function
module Counter

  def self.count_enum(radius)
    Enumerator.new do |result|
      n_sides = 2
      loop do
        result << 0.5 * (radius ** 2) * n_sides * Math.sin(2 * Math::PI / n_sides)
        n_sides += 1
      end
    end
  end

  def self.count(radius, epsilon)
    count_enum(radius).take_while{|square| ((radius ** 2) * Math::PI - square).abs > epsilon}.length
  end
end