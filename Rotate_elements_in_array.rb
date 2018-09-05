# # Rotate Elements in an Array in Ruby

# Summary
# Build a method that dynamically rotates the indices for each of the values in a Ruby array.

# Exercise Description
# Build a method that takes two arguments: an array, and the number of indices that the array elements should be rotated.

# Sample Use
# array_rotation([1, 2, 3], 2) # [3, 1, 2]
# Real World Usage
# There are many times when you want to quickly rotate the elements in an array. This typically comes up when implementing algorithms that need to have flexible data structures.

require 'rspec'
# best and easiest practice
def array_rotation arr, num
  arr.rotate(num)
end

# alternate answer-manually
# def array_rotation arr, num
#   answer, i = [], 0
#   arr.each do |x|
#     answer.insert(i + num, x)
#     i += 1
#   end
#   answer.count(nil) - 1.times do 
#     pop = answer.pop
#     answer.unshift(pop)
#   end
#   answer.delete(nil)
#   answer
# end

array_rotation([1, 2, 3], 2)

describe 'Array index change' do
  it 'Rotates the index values for each of the array elements' do
    expect(array_rotation([1, 2, 3], 2)).to eq([3, 1, 2])
  end
end

