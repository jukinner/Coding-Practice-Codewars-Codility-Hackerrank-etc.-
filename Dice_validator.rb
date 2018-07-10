# Build a Dice Validator in Ruby
# Building validations in programs is a common requirement. In this exercise we'll examine how to ensure a set of dice are valid by implementing a method that returns false if the dice are outside the range of 1-6.
# Summary
# Build a dice validator program.

# Exercise Description
# Implement a program that checks to see if a roll of two dice is valid or not.

# Example Input/Output
# valid_dice? 4, 2 # => true
# valid_dice? 6, 6 # => true
# valid_dice? 5, 1 # => true
# valid_dice? 8, 2 # => false
# valid_dice? 1, 7 # => false
# valid_dice? 9, 7 # => false
# Real World Usage
# Working with range based validations are a common requirement for a wide variety of applications. Imagine a situation where you need to see if a user's zip code falls inside of a certain range of numbers. There are a number of ways to implement this solution, I personally opted for the version that worked with collections of data.

require 'rspec'
# Initial try
def valid_dice? a, b 
  range = (1..6).to_a
  if range.include?(a) && range.include?(b)
    return true
  else
    return false
  end
end

# Alternate way to do
# require 'rspec'

# def valid_dice? d1, d2
#   [d1, d2].all_between?(1, 6) ? true : false
# end

# class Array
#   def all_between? top, bottom
#     each do |e|
#       return false unless e.between? top, bottom
#     end
#   end
# end

describe 'dice_validator' do
  it 'returns true if the dice are valid' do
    expect(valid_dice? 4, 2).to eq(true)
    expect(valid_dice? 6, 6).to eq(true)
    expect(valid_dice? 5, 1).to eq(true)
  end

  it 'returns false if the/a dice are/is invalid' do
    expect(valid_dice? 8, 2).to eq(false)
    expect(valid_dice? 1, 7).to eq(false)
    expect(valid_dice? 9, 7).to eq(false)
  end
end

# p (1..6).to_a
# valid_dice? 4, 2