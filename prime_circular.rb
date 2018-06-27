# Based on Project Euler problem 35

# A circular prime is a prime in which every circular permutation of that number is also prime. Circular permutations are created by rotating the digits of the number, for example: 197, 971, 719. One-digit primes are circular primes by definition.

# Complete the function that dertermines if a number is a circular prime.

# There are 100 random tests for numbers up to 10000.

require 'prime'

def circular_prime(n)
p r = n.to_s.chars.map { |x| x.to_i }
count, status = 0, false
r.length.times do 
  if Prime.prime?(r.join.to_i)
    r.unshift(r.pop).join.to_i
    count += 1
  end
end
status = true if count == r.length
p status
end
circular_prime(9377)




















