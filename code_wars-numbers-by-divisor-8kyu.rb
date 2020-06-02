# Complete the function which takes two arguments and returns all numbers which are divisible by given divisor. First argument is an array of numbers and the second is the divisor.

# Example
# divisible_by([1, 2, 3, 4, 5, 6], 2) == [2, 4, 6]

# def divisible_by(numbers, divisor)
#   numbers.map! {|x| x if x % divisor == 0 }.compact
# end

def divisible_by(numbers, divisor)
  numbers.each_with_object([]) {|item, arr| arr << item if item % divisor == 0 }
end