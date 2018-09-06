# Create an Immutable Array in Ruby
# In this coding exercise you'll learn how to create an immutable array in Ruby.
# Summary
# Create an immutable array in Ruby.

# Exercise Description
# Given the following array:

# [1, 2, 3]
# Update the array so that it cannot be changed. If an attempt is made to alter the array, it should raise a runtime error

# Example Process
# [1, 2, 3] << 4
# # ~> RuntimeError: can't modify frozen Array


require 'rspec'

unchangeable_elements = [1, 2, 3].freeze

describe 'Immutable array' do
  it 'does not allow an array to be altered' do
    expect{unchangeable_elements << 4}.to raise_error(RuntimeError)
  end
end

