# Number of trailing zeros of N!

# Write a program that will calculate the number of trailing zeros in a factorial of a given number.

# N! = 1 * 2 * 3 * ... * N

# Be careful 1000! has 2568 digits...

# For more info, see: http://mathworld.wolfram.com/Factorial.html

# Examples
# zeros(6) = 1
# # 6! = 1 * 2 * 3 * 4 * 5 * 6 = 720 --> 1 trailing zero

# zeros(12) = 2
# # 12! = 479001600 --> 2 trailing zeros
# Hint: You're not meant to calculate the factorial. Find another way to find the number of zeros.

require 'rspec'

def zeros(n)
	return 0 if n < 5
  multiples, divisor = [], 5
  while divisor < n
  	multiples << (n / divisor).floor 
  	divisor *= 5
  end
  multiples.inject(:+)
end


zeros(0)

describe 'sample tests' do
	it 'should pass sample tests' do
		expect(zeros(0)).to eq(0)
		expect(zeros(6)).to eq(1)
		expect(zeros(30)).to eq(7)
	end
end

