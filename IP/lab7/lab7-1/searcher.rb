#!/usr/bin/ruby
# frozen_string_literal: true

# searches in file for the longest word starting with 'a'
module Searcher
  def self.search(path_arg)
    result = ''
    path = path_arg.strip
    if (File.exist? path) == false
      result = 'file doesnt exist'
    else
      IO.read(path).split.each { |word| result = word if (word[0] == 'a') && (word.length >= result.length) }
      # result = IO.read(path).split.select { |word| word.start_with?('a') }.max{|a1, a2| a2.length <=> a1.length }
    end
    result = 'no target strings in file' if result.empty?
    result
  end
end
