#!/usr/bin/ruby

module Parser;

def Parser.parse(x)
	arrX = x.split();
	for i in 0..arrX.length 
		if arrX[i].to_s.length == 1
			arrX[i] = nil;
		end
	end
	return arrX.compact.join(" ");
end;

end