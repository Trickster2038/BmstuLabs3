# frozen_string_literal: true

require './searcher.rb'
require 'minitest/autorun'

# inherits default test class
class TestFunc < Minitest::Test
  def setup; end

  def test_file_generated
    File.open('generated.txt', 'w'){ |file| file.write "app application zero \n standart all word" }
    result = Searcher.search('generated.txt')
    File.delete('generated.txt')
    assert result == "application"
  end

  def test_file_abrocadabra
    assert Searcher.search('f.txt') == 'abrocadabra'
  end

  def test_file_ambassador
    assert Searcher.search('f2.txt') == 'ambassador'
  end

  def test_file_empty
    assert Searcher.search('f3.txt') == 'no target strings in file'
  end

  def test_file_incorrect
    assert Searcher.search('incorrect path') == 'file doesnt exist'
  end

  def teardown; end
end
