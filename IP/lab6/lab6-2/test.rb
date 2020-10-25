# frozen_string_literal: true

require './count.rb'
require 'minitest/autorun'

# inherits default test class
class TestFunc < Minitest::Test
  def setup; end

  def test_dependence
    assert Counter.count(1, 0.01) < Counter.count(1, 0.001), 'Iterations != f(eps)'
  end

  def test_zero
    assert_equal Counter.count(0, 0.01), 0, 'Zero radius not => 0'
  end

  def test_brute
    assert_equal Counter.count(2, 12), 1, 'Not one itertion for big eps'
  end

  def test_accurate
    assert Counter.count(3, 0.00001) > 1000, 'Not over 1k itertion for low eps'
  end

  def test_algorythm_equality
    assert_equal Counter.count(1, 0.1), 13, 'Not same accuracy as standart cycle'
  end

  def teardown; end
end
