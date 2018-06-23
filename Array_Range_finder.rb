# Implement Range Finder Method in Ruby
# This guide examines how to find the range of values in an integer based array by returning an array that contains the high and low values.
# Summary
# Implement a method that indicates the range of values contained in an array of integers.

# Exercise Description
# Given an array of integers, build a method that returns an array that contains two elements, the low and high values of the array. This will indicate the full range of values contained in the array.

# Example Input
# To return the count by itself:

# [5, 1, 3, 11, 100, 23]. array_range_finder
# # [1, 100]
# Real World Usage
# This exercise will walk through your knowledge of ranges, specifically, you will need to know how to find the low and high values in an array and how to combine them and return an array that contains them.

require 'rspec'
# My answer
class Array
  def array_range_finder
    p uniq.sort.values_at(0,-1)
  end
end

# Jordan's Answer
# class Array
#   def array_range_finder
#     [self.min, self.max]
#   end
# end

describe 'Range finder' do
  it 'returns an array with the high and low range' do
    arr = [5, 1, 3, 11, 100, 23]
    expect(arr.array_range_finder).to eq([1, 100])
  end
end
