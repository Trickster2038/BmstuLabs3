#!/usr/bin/ruby
# frozen_string_literal: true

# searches in file for the longest word starting with 'a'
module Searcher
  def self.search(path)
    result = ''
    path = path.strip
    if (File.exist? path) == false
      result = 'file doesnt exist'
    else
      file = File.open(path)
      file.each do |line|
        line.downcase.split.each do |word|
          result = word if (word[0] == 'a') && (word.length > result.length)
        end
      end
      file.close
    end
    result = 'no target strings in file' if result.empty?
    result
  end
end
