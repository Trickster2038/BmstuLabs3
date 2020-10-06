#!/usr/bin/ruby
# frozen_string_literal: true

# simplified board with only 2 coords
class FlatBoard
  def initialize(in_width, in_height)
    @width = in_width
    @height = in_height
  end

  def square
    @width * @height
  end
end

# sophisticated board with 3 coords
class VolumetricBoard < FlatBoard
  def initialize(in_width, in_height, in_depth)
    super(in_width, in_height)
    @depth = in_depth
  end

  def volume
    @depth * square
  end
end
