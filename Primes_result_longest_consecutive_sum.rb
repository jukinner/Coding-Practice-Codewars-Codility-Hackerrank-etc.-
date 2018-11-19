# This kata is inspired on the problem #50 of the Project Euler.

# The prime 41 is the result of the sum of many consecutive primes.

# In fact, 2 + 3 + 5 + 7 + 11 + 13 = 41 , (6 addens)

# Furthermore, the prime 41 is the prime below 100 (val_max) that has the longest chain of consecutive prime addens.

# The prime with longest chain of addens for val_max = 500 is 499 with 17 addens.

# In fact: 3+5+7+11+13+17+19+23+29+31+37+41+43+47+53+59+61= 499

# Find the function prime_maxlength_chain()(primeMaxlengthChain() javascript), that receives an argument val_max, the upper limit, all the found primes should be less than val_max and outputs this found prime.

# Let's see some cases:

# prime_maxlength_chain(100) == [41]
# prime_maxlength_chain(500) == [499]
# If we have more than one prime with these features, the function should output an array with the found primes sorted.

# prime_maxlength_chain(499) == [379, 491]
# Random Tests for val_max (valMax)

# 100 ≤ val_max ≤ 500.000

require 'prime'


def prime_maxlength_chain(val_max)
  answer = (val_max - 1).downto(1).each_with_object({}) do |item, h|
  	if Prime.prime?(item)
  		primes, index = Prime.each(item).to_a[0..-2], 0
  		primes.count.times do 
  				sum, sum_ary = 0, []
					temp_ary = primes.dup[index..-1]
					while sum < item
						temp_ary.each do |x|
							sum_ary << x
							sum += x
							if sum == item
								if h.values.max == nil
									h[item] = sum_ary.count
								elsif sum_ary.count > h.values.max
									h.clear
									h[item] = sum_ary.count
								elsif sum_ary.count == h.values.max
									h[item] = sum_ary.count
								end
							end
							break if sum == item
						end
						break if sum == item
					end
			index += 1
			break if sum == item
  		end
  	end
  end
  p answer.keys.sort
end

# answer = Prime.each(11).to_a[0..-2]
# p answer



prime_maxlength_chain(100)
# , [41])
prime_maxlength_chain(200)
# # , [197])
prime_maxlength_chain(500)
# # , [499])
prime_maxlength_chain(1000)
# , [953])
prime_maxlength_chain(2910)
# , [2910])

# steps
#  determine if it's prime
#  get all primes under the number
#  determine if a section of the consecutive primes under the number add up to the number itself
#  if a combination adds up to equal the number, add the number to an answer array if it is a longer consecutive adden 


#  return array with the found primes sorted