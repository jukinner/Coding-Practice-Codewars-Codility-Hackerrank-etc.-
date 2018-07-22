# Find Subarray with Given Sum | Set 1 (Nonnegative Numbers) in Ruby
# This guide will walk you through how to implement a method that checks the sum of every subarray one by one in order to find a subarray that equals the sum given.
# Summary
# Build a method that finds a continuous subarray which adds to equal a given number.

# Exercise Description
# Define a method that loops through each element in an array and determines if there is a subarray that adds up to equal a given number. Each element should add on to each other until the expected number is achieved. If the subarray sum exceeds the given number, you need to figure out how to bypass the first element and loop through the array again. If no subarray sum could be found, return a notification stating the fact.

# Example Data
# # Input: 
#   arr[] = {1, 4, 20, 3, 10, 5}, sum = 33
# # => Sum found between indexes 2 and 4

# # Input: 
#   arr[] = {1, 4, 0, 0, 3, 10, 5}, sum = 7
# # => Sum found between indexes 1 and 4

# # Input: 
#   arr[] = {1, 4}, sum = 0
# # => No subarray found

require 'rspec'

def subarray_sum arr, sum
  if arr.size == 1 && arr.first == sum
    return [0]
  end

  i = 0
  j = 1
  current_sum = arr[i]

  while j < arr.length
    current_sum += arr[j]
    j += 1

    while current_sum > sum && i < j-1
      current_sum -= arr[i]
      i += 1
    end

    if current_sum == sum
      p (i...j).to_a
    end
  end

  p 'No subarray found'
end


arr = [1, 4]
subarray_sum(arr, 0)

describe 'Find subarray with given sum' do
  it 'finds array index range for a sum of 33' do
    arr = [1, 4, 20, 3, 10, 5]
    expect(subarray_sum(arr, 33)).to eq([2, 3, 4])
  end

  it 'finds array index range for a sum of 7' do
    arr = [1, 4, 0, 0, 3, 10, 5]
    expect(subarray_sum(arr, 7)).to eq([1, 2, 3, 4])
  end

  it 'returns a string when no sub array is found' do
    arr = [1, 4]
    expect(subarray_sum(arr, 0)).to eq('No subarray found')
  end
end



# arr = [1, 4, 20, 3, 10, 5]
# sum = 33
# p arr[2..4].inject(&:+)
# status = false
# zero, one, x = 0, 1, 1
# to_sum = Array.new
# arr.length.times do 
#   (arr.length - x).times do 
#     # to_sum = Array.new
#     to_sum = arr[zero..one]
#     if to_sum.inject(&:+) == sum
#       break
#     else
#       x += 1
#     end
#   end
#   zero +=1
#   one = zero + 1
# end

# p to_sum


# arr = [1, 4, 20, 3, 10, 5]
# sum = 33
# i = 0
# j = 1
# current_sum = arr[i]
# if arr[0] == sum
#   p arr[0]
# else
#   while current_sum < sum 
    
#     current_sum += arr[j]
#     j += 1
#     p current_sum
#     break if current_sum == sum
#     if j = arr.length
      


#   end



