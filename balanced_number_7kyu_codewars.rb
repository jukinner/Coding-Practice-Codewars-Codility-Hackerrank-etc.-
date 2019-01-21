# Definition
# Balanced number is the number that The sum of all digits to the left of the middle digit(s) and the sum of all digits to the right of the middle digit(s) are equal.

# Task
# Given a number, Find if it is Balanced or not .

# Warm-up (Highly recommended)
# Playing With Numbers Series
# Notes
# If the number has an odd number of digits then there is only one middle digit, e.g. 92645 has middle digit 6; otherwise, there are two middle digits , e.g. 1301 has middle digits 3 and 0

# The middle digit(s) should not be considered when determining whether a number is balanced or not, e.g 413023 is a balanced number because the left sum and right sum are both 5.

# Number passed is always Positive .

# Return the result as String

# Input >> Output Examples
# 1- balancedNum (7) ==> return "Balanced"   .
# Explanation:
# Since , The sum of all digits to the left of the middle digit (0)

# and the sum of all digits to the right of the middle digit (0) are equal , then It's Balanced

# 2- balancedNum (295591) ==> return "Not Balanced" .
# Explanation:
# Since , The sum of all digits to the left of the middle digits (11)

# and the sum of all digits to the right of the middle digits (10) are equal , then It's Not Balanced

# Note : The middle digit(s) are 55 .

# 3- balancedNum (959) ==> return "Balanced"  .
# Explanation:
# Since , The sum of all digits to the left of the middle digits (9)

# and the sum of all digits to the right of the middle digits (9) are equal , then It's Balanced

# Note : The middle digit is 5 .

# 4- balancedNum (27102983) ==> return "Not Balanced"  .
# Explanation:
# Since , The sum of all digits to the left of the middle digits (10)

# and the sum of all digits to the right of the middle digits (20) are equal , then It's Not Balanced

# Note : The middle digit(s) are 02 .

# Playing with Numbers Series
# Playing With Lists/Arrays Series
# For More Enjoyable Katas
# ALL translations are welcomed
# Enjoy Learning !!
# Zizou

require 'rspec'

# def balanced_num(number)
#   num_array = number.digits
#   if num_array.count.odd? 
#     split_index = (num_array.count / 2).floor
#     return "Balanced" if num_array.first(split_index).inject(:+) == num_array.last(split_index).inject(:+)
#   elsif num_array.count.even?
#     split_index = (num_array.count / 2)
#     return "Balanced" if num_array.first(split_index - 1).inject(:+) == num_array.last(split_index - 1).inject(:+)
#   end
#   p number
#   p "Not Balanced"
# end

Option 2
def balanced_num(number)
  
end

balanced_num(7)
balanced_num(959)
balanced_num(13)
balanced_num(56239814)
balanced_num(432)


# describe "Basic tests" do
#   Test.assert_equals(balanced_num(7)       , "Balanced")
#   Test.assert_equals(balanced_num(959)     , "Balanced")
#   Test.assert_equals(balanced_num(13)      , "Balanced")
#   Test.assert_equals(balanced_num(432)     , "Not Balanced")
#   Test.assert_equals(balanced_num(424)     , "Balanced")
#   Test.assert_equals(balanced_num(1024)    , "Not Balanced")
#   Test.assert_equals(balanced_num(66545)   , "Not Balanced")
#   Test.assert_equals(balanced_num(295591)  , "Not Balanced")
#   Test.assert_equals(balanced_num(1230987) , "Not Balanced")
#   Test.assert_equals(balanced_num(56239814), "Balanced")
# end