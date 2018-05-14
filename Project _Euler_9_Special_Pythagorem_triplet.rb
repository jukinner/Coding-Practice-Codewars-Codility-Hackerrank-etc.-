# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a2 + b2 = c2
# For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# a**2 + b**2 = c**2
# a, b = 3,4

# p Math.sqrt(1000)

i = 1
# sum = i ** 2
base = []
squares = []
500.times do 
  base << i
  squares << (i ** 2)
  i += 1
end
# i = 0
# p squares
# p base


# if Math.sqrt(sum of 2 numbers from squares list) == whole number 
  # push to an array and save the addition numbers. 
# final = 0
# answer = 0
# r = 0
# until final == 1000
#   r = 0
#   29.times do
#     # squares.each do |x|
#     answer = squares[i] + squares[r] + (squares[i] + squares[r])
#     if answer == 1000
#       final = 1000
#       p final
#       p squares[i]
#       p squares[r]
#     end
#   break if final == 1000
#   r += 1 
#   end
# i += 1
# end

# p (5*5.9572234).to_f
# p 123.456.to_s.include?(".")
r = 0
i = 0
initial_sum = []
components = []
500.times do

  500.times do
    initial_sum << (squares[r] + squares[i]).to_f
    components << [squares[r], squares[i]]
    i += 1
  end
  r +=1
  i -= 500
end

p initial_sum
# p components

sqrt_c = []
initial_sum.each do |x|
  if Math.sqrt(x).to_f.to_s.end_with?(".0")
    sqrt_c << Math.sqrt(x).to_f
  end
end

p sqrt_c
initial_sum_index = []
sqrt_c.each do |x| 
  if initial_sum.include?(x**2)
    initial_sum_index << [initial_sum.find_index(x**2), x, x**2]
  end
end
p initial_sum_index
