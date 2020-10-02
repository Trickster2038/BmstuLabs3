def maxim(func1, func2, start, stop, step_size)
    max_distance = 0
    (start..stop).step(step_size) {|x| max_distance = (func1.call(x) - func2.call(x)).abs \
     if (func1.call(x) - func2.call(x)).abs > max_distance}
    max_distance
end
pr = lambda{|x| x*2}
fr = proc{|x| x*3}
p maxim(fr,pr, 0.5, 1, 0.01)