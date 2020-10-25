# frozen_string_literal: true

require './parser.rb'
require 'minitest/autorun'

# Testing Parser module
class TestFunc < Minitest::Test
  def setup
    # use regex variable
    # o = [('a'..'z'), ('A'..'Z'), (' '..' ')].map(&:to_a).flatten
    arg = ''
    alphabet = ('a'..'z').to_a
    alphabet.push([' '] * 10 + ['  '] * 5)

    arg = alphabet.sample(rand(14..18)).to_s while arg.scan(/([\s]{2,})|(\s\w\s)/m).empty?

    @test_string = arg
  end

  def test_random
    assert Parser.parse(@test_string).scan(/([\s]{2,})|(\s\w\s)/m).size.zero?
  end

  def test_bad_string
    assert Parser.parse('a string   full o f mis  takes').scan(/([\s]{2,})|(\s\w\s)/m).size.zero?
  end

  def test_good_string
    assert_equal Parser.parse('nice string with nothing to cut'), 'nice string with nothing to cut'
  end

  def teardown; end
end
