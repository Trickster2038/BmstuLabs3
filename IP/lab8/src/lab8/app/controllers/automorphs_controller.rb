class AutomorphsController < ApplicationController
	def input
	end

	def square?(num)
  	# (1..(num/2+1)).each do |elem|
  	# 	return true if elem**2 == num
  	# end
  	# return false
  	return ((Math.sqrt(num)-Math.sqrt(num).round).abs < 10e-5)
  end

  def parse_sequence(list)
  	result = []
  	tail = list
  	while tail.any? do 
  		result.append(tail.take_while{|elem| square?(elem)})
  		tail = tail.drop_while{|elem| square?(elem)}.drop_while{|elem| !square?(elem)}
  	end
  	#result[0] = []
  	# slice_n = -1
  	# sequence 
  	# array.each do |elem|
  	# 	if elem.square? 
  	# 		if !sequence
  	# 			slice_n = slice_n + 1 
  	# 			result[slice_n] = []
  	# 			sequence = true
  	# 		end
  	# 		result[slice_n] << elem
  	# 	else
  	# 		sequence = false
  	# 	end
  	# end
  	return result
  end

  def parse_input(input_string)
  	input_string.strip.split.map{|elem| elem.to_i}
  end



  def view
     args = parse_input(params[:search_range])
     @result = parse_sequence(args)
     @result = "no such sequences to output[]" if @result.empty?
  #     elem.to_s[-1] == (elem**2).to_s[-1]
	end

end
