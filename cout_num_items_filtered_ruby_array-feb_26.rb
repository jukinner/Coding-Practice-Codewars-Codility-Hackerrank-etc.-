# How to Count the Number of Items Filtered in a Ruby Array

# Summary
# Implement a method that counts all of the values in an array that over 10.

# Exercise Description
# Build out a method that counts the total number of array elements that are greater than 10.

# Sample Input
# [100, 2, 5, 10, 11]
# Expected Output
# 2
# Real World Usage
# This is a common Ruby coding interview question since it focuses on how well you know how to work with collections in Ruby.

require 'rspec'


def greater_than_10 (r)
  r.count { |e| e > 10 }
end

# Jordan's Answer
def greater_than_10 arr
  arr.count do |e|
    e > 10
  end
end

describe 'Array counter' do
  it 'counts how many elements are greater than 10' do
    arr = [100, 2, 5, 10, 11]
    expect(greater_than_10 arr).to eq(2)
  end
end
