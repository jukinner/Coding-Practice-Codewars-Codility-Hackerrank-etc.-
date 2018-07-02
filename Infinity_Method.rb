# Working with Infinity in Ruby
# Working with infinity can be a unique challenge in many different programming languages. Thankfully Ruby offers a helpful library that allows you to implement infinity into programs, and that's what this guide focuses on.
# Summary
# Build a method that utilizes infinity in order to generate a string based collection of any size.

# Exercise File
# Code File

# Exercise Description
# Leverage Ruby's Infinity library in order to build a method that generates a collection of string based integers of any size provided by the method argument.

# Example
# string_infinity_generator 10 # => ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
# string_infinity_generator 2 # => ["1", "2"]
# string_infinity_generator 20000 # => ["1", "2", ..., "20000"]

require 'rspec'
# first answer-most logical to me
def string_ininity_generator num
  (1..num).to_a.map {|x| x.to_s } 
end
# Alternative, leveraging infinity
# def string_infinity_generator num
#   arr = []

#   (1..Float::INFINITY).each do |i|
#     arr << i.to_s
#     break if i == num
#   end

#   arr
# end


describe 'Infinity string generator' do
  it 'an array of string based integers from 1 to 10 when 10 is the method argument' do
    expect(string_infinity_generator 10).to eq(["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"])
  end

  it 'an array of string based integers from 1 to 5 when 5 is the method argument' do
    expect(string_infinity_generator 5).to eq(["1", "2", "3", "4", "5"])
  end
end