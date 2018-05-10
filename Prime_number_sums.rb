# Create a method that totals a sequence of prime numbers.

# Exercise Description
# After being provided with a number, generate a sequence of prime numbers that are greater than or equal to the given number, and then return the total of the prime numbers.

# Prime numbers are important in a number of computer science fields, including: security and linear mathematical implementations. This guide will test your knowledge of how to work with the prime number library provided by Ruby.


require 'rspec'
require 'prime'



def prime_sum num 
  Prime.each(num).inject(&:+)
end

# prime_sum 22

describe 'Prime Sum' do
  it 'sums the sequence of prime numbers' do
    expect(prime_sum 22).to eq(77)
    expect(prime_sum 42).to eq(238)
  end
end

# p Prime.each(20).to_a
# p Prime.first(20).to_a