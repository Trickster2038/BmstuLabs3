#!/usr/bin/ruby
# frozen_string_literal: true

# Class that modifies string
module Parser
  def self.parse(input_s)
    input_s.split.reject { |elem| elem.to_s.length == 1 }.join(' ')
  end
end
