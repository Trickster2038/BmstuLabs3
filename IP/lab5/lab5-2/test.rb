require './parser.rb'
require 'minitest/autorun'

class TestFunc < Minitest::Test



	def setup
		#o = [('a'..'z'), ('A'..'Z'), (' '..' ')].map(&:to_a).flatten
		$tString = ''
		s = ''
		oldS = true
		a = [('a'..'z')].map(&:to_a).flatten
		for i in 0..9
			a.push(' ')
		end
		for i in 0..4
			a.push('  ')
		end

		#p a

		until s.scan(/([\s]{2,})|(\s\w\s)/m).size != 0 
			s = ''
			#p "loop"
			for i in 0..14
				s += a[rand(a.length)]
			end
			#p s
		end

		$tString = s
		print "Testing string: "
		print $tString + "\n";
	end

	def test_1
			#p $tString
			print "Result string: "
			print Parser.parse($tString)
			assert Parser.parse($tString).scan(/([\s]{2,})|(\s\w\s)/m).size == 0
		end

		def teardown
		end

	end