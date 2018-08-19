# Build a Multiplication Table Generator in Ruby
# This coding exercise will test your ability to work with various data structures while performing mathematical calculations as you build a dynamic multiplication table generator in Ruby.
# Summary
# Build a program that dynamically generates a hash based multiplication table in Ruby.

# Exercise Description
# In order to pass this exercise you'll need to build a method that returns a hash based multiplication table, where the key is the base number, and the value are the products of the key and the numbers 1 through 10.

# Example
# multiplication_table 3

# {
#   1=>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
#   2=>[2, 4, 6, 8, 10, 12, 14, 16,18, 20],
#   3=>[3, 6, 9, 12, 15, 18, 21, 24, 27, 30]
# }
# Real World Usage
# This exercise combines a number of key programming concepts, such as:

# Working with hashes
# Performing mathematical equations on collections of data
# Dynamically generating arrays, filling them with data, and then clearing elements

require 'rspec'
# 1st answer
def multiplication_table num
  answer_hash, array = Hash.new, []
  (1..num).to_a.each do |x|
    (1..10).to_a.each do |y|
      array << x * y
    end
    answer_hash[x] = array
    array = []
  end 
  answer_hash
end

# 2nd answer
def multiplication_table num
  answer_hash = []
  (1..num).to_a.each_with_object(Hash.new) do |e, hash|
    (1..10).to_a.each { |y| answer_hash << e * y }
    hash[e] = answer_hash
    answer_hash = []
  end
end

# 3rd answer
def multiplication_table num
  hash = Hash.new

  1.upto(num).each do |i|
    products = []

    (1..10).to_a.each do |e|
      products.push(e * i)
    end

    hash[i] = products
  end

  hash
end


describe 'Multiplication table' do
  it 'Creates a hash based multiplcation table' do
    hash = {
      1=>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
      2=>[2, 4, 6, 8, 10, 12, 14, 16,18, 20],
      3=>[3, 6, 9, 12, 15, 18, 21, 24, 27, 30]
    }

    expect(multiplication_table 3).to eq(hash)
  end
end



# Iterator 1: 1 to num
# Iterator 2: current num * (1..10)
# 1 Hash
# Nested arrays
#
# Iterate from 1 to provided num
#   iterate from current num
#     nested element * current num and added to array
#   add new key and array value to hash
#   return final hash
