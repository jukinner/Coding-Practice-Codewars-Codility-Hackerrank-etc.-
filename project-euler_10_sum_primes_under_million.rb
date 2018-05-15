# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

require 'prime'

primes = []

# primes << Prime

Prime.each do |x|
  if x < 2000000
    primes << x
  end
  break if x > 2000000
end

p primes.inject(&:+)