#!/usr/bin/ruby
# frozen_string_literal: true

# counts given function
module Counter

  def self.count_enum(radius)
    Enumerator.new do |result|
      n = 2
      loop do
        result << 0.5 * (radius ** 2) * n * Math.sin(2 * Math::PI / n)
        n += 1
      end
    end
  end

  def self.count(radius, epsilon)
    count_enum(radius).take_while{|square| ((radius ** 2) * Math::PI - square).abs > epsilon}.length
  end
end