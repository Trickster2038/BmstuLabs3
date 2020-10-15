# frozen_string_literal: true

require_relative 'count'

my_enumerator = Enumerator.new do |table|
	eps = 0.1
	loop do
		table << [eps, Counter.count(1, eps)]
		eps /= 10
	end
end

my_enumerator.take(10).each{|elem| printf("eps: %<eps>1.10f iter-s: %<res>d \n\n", 
	eps: elem[0], 
	res: elem[1])}
