# The sum of the squares of the first ten natural numbers is,

# 1**2 + 2**2 + ... + 10**2 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)**2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

# p Math.sqrt(12)

sum_squares = (1..100).to_a
sum_squares_total = sum_squares.map { |e| e**2 }.inject(&:+)

square_sums = (1..100).to_a
square_sums_total = square_sums.inject(&:+)**2


answer = square_sums_total - sum_squares_total
p answer

