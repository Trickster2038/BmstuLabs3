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
    alphabet = ('a'..'z').to_a
    9.times{alphabet.push(' ')}
    5.times{alphabet.push('  ')}



    while arg.scan(/([\s]{2,})|(\s\w\s)/m).empty?
      arg = ''
      14.times{arg += alphabet[rand(alphabet.length)]}
    end

    @test_string = arg
    
  end

  def test_random
    print 'Testing string: '
    print @test_string + "\n"
    print 'Result string: '
    result = Parser.parse(@test_string)
    print result
    assert result.scan(/([\s]{2,})|(\s\w\s)/m).size.zero?
  end

  def test_bad_string
    print 'Testing string: '
    print "a string   full o f mis  takes" + "\n"
    print 'Result string: '
    result = Parser.parse("a string   full o f mis  takes")
    print result
    assert result.scan(/([\s]{2,})|(\s\w\s)/m).size.zero?
  end

  def test_good_string
    print 'Testing string: '
    print "nice string with nothing to cut" + "\n"
    print 'Result string: '
    result = Parser.parse("nice string with nothing to cut")
    print result
    assert_equal result, "nice string with nothing to cut"
  end

  def teardown; end
end
