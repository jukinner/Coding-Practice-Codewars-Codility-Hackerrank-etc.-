# We want to generate all the numbers of three digits that:

# the value of adding their corresponding ones(digits) is equal to 10.

# their digits are in increasing order (the numbers may have two or more equal contiguous digits)

# The numbers that fulfill the two above constraints are: 118, 127, 136, 145, 226, 235, 244, 334

# Make a function that receives two arguments:

# the sum of digits value

# the amount of desired digits for the numbers

# The function should output an array with three values: [1,2,3]

# 1 - the total amount of all these possible numbers

# 2 - the minimum number

# 3 - the maximum numberwith

# The example given above should be:

# find_all(10, 3) == [8, 118, 334]
# If we have only one possible number as a solution, it should output a result like the one below:

# find_all(27, 3) == [1, 999, 999]
# If there are no possible numbers, the function should output the empty array.

# find_all(84, 4) == []
# The number of solutions climbs up when the number of digits increases.

# find_all(35, 6) == [123, 116999, 566666]
# Features of the random tests:

# Numbers of tests: 111
# Sum of digits value between 20 and 65
# Amount of digits between 2 and 15
require 'rspec'

# def find_all(n, k)
	# return [] if n/k > 9
# 	high = (n/k + 1)
# 	highest = ("#{high}" + ("#{high}" * (k-1))).to_i
#   range = ((("1" + ("1" * (k-1))).to_i)..highest).to_a
#   range.keep_if { |x| x.digits.inject(&:+) == n && (x.digits.reverse == x.digits.sort) }
#   return [] if range.count == 0
#   p answer = [range.count, range[0], range[-1]]
# end



def find_all(n, k)
	return [] if n/k > 9
	start = ("1" + ("1" * (k-1))).to_i
	n/k == 9 ? high = n/k : high = (n/k + 1)
	highest = ("#{high}" + ("#{high}" * (k-1))).to_i
	answer = []
	while start <= highest
		answer << start if (start.digits.inject(&:+) == n)
		start += 1
	end
	answer.keep_if { |x| (x == x.digits.sort.join("").to_i) }
	return [] if answer == []
	p [answer.count, answer[0], answer[-1]]
end

find_all(10, 3)
find_all(27, 3)
find_all(21, 7)
find_all(35, 6)
find_all(84, 4)



describe "how many numbers tests" do
	it 'different large scenarios' do
    expect(find_all(10, 3)).to eq([8, 118, 334])
    expect(find_all(27, 3)).to eq([1, 999, 999])
    expect(find_all(84, 4)).to eq([])
    expect(find_all(35, 6)).to eq([123, 116999, 566666])
  end
end
