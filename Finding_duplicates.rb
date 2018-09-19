# Finding a Duplicate Element in Ruby
# In this guide you will be learning how to find the first repeated element from an array.
# Summary
# Build out a method for finding the first duplicate element from an array.

# Exercise Description
# "Define a method that will return the first repeated element from an array."

# Example Data
# arr_one = [5, 3, 4, 5, 3, 1]
# first_repeated_element(arr_one)
# => 5

# arr_two = [3, 5, 3, 4, 5, 3, 1]
# first_repeated_element(arr_two)
# => 5
# Real World Usage
# This exercise will help you prevent from using duplicate info within your code base.

require 'rspec'

def first_repeated_element(arr)
	answer = nil
	arr.uniq.each do |x| 
		if arr.count(x) > 1 
			answer = x
			break
		end
	end
	answer
end

# Jordan's answer
def first_repeated_element(arr)
  return nil if arr.empty?

  counter_hash = Hash.new { 0 }

  arr.each do |e|
    counter_hash[e] = counter_hash[e] += 1

    return e if counter_hash[e] > 1
  end

  return nil
end

# each_with_object(Hash.new { |h, k| h[k] = [] }) do | file, hash |

arr_one = [5, 3, 4, 5, 3, 1]
first_repeated_element arr_one

describe 'first_repeated_element' do
  it 'returns the first repeated element from an array' do
    arr_one = [5, 3, 4, 5, 3, 1]
    expect(first_repeated_element(arr_one)).to eq(5)

    arr_two = [3, 5, 3, 4, 5, 3, 1]
    expect(first_repeated_element(arr_two)).to eq(3)
  end

  it 'returns nil for an empty array' do
    arr = []
    expect(first_repeated_element(arr)).to eq(nil)
  end

  it 'returns nil if no duplicates are found' do
    arr = [1, 2, 3]
    expect(first_repeated_element(arr)).to eq(nil)
  end
end