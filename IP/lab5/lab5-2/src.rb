# frozen_string_literal: true

require_relative 'parser'
my_string = "placeholder"
until my_string.strip.empty? do
	print "\n\nInput string to remove spaces and single letters (OR EMPTY TO EXIT)\n"
	my_string = gets
	if my_string.strip.empty? == false 
		print "echo: #{my_string}"
		print "formatted: #{Parser.parse(my_string)}"
	end
end
