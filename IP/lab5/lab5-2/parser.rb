#!/usr/bin/ruby
# frozen_string_literal: true

# Class that modifies string
module Parser
  def self.parse(input_s)
    input_s.split.map{|elem| elem.to_s.length == 1 ? nil : elem}.compact.join(' ')
  end
end
