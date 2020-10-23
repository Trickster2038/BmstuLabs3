class AutomorphsController < ApplicationController
	def input
	end

	def square?(num)
		return ((Math.sqrt(num)-Math.sqrt(num).round).abs < 10e-5)
	end

	def parse_sequence(list)
		result = []
		tail = list
		while tail.any? do 
			result.append(tail.take_while{|elem| square?(elem)})
			tail = tail.drop_while{|elem| square?(elem)}.drop_while{|elem| !square?(elem)}
		end
		return result
	end

	def parse_input(input_string)
		input_string.strip.split.map{|elem| elem.to_i}
	end



	def view
		input_s = params[:search_range]

		# checking only creation of views by default raises error of nil input
		if input_s.nil? 
			@result = "nil input (might be init test)"
		else
			if input_s.match?(/[^0-9 ]/)
				@result = "incorrect input"
			else
				@result = parse_sequence(parse_input(input_s))
				@result = "no such sequences to output[]" if @result.flatten.empty?
			end
		end

	end

end
