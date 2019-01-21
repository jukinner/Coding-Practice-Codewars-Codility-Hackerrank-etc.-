# Definition
# Disarium number is the number that The sum of its digits powered with their respective positions is equal to the number itself.

# Task
# Given a number, Find if it is Disarium or not .

# Warm-up (Highly recommended)
# Playing With Numbers Series
# Notes
# Number passed is always Positive .
# Return the result as String
# Input >> Output Examples
# 1- disariumNumber(89) ==> return "Disarium !!"
# Explanation:
# Since , 81 + 92 = 89 , thus output is "Disarium !!"
# 2- disariumNumber(564) ==> return "Not !!"
# Explanation:
# Since , 51 + 62 + 43 = 105 != 546 , thus output is "Not !!"

def disarium_number(n)
  sum = 0
  n.to_s.split("").each_with_index { |num, ind| sum += num.to_i ** (ind + 1) }
  p sum == n ? "Disarium !!" : "Not !!"
end

disarium_number(89)
disarium_number(564)

# describe "Basic tests" do
#   Test.assert_equals(disarium_number(89),"Disarium !!")
#   Test.assert_equals(disarium_number(564),"Not !!")
#   Test.assert_equals(disarium_number(1024),"Not !!")
#   Test.assert_equals(disarium_number(135),"Disarium !!")
#   Test.assert_equals(disarium_number(136586),"Not !!")
# end