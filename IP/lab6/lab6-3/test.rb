# frozen_string_literal: true

require './maxim.rb'
require 'minitest/autorun'

# inherits default test class
class TestFunc < Minitest::Test
  def setup; end

  def test_counts
    func1 = ->(x) { x * 2 }
    assert_in_delta(Distance.maxim(func1, 0.5, 1, 0.01) { |x| x * 3}, 1, 0.01)
  end

  def test_lamda_block
    func1 = ->(x) { x * 2 }
    assert_in_delta(Distance.maxim(func1, 0.5, 1, 0.01) { |x| x * 4}, 2, 0.01)
  end

  def test_infinity
    func1 = ->(x) { x * 2 }
    assert Distance.maxim(func1, 0.5, 1, 0.01) { |x| 1 / (x - 1)} == Float::INFINITY
  end

  def test_2_lamdas
    func1 = ->(x) { x * 2 }
    func2 = ->(x) { x * 3 }
    assert_in_delta(Distance.maxim(func1, 0.5, 1, 0.01, &func2), 1, 0.01)
  end

  def test_default_finctions
    func1 = ->(x) { Math.sin(x) / x}
    assert_in_delta(Distance.maxim(func1, 0.5, 1, 0.01) { |x| Math.tan(x + 1) / (x + 1)}, 798.90, 0.01)
  end

  def teardown; end
end
