def even_occur(array)
	bucket = nil
	array.uniq.each do |x|
		if array.count(x) % 2 == 0
			bucket = array.count(x)
			break
		end 
	end
	bucket
end


even_occur ([1, 2, 2, 3, 4, 4, 4, 4])