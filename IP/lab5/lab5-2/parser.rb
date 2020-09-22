#!/usr/bin/ruby
# frozen_string_literal: true

# Class that modifies string
module Parser
  def self.parse(input_s)
    arr_x = input_s.split
    (0..arr_x.length).each do |i|
      arr_x[i] = nil if arr_x[i].to_s.length == 1
    end
    arr_x.compact.join(' ')
  end
end
