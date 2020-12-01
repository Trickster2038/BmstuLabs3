# frozen_string_literal: true

# implements main controller
class AutomorphsController < ApplicationController
	def input; end

	def view
		input_s = params[:search_range]
    # checking only creation of views by default raises error of nil input
    if input_s.nil?
    	res = 'error 1 - nil input'
    elsif input_s.match?(/[^0-9 -]/)
    	res = 'error 2 - incorrect input'
    # res = input_s.to_s

else
	res = parse_sequence(parse_input(input_s))
	res = 'error/code 3 - no sequences have been found' if res.flatten.empty?
end

logger.info "log msg"
logger.info res.class
logger.info res.instance_of?(Array)

if res.instance_of?(Array) 
	logger.info "log msg 2"
      #result = { message: res }

      cached_result = CachedResult.find_or_initialize_by(input: input_s)

      if cached_result.new_record?
      	cached_result.result = res.to_s
      	cached_result.save!
      end

    #config.logger = Logger.new(STDOUT)
    logger.info "db new row"

    # else
    #   max = res.max_by(&:length)
    #   result = res.map { |elem| { subsequence: elem.to_s, length: elem.length } }
    #               .append({ subsequence: 'max', length: 'length' })
    #               .append({ subsequence: max.to_s, length: max.length })
end
@result = res
end
end

def square?(num)
	root = Math.sqrt(num)
	((root - root.round).abs < 10e-5)
end

def parse_sequence(list)
	list.map { |elt| [elt, square?(elt)] }
	.slice_when { |elt1, elt2| elt1.last != elt2.last }
	.select { |grp| grp.first.last }
	.map { |grp| grp.map(&:first) }
end

def parse_input(input_string)
	input_string.strip.split.map(&:to_i)
end
