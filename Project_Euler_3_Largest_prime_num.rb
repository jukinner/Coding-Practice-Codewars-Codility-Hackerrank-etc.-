# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

require 'prime'
num = 600851475143
p Prime.prime_division(num).last[0]



# half = (num-1)/2

# largest = 1

# i = 1 
# while i <= half
#   if num % i == 0
#     if Prime.prime?(i) == true
#       largest = i
#     end
#   end
#   i += 1
# end

# p largest
# array = Array.new

# Prime.each(10000) do |prime|
  
#   array << prime
# end
# p array