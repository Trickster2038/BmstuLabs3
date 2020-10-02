# frozen_string_literal: true

require './searcher.rb'
require 'minitest/autorun'

# inherits default test class
class TestFunc < Minitest::Test
  def setup; end

  def test_file1
    assert Searcher.search("f.txt") == "abrocadabra"
  end

  def test_file2
    assert Searcher.search("f2.txt") == "ambassador"
  end

  def test_file_empty
    assert Searcher.search("f3.txt") == "no target strings in file"
  end

  def test_file_incorrect
    assert Searcher.search("incorrect path") == "file doesnt exist"
  end

  def teardown; end
end
