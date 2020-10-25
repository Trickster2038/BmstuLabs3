# frozen_string_literal: true

require_relative 'searcher'

puts "enter relative path to file"
path = gets
print Searcher.search(path)
