# In this Kata, you will implement the Luhn Algorithm, which is used to help validate credit card numbers.

# Given a positive integer of up to 16 digits, return true if it is a valid credit card number, and false if it is not.

# Here is the algorithm:

# Double every other digit, scanning from right to left, starting from the second digit (from the right).

# Another way to think about it is: if there are an even number of digits, double every other digit starting with the first; if there are an odd number of digits, double every other digit starting with the second:

# 1714 ==> [1*, 7, 1*, 4] ==> [2, 7, 2, 4]

# 12345 ==> [1, 2*, 3, 4*, 5] ==> [1, 4, 3, 8, 5]

# 891 ==> [8, 9*, 1] ==> [8, 18, 1]
# If a resulting number is greater than 9, replace it with the sum of its own digits (which is the same as subtracting 9 from it):

# [8, 18*, 1] ==> [8, (1+8), 1] ==> [8, 9, 1]

# or:

# [8, 18*, 1] ==> [8, (18-9), 1] ==> [8, 9, 1]
# Sum all of the final digits:

# [8, 9, 1] ==> 8 + 9 + 1 = 18
# Finally, take that sum and divide it by 10. If the remainder equals zero, the original credit card number is valid.

#   18 (modulus) 10 ==> 8 , which is not equal to 0, so this is not a valid credit card number







# My solution
def validate(n)
l = n.to_s.length
i = 0
split = n.to_s.reverse.split(//).map!{|x|x.to_i}
destination = []
  l.times do
    if i.odd?
        if split[i] * 2 <= 9
          destination << split[i] * 2
        else
          destination << (split[i] * 2 - 9)
        end
      else 
        destination << split[i] 
      end
      i += 1
    end
  p destination
  if destination.reduce(:+) %10 == 0
    true
  else
    false
  end
end

# best practice
def validate(n)
 n.to_s
   .split(//)
   .map(&:to_i)
   .reverse
   .map
   .with_index { |e,i| i.even? ? e:e*2  }
   .reverse
   .map { |x| x > 9 ? x-9 : x }
   .reduce(&:+) % 10 == 0
end
