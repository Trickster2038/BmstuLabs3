require_relative 'parser'

print "Hello, friend \n";
s = gets();
print s;
print Parser.parse(s);