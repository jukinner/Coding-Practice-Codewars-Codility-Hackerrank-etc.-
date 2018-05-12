# Largest palindrome product
# Problem 4 
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

i = 999
f = 999
number = i * f 

count = 1

until number.digits == number.digits.reverse
  number = i * f
  count += 1
  i -= 1
  if count == 100
    f -= 1 
    count = 1
    i = i + 99
  end 
end
p number



# p answer = i * f
# p Math.sqrt(answer).to_i
# until answer.digits == answer.digits.reverse
#   answer = answer - 1 

# end
# p answer



  # divisors = []
  # n = 1
  # while n <= number ** 0.5
  #   if number % n == 0
  #     divisors << n
  #     divisors << number / n unless number / n == n
  #   end
  #   n += 1
  # end
  # divisors.sort

# while answer.digits != answer.digits.reverse
#   answer = answer - 1
# end

# p answer
# p 99 * 99
# r = 9779
# p r.digits == r.digits.reverse

# if 9009.digits.uniq == 
#   largest 

# if word.downcase == word.downcase.reverse


# require 'prime'
# def factors_of(number)
#   primes, powers = number.prime_division.transpose
#   exponents = powers.map{|i| (0..i).to_a}
#   divisors = exponents.shift.product(*exponents).map do |powers|
#     primes.zip(powers).map{|prime, power| prime ** power}.inject(:*)
#   end
#   divisors.sort.map{|div| [div, number / div]}
# end

