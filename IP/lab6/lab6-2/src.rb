# frozen_string_literal: true

require_relative 'count'
require_relative 'count'

puts("\nApproximation of circle square \n\n")
(1..10).each{|variable| 
	printf("eps: %<eps>1.10f iter-s: %<res>d \n\n", 
	eps: 10 ** -(variable), 
	res: Counter.count(1, 10 ** -(variable)))}
