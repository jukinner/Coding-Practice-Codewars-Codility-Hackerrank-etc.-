# Given a string made up of letters a, b, and/or c, switch the position of letters a and b (change a to b and vice versa). Leave any incidence of c untouched.

# Example:

# 'acb' --> 'bca'
# 'aabacbaa' --> 'bbabcabb'

require 'rspec'

# def switcheroo(x) 
#   x.chars.map do |y|
#   	if y == "a"
#   		y = "b"
#   	elsif y == "b"
#   		y = "a"
#   	else 
#   		y = "c"
#   	end
#   end.join
# end

# def switcheroo(x)
# 	answer = []
# 	x.each_char do |x| 
# 		answer << "a" if x == "b"
# 		answer << "b" if x == "a"
# 		answer << "c" if x == "c"
# 	end
# 	p answer.join
# end

# def switcheroo(x)
# 	answer = x.chars.each_with_object([]) do |item, arr|
# 		arr << "a" if item == "b"
# 		arr << "b" if item == "a"
# 		arr << "c" if item == "c"
# 	end
# 	answer.join
# end

def switcheroo(x)
	x.tr('ab', 'ba')
end

switcheroo('abc')
switcheroo('aaabcccbaaa')
switcheroo('ccccc')

describe 'Method can handle switching letters and avoiding c' do 
	it 'can handle simple abc string' do
		expect(switcheroo('abc')).to eq('bac')
	end

	it 'can handle long string with a,b and c' do
		expect(switcheroo('aaabcccbaaa')).to eq('bbbacccabbb')
	end

	it 'can handle all cs' do
		expect(switcheroo('ccccc')).to eq('ccccc')
	end
end
