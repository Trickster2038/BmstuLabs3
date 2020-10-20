# frozen_string_literal: true

require './searcher.rb'
require 'minitest/autorun'

# inherits default test class
class TestFunc < Minitest::Test
  def setup; end

  def test_file_generated
    File.open('generated.txt', 'w') { |file| file.write "app application zero \n standart all word" }
    result = Searcher.search('generated.txt')
    File.delete('generated.txt')
    assert_equal result, 'application'
  end

  def test_file_abrocadabra
    assert_equal Searcher.search('f.txt'), 'abrocadabra'
  end

  def test_file_ambassador
    assert_equal Searcher.search('f2.txt'), 'ambassador'
  end

  def test_file_empty
    assert_equal Searcher.search('f3.txt'), 'no target strings in file'
  end

  def test_file_incorrect
    assert_equal Searcher.search('incorrect path'), 'file doesnt exist'
  end

  def teardown; end
end
