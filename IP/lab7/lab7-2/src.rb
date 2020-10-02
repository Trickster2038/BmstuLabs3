# frozen_string_literal: true
require_relative 'boards'

puts "\n\nInput x, y for flat board\n"
width = gets.to_i
height = gets.to_i
boardS = FlatBoard.new(width, height)
print "Square of flat board: #{boardS.square}"
puts "\n\nInput x, y, z for flat board\n"
width = gets.to_i
height = gets.to_i
depth = gets.to_i
boardV = VolumetricBoard.new(width, height, depth)
print "Square of volumetric board: #{boardV.square}\n"
print "Volume of volumetric board: #{boardV.volume}"