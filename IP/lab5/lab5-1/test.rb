#!/usr/bin/ruby
# frozen_string_literal: true

require './count.rb'
require 'minitest/autorun'

# inherits default test class
class TestFunc < Minitest::Test
  def setup; end

  def test_default
    assert ((Counter.count(1, 1, 1) - 1.28).abs < 0.1), 'Test 1,1,1'
  end

  def test_infinity
    assert (Counter.count(0, 1, 0) == Float::INFINITY), 'Test 0,1,0 -> Inf'
  end

  def test_sqrt2
    assert ((Counter.count(Math.sqrt(2), 2, 0) - 1).abs < 0.1), 'Test sqrt2, 2, 0 -> 1'
  end

  def test_cos_pi
    assert ((Counter.count(1, Math::PI + 2, 1) - 0).abs < 0.1), 'Test 1, pi + 2, 1 -> 0'
  end

  def teardown; end
end
