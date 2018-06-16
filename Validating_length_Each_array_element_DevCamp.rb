# February 25 - Validating the Length of Each Array Element in Ruby

# Summary
# Build a method that validates the length of every element of an Array in Ruby.

# Exercise Description
# Implement a method that ensures that all of the elements in a Ruby array are a certain length.

# Sample Input
# %w{words that have size requirements} # validate that all strings are at least 4 characters long
# Expected Output
# true
# Real World Usage
# This is a common Ruby interview question, specifically, this will test your knowledge of how to filter through an array for specific lengths.

require 'rspec'
# My answer
class Array
  def at_least_four_characters?
    all? { |word| word.length >= 4 }
  end

end


# # Jordan's Answer
# class Array
#   def at_least_four_characters?
#     all? do |e|
#       e.length >= 4
#     end
#   end
# end

describe 'Four characters?' do
  it 'checks if an array contains elements that are all at least 4 characters long' do
    arr_one = %w{words that have size requirements}
    arr_two = %w{words that have are not all 4 characters long}
    expect(arr_one.at_least_four_characters?).to eq(true)
    expect(arr_two.at_least_four_characters?).to eq(false)
  end
end


