str = 'the quick brown fox jumps over the lazy dog'.delete!(" ").split("")
answer = str.each_with_object({}) do |item, ha|
	ha[item] = 0 if ha[item] == nil
	ha[item] += 1
	if ha[item] > 0
		p item
		break
	end
	p answer
end




