# Task :
# Given a List [] of n integers , find minimum mumber to be inserted in a list, so that sum of all elements of list should equal the closest prime number .

# Notes
# List size is at least 2 .

# List's numbers will only positives (n > 0) .

# Repeatition of numbers in the list could occur .

# The newer list's sum should equal the closest prime number .

# Input >> Output Examples
# 1- minimumNumber ({3,1,2}) ==> return (1)
# Explanation:
# Since , the sum of the list's elements equal to (6) , the minimum number to be inserted to transform the sum to prime number is (1) , which will make the sum of the List equal the closest prime number (7) .
# 2-  minimumNumber ({2,12,8,4,6}) ==> return (5)

require 'prime'

def minimum_number(numbers)
  sum = numbers.inject(&:+)
  i=-1
  status = false
  while status == false
    i += 1
    status = true if Prime.prime?(sum + i) == true
  end
  p ((sum + i) - (numbers.inject(&:+)))
end
