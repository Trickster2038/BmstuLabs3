# frozen_string_literal: true

require './maxim.rb'
require 'minitest/autorun'

# inherits default test class
class TestFunc < Minitest::Test
  def setup
    @function_lambda = ->(arg) { arg * 2 }
  end

  def test_zero_distance
    assert_in_delta(Distance.maxim(@function_lambda, 0.5, 1, 0.01) { |num| num * 2 }, 0, 0.01)
  end

  def test_counts
    assert_in_delta(Distance.maxim(@function_lambda, 0.5, 1, 0.01) { |num| num * 3 }, 1, 0.01)
  end

  def test_lamda_block
    assert_in_delta(Distance.maxim(@function_lambda, 0.5, 1, 0.01) { |num| num * 4 }, 2, 0.01)
  end

  def test_infinity
    assert Distance.maxim(@function_lambda, 0.5, 1, 0.01) { |num| 1 / (num - 1) } == Float::INFINITY
  end

  def test_2_lamdas
    function_lambda2 = ->(arg) { arg * 3 }
    assert_in_delta(Distance.maxim(@function_lambda, 0.5, 1, 0.01, &function_lambda2), 1, 0.01)
  end

  def test_default_functions
    function_lambda = ->(arg) { Math.sin(arg) / arg }
    assert_in_delta(Distance.maxim(function_lambda, 0.5, 1, 0.01) { |num| Math.tan(num + 1) / (num + 1) }, 798.90, 0.01)
  end

  def teardown; end
end
