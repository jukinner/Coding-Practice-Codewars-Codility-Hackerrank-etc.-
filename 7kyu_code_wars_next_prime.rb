# Get the next prime number!

# You will get a numbern (>= 0) and your task is to find the next prime number.

# Make sure to optimize your code: there will numbers tested up to about 1012

# Examples
# 5  ==> 7
# 12 ==> 13

require 'prime'

def next_prime(n)
  status = false
  i = n
  r = 0
  while status == false
    i += 1
    if Prime.prime?(i + r)
      status = true
    end
  end
  p i + r
end

next_prime(5)