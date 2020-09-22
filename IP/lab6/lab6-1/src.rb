# frozen_string_literal: true

require_relative 'count'
require_relative 'count'

10.times do |variable|
	printf("eps: %<eps>1.10f iter-s: %<res>d \n\n", eps: 10 ** -(variable+1), res: Counter.count(1, 10 ** -(variable+1)))
end
