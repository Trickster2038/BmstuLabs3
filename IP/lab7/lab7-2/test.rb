# frozen_string_literal: true

require './boards.rb'
require 'minitest/autorun'

# inherits default test class
class TestFunc < Minitest::Test
  def setup; end

  def test_parent_instance
    board = FlatBoard.new(1, 1)
    assert board.instance_of? FlatBoard
  end

  def test_child_instance
    board = VolumetricBoard.new(1, 1, 1)
    assert board.instance_of? VolumetricBoard
  end

  def test_hierarchy
    board = VolumetricBoard.new(1, 1, 1)
    assert board.is_a? FlatBoard
  end

  def test_squares
    board_s = FlatBoard.new(2, 3)
    board_v = VolumetricBoard.new(2, 7, 4)
    assert (board_s.square == 6) && (board_v.square == 14)
  end

  def test_volume
    board_v = VolumetricBoard.new(2, 7, 4)
    assert(board_v.volume == 2 * 7 * 4)
  end

  def teardown; end
end
