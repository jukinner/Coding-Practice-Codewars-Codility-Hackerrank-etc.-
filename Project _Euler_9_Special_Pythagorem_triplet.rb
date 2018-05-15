# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a2 + b2 = c2
# For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# a**2 + b**2 = c**2
# a, b = 3,4

# p Math.sqrt(1000)

# i = 1
# # sum = i ** 2
# base = []
# squares = []
# 500.times do 
#   base << i
#   squares << (i ** 2)
#   i += 1
# end
# # i = 0
# # p squares
# # p base


# # if Math.sqrt(sum of 2 numbers from squares list) == whole number 
#   # push to an array and save the addition numbers. 
# # final = 0
# # answer = 0
# # r = 0
# # until final == 1000
# #   r = 0
# #   29.times do
# #     # squares.each do |x|
# #     answer = squares[i] + squares[r] + (squares[i] + squares[r])
# #     if answer == 1000
# #       final = 1000
# #       p final
# #       p squares[i]
# #       p squares[r]
# #     end
# #   break if final == 1000
# #   r += 1 
# #   end
# # i += 1
# # end

# # p (5*5.9572234).to_f
# # p 123.456.to_s.include?(".")
# r = 0
# z = 0
# initial_sum = []
# components = []
# 500.times do

#   500.times do
#     initial_sum << (squares[r] + squares[z]).to_f
#     components << [squares[r], squares[z]]
#     z += 1
#   end
#   r +=1
#   z -= 500
# end

# # p initial_sum
# # p components

# sqrt_c = []
# initial_sum.each do |x|
#   if Math.sqrt(x).to_f.to_s.end_with?(".0")
#     sqrt_c << Math.sqrt(x).to_f
#   end
# end

# # p sqrt_c
# initial_sum_index = []
# sqrt_c.each do |x| 
#   if initial_sum.include?(x**2)
#     initial_sum_index << [initial_sum.find_index(x**2), x, x**2]
#   end
# end
# # p initial_sum_index

# match_index = []
# initial_sum_index.each do |x|
#   match_index << x[0]
# end

# components_match = []
# match_index.each do |x| 
#   components_match << components[x]
# end

# # p components_match

# # array of all the squares
# # inital_sum is array of a squares and b squares added together
# # components is an array of the components that made up initial sum
# # sqrt_c is an array of the c squares whittled down to the cleanly divisible ones
# # initial_sum_index has index number of the sum that matches sqrt_c, the square rt, and the total sum(x squared)
# # match_index is a list of the index numbers from initial sum index that correspond to components and initial_sum
# # components match is a list of the 912 components that added up to make the sums from initial sum.

# final_answer = 0
# final_components = []
# # 912.times do
#   components_match.each do |x|
#       final_components = []
#       if 900 < (Math.sqrt(x[0])+Math.sqrt(x[1])+(Math.sqrt((x[0] + x[1])))) && (Math.sqrt(x[0])+Math.sqrt(x[1])+Math.sqrt((x[0] + x[1]))) < 1115
#         final_answer = (Math.sqrt(x[0])+Math.sqrt(x[1])+Math.sqrt((x[0] + x[1])))
#         p final_answer
#         final_components << Math.sqrt(x[0])
#         final_components << Math.sqrt(x[1])
#         final_components << Math.sqrt((x[0] + x[1]))
#         p final_components
#     end
#   end
# # end

timer_start = Time.now
 
product = 0
 
1.upto(1000) { |a|  
  (a+1).upto(1000) { |b|
    c = 1000 - a - b
    if (a*a + b*b == c*c)
       product = a*b*c
       break
    end   
  }
  break if product > 0
}
 
puts product
puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"






