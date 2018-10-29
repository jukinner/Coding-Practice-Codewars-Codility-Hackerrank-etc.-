# Given a certain number, how many multiples of three could you obtain with its digits?

# Suposse that you have the number 362. The numbers that can be generated from it are:

# 362 ----> 3, 6, 2, 36, 63, 62, 26, 32, 23, 236, 263, 326, 362, 623, 632
# But only:

# 3, 6, 36, 63 are multiple of three.

# We need a function that can receive a number ann may output in the following order:

# the amount of multiples

# the maximum multiple

# Let's see a case the number has a the digit 0 and repeated digits:

# 6063 ----> 0, 3, 6, 30, 36, 60, 63, 66, 306, 360, 366, 603, 606, 630, 636, 660, 663, 3066, 3606, 3660, 6036, 6063, 6306, 6360, 6603, 6630
# In this case the multiples of three will be all except 0

# 6063 ----> 3, 6, 30, 36, 60, 63, 66, 306, 360, 366, 603, 606, 630, 636, 660, 663, 3066, 3606, 3660, 6036, 6063, 6306, 6360, 6603, 6630
# The cases above for the function:

# find_mult_3(362) == [4, 63]

# find_mult_3(6063) == [25, 6630]
# In Javascript findMult_3(). The function will receive only positive integers (num > 0), and you don't have to worry for validating the entries.

# Features of the random tests, for Python and Ruby:

# Number of test = 100
# 1000 ≤ num ≤ 100000000

# WORKING ANSWER
# def find_mult_3(num)
# 	i, bucket, count, max = 1, [], 0, 0
# 	num.digits.length.times do 
# 		bucket << num.digits.permutation(i).to_a.map { |x| x.flatten(1).join("").to_i }
# 		i += 1
# 	end
# 	bucket = bucket.flatten(1).uniq
# 	bucket.each do |item| 
# 		if item % 3 == 0 && item != 0
# 			count += 1
# 			max = item if item > max
# 		end
# 	end
# 	answer = [count, max]
# end

def find_mult_3(num)
	i, bucket, count, max = 1, [], 0, 0
	num.digits.length.times do 
		num.digits.permutation(i).to_a.each do | x | 
			if x.join.to_i % 3  && x.join.to_i != 0
			bucket << x.join.to_i if 

		i += 1
	end
	p bucket
	# p bucket.flatten
	# bucket = bucket.flatten(1).uniq
	bucket.flatten.each do |item| 
		if item % 3 == 0 && item != 0
			count += 1
			max = item if item > max
		end
	end
	answer = [count, max]
end

# def find_mult_3(num)
# 	i, bucket, count, max = 1, [], 0, 0
# 	num.digits.length.times do 
# 		bucket << num.digits.permutation(i).to_a.keep_if { |item| item.inject(&:+) % 3 }
# 		i += 1
# 	end
# 	p bucket
# 	# bucket = bucket.flatten(1).uniq
# 	# bucket.each do |item| 
# 	# 	if item % 3 == 0 && item != 0
# 	# 		count += 1
# 	# 		max = item if item > max
# 	# 	end
# 	# end
# 	# answer = [count, max]
# end

p find_mult_3(362)
# p find_mult_3(6063)
# p find_mult_3(7766553322) 
# p find_mult_3(100000000)

#  describe "Basic Cases" do
#   it "Some Cases" do
#     Test.assert_equals(find_mult_3(362), [4, 63])
#     Test.assert_equals(find_mult_3(6063), [25, 6630])
#     Test.assert_equals(find_mult_3(7766553322), [55510, 766553322])
#   end
# end