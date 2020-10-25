#!/usr/bin/ruby
# frozen_string_literal: true

require './count.rb'
require 'minitest/autorun'

# inherits default test class
class TestFunc < Minitest::Test
  def setup; end

  def test_default
    assert_in_delta Counter.count(1, 1, 1), 1.28, 0.01, 'Test 1,1,1'
  end

  def test_infinity
    assert_equal Counter.count(0, 1, 0), Float::INFINITY, 'Test 0,1,0 -> Inf'
  end

  def test_sqrt_two
    assert_in_delta Counter.count(Math.sqrt(2), 2, 0), 1, 0.01, 'Test sqrt2, 2, 0 -> 1'
  end

  def test_cos_pi
    assert_in_delta Counter.count(1, Math::PI + 2, 1), 0, 0.01, 'Test 1, pi + 2, 1 -> 0'
  end

  def teardown; end
end
