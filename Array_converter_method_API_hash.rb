# Create an Array Converter Method
# This ruby coding exercise tests your ability to convert multiple arrays and the data inside of them. The solution also covers how to effectively work with blocks in Ruby.
# Summary
# Create an array converter method that combines a variable number of arrays of strings and converts all of the elements to integers.

# Exercise Description
# Given any number of arrays containing strings, such as:

# arr_1 = ['1', '5', '9']
# arr_2 = ['10', '2', '7', '10']
# arr_3 = ['3', '4', '0']
# Merge all of the arrays into a single array and convert each of the strings to integers.

# Sample Output
# [1, 5, 9, 10, 2, 7, 10, 3, 4, 0]
# Real World Usage
# This is a common requirement when working with API data. Many APIs will send data that contains collections of data,
 # and if you're using JSON APIs the data will be of the string data type, even when it's representing numbers. With this is 
 # mind it's important to understand how to combine collections and convert their respective data types so that you 
 # can work with the data.

require 'rspec'
# first pass
# def array_converter *arrays
# 	answer = []
# 	arrays.each do |x|
# 		x.each { |y| answer << y.to_i }
# 	end
# 	p answer
# end


# best practice
def array_converter *arrays
	p arrays.each_with_object([]) { |i,a| i.each { |x| a << x.to_i } }
end

# Jordan's answer
def array_converter *arrays
  arrays.flatten.map(&:to_i)
end

describe 'Combine arrays and convert strings to integers' do
  it 'can take in a variable number of arrays and return a single array' do
    arr_1 = ['1', '5', '9']
    arr_2 = ['10', '2', '7', '10']
    arr_3 = ['3', '4', '0']
    expect(array_converter(arr_1, arr_2, arr_3).count).to eq(10)
    expect(array_converter(arr_1).first).to eq(1)
  end
end