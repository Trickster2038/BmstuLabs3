# frozen_string_literal: true

# implements main controller
class AutomorphsController < ApplicationController
	def input
		render layout: false
	end

	def view
		input_s = params[:search_range]
    # checking only creation of views by default raises error of nil input
    if input_s.nil?
    	res = 'nil input (might be init test)'
    elsif input_s.match?(/[^0-9 ]/)
    	res = 'incorrect input'
    else
    	res = parse_sequence(parse_input(input_s))
    	res = 'no such sequences to output[]' if res.flatten.empty?
    end
    @result = res

    respond_to do |format|
    	format.html 
    	#format.js
    	format.json do
    		#redirect_to "myscript.js"
    		render json:
    		{type: @result.class.to_s, value: @result}
    		 
    	end
    end
end
end

def square?(num)
	root = Math.sqrt(num)
	((root - root.round).abs < 10e-5)
end

def parse_sequence(list)
	result = []
	tail = list
	while tail.any?
		result.append(tail.take_while { |elem| square?(elem) })
		tail = tail.drop_while { |elem| square?(elem) }.drop_while { |elem| !square?(elem) }
	end
	result
end

def parse_input(input_string)
	input_string.strip.split.map(&:to_i)
end
