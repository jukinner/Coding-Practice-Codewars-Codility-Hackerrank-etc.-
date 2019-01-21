# The numbers 12, 63 and 119 have something in common related with their divisors and their prime factors, let's see it.

# Numbers PrimeFactorsSum(pfs)        DivisorsSum(ds)              Is ds divisible by pfs
# 12         2 + 2 + 3 = 7         1 + 2 + 3 + 4 + 6 + 12 = 28            28 / 7 = 4,  Yes
# 63         3 + 3 + 7 = 13        1 + 3 + 7 + 9 + 21 + 63 = 104         104 / 13 = 8, Yes
# 119        7 + 17 = 24           1 + 7 + 17 + 119 = 144                144 / 24 = 6, Yes
# There is an obvius property you can see: the sum of the divisors of a number is divisible by the sum of its prime factors.

# We need the function ds_multof_pfs() that receives two arguments: nMin and nMax, as a lower and upper limit (inclusives), respectively, and outputs a sorted list with the numbers that fulfill the property described above.

# We represent the features of the described function:

# ds_multof_pfs(nMin, nMax) -----> [n1, n2, ....., nl] # nMin ≤ n1 < n2 < ..< nl ≤ nMax
# Let's see some cases:



# ds_multof_pfs(20, 120)
# [35, 42, 60, 63, 66, 68, 84, 90, 95, 110, 114, 119]




require 'prime'

# def ds_mult_of_pfs(low, high)
# 	answer = low.upto(high).to_a.each_with_object([]) do |item, obj|
# 	  primes = Prime.prime_division(item).each_with_object([]) do | prime, prime_array |
# 	  	prime[1].times { prime_array << prime[0]}
# 	  end.inject(:+)
# 	  divisors = 1.upto(Math.sqrt(item)).to_a.each_with_object([]) do |divisor, div_array|
# 	  	if item % divisor == 0
# 	  		div_array << item/divisor
# 	  		div_array << divisor
# 	  	end
# 	  end.inject(:+)
# 	  obj << item if divisors % primes == 0
# 	end
# 	p answer
# end

def ds_mult_of_pfs(low, high)
	answer = low.upto(high).to_a.each_with_object([]) do |item, obj|
		primes, divisors = 0, 0
	  Prime.prime_division(item).each do | prime |
	  	prime[1].times { primes += prime[0]}
	  end
	  1.upto(Math.sqrt(item)).to_a.each do | divisor |
	  	if item % divisor == 0
	  		divisors += (item/divisor)
	  		divisors += divisor
	  	end
	  end
	  obj << item if divisors % primes == 0
	end
	p answer
end

# MAKE THIS FASTER BY NOT DOING INJECT. JUST CREATE A BUCKET AND DO THE MATH EACH TIME. NO WITH OBJECT NEEDED REALLY
# primes = Prime.prime_division(56).each_with_object([]) do | prime, prime_array |
# 	  	prime[1].times { prime_array << prime[0]}
# 	  end

# p Prime.prime_division(56)

# ds_mult_of_pfs(10, 12) 

ds_mult_of_pfs(10, 100) 
# [12, 15, 35, 42, 60, 63, 66, 68, 84, 90, 95]