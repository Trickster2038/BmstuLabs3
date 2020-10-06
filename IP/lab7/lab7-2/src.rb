# frozen_string_literal: true

require_relative 'boards'

puts "\n\nInput x, y for flat board\n"
width = gets.to_i
height = gets.to_i
board_s = FlatBoard.new(width, height)
print "Square of flat board: #{board_s.square}"
puts "\n\nInput x, y, z for flat board\n"
width = gets.to_i
height = gets.to_i
depth = gets.to_i
board_v = VolumetricBoard.new(width, height, depth)
print "Square of volumetric board: #{board_v.square}\n"
print "Volume of volumetric board: #{board_v.volume}"
