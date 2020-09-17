require './count.rb'
require 'minitest/autorun'

class TestFunc < Minitest::Test

	def setup
	end

	def test_1
		assert ((Counter.count(1,1,1)-0.9) < 0.1), "Test 1,1,1"
	end

	def test_2
		assert (Counter.count(0,1,0) == Float::INFINITY), "Test 0,1,0 - Inf"
	end


	def teardown
	end

end