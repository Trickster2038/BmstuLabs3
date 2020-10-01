
path = gets
result = ""
if (File.exist? path.strip) == false
    result = "file doesnt exist"
else
    file = File.open(path.strip)
    file.each do |line|  
        line.downcase.split.each do |word|
        result = word if ((word[0] == "a") && (word.length > result.length))
        end
    end
    file.close 
end
print result