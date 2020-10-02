# frozen_string_literal: true

require './boards.rb'
require 'minitest/autorun'

# inherits default test class
class TestFunc < Minitest::Test
  def setup; end

  def test_parent_instance
    board = FlatBoard.new(1,1)
    assert board.instance_of? FlatBoard
  end

  def test_child_instance
    board = VolumetricBoard.new(1,1,1)
    assert board.instance_of? VolumetricBoard
  end

  def test_hierarchy
    board = VolumetricBoard.new(1,1,1)
    assert board.kind_of? FlatBoard 
  end

  def test_squares
    board1 = FlatBoard.new(2,3)
    board2 = VolumetricBoard.new(2,7,4)
    assert (board1.square == 6) && (board2.square == 14)
  end

  def test_volume
    board2 = VolumetricBoard.new(2,7,4)
    assert (board2.volume == 2*7*4)
  end

  def teardown; end
end
