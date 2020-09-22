# frozen_string_literal: true

require './parser.rb'
require 'minitest/autorun'

# Testing Parser module
class TestFunc < Minitest::Test
  def setup
    # o = [('a'..'z'), ('A'..'Z'), (' '..' ')].map(&:to_a).flatten
    @test_string = ''
    arg = ''
    # oldS = true
    alphabet = [('a'..'z')].map(&:to_a).flatten
    (0..9).each do |_i|
      alphabet.push(' ')
    end
    (0..4).each do |_i|
      alphabet.push('  ')
    end

    # p a

    while arg.scan(/([\s]{2,})|(\s\w\s)/m).empty?
      arg = ''
      # p "loop"
      (0..14).each do |_i|
        arg += alphabet[rand(alphabet.length)]
      end
      # p s
    end

    @test_string = arg
    print 'Testing string: '
    print @test_string + "\n"
  end

  def test_random
    # p @test_string
    print 'Result string: '
    result = Parser.parse(@test_string)
    print result
    assert result.scan(/([\s]{2,})|(\s\w\s)/m).size.zero?
  end

  def teardown; end
end
