#!/usr/bin/ruby
# frozen_string_literal: true

# counts max distance between functions
module Distance
  def self.maxim(function_lambda, start, stop, step_size, &function_block)
    max_distance = 0
    (start..stop).step(step_size) do |arg|
      max_distance = (function_lambda.call(arg) - function_block.call(arg)).abs \
           if (function_lambda.call(arg) - function_block.call(arg)).abs > max_distance
    end
    max_distance
  end
end
