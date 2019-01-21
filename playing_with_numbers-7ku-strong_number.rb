# Definition
# Strong number is the number that the sum of the factorial of its digits is equal to number itself.

# For example : 145 , since
# 1! + 4! + 5! = 1 + 24 + 120 = 145
# So, 145 is a Strong number.

# Task
# Given a number, Find if it is Strong or not .

# Warm-up (Highly recommended)
# Playing With Numbers Series
# Notes
# Number passed is always Positive .
# Return the result as String
# Input >> Output Examples
# 1- strong_num (1)  ==> return "STRONG!!!!"
# Explanation:
# Since , the sum of its digits' factorial of (1) is equal to number itself (1) , Then its a Strong .

# 2- strong_num (123) ==> return "Not Strong !!"
# Explanation:
# Since , the sum of its digits' factorial of 1! + 2! + 3! = 9 is not equal to number itself (123) , Then it's Not Strong .

# 3- strong_num (2)  ==>  return "STRONG!!!!"
# Explanation:
# Since , the sum of its digits' factorial of 2! = 2 is equal to number itself (2) , Then its a Strong .

# 4- strong_num (150) ==> return "Not Strong !!"
# Explanation:
# Since , the sum of its digits' factorial of 1! + 5! + 0! = 122 is not equal to number itself (150) , Then it's Not Strong .

# Playing with Numbers Series
# Playing With Lists/Arrays Series
# For More Enjoyable Katas
# ALL translations are welcomed
# Enjoy Learning !!
# Zizou

def strong_num(n)
  sum = 0 
  n.digits.compact.each {|x| sum += factorial(x) if x != 0 }
  if sum == n
    p "STRONG!!!!"
  else
    p "Not Strong !!"
  end
end

def factorial(n)
  n.downto(1).inject(:*)
end

strong_num(1)
strong_num(2)
strong_num(7)
strong_num(93)
strong_num(40585)
strong_num(145)
strong_num(185)


# Test.assert_equals(strong_num(1)  , "STRONG!!!!")
# Test.assert_equals(strong_num(2)  , "STRONG!!!!")
# Test.assert_equals(strong_num(7)  , "Not Strong !!")
# Test.assert_equals(strong_num(93) , "Not Strong !!")
# Test.assert_equals(strong_num(145), "STRONG!!!!")
# Test.assert_equals(strong_num(185), "Not Strong !!")