require_relative 'maxim'

func1 = lambda{|x| Math.sin(x)/x}
printf("\n\nMax distance between sin(x)/x and tg(x+1)/(x+1) is:\n %<res>3.2f\n\n",\
 res: Distance.maxim(func1, 0.5, 1, 0.01){|x| Math.tan(x+1)/(x+1)})