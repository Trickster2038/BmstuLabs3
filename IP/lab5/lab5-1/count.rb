#!/usr/bin/ruby
# frozen_string_literal: true

# counts given function
module Counter
  def self.count(x, y, z)
    # b = ((1 + Math.cos(y - 2))/(x**4 + Math.sin(z)**2))
    b1 = (1 + Math.cos(y.to_f - 2))
    b2 = ((x.to_f**4) + (Math.sin(z.to_f)**2))
    b = b1.to_f / b2
    return b
  end
end

# print "Hello, src.rb \n";
# x1 = gets();
# y1 = gets();
# z1 = gets();
# printf("result: %3.2f",count(x1,y1,z1));
