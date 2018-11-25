string = "the quick Brown fox jumped over the lazy dog!"

# array = string.chars
# i = 0
# array.length.times do 
#   pop = array.pop
#   array = array.insert(i, pop)
#   i += 1
# end

# p array.join()

def reverse_string(string)
	string = string.split("")
	bucket = string.each_with_object([]) do |item, arr|
		arr.unshift(item)
	end
	p bucket
end

reverse_string(string)

