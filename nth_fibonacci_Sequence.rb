# Build a method that returns the nth Fibonacci number.

# Exercise Description
# Build a method that takes in a number, that represents n, and returns the nth Fibonacci number in the sequence.

# Sample Input
# nth_fibonacci 10
# Expected Output
# 89

def nth_fibonacci num
start, first, count = 0,1,0
  until count == num
    fib = start + first
    start, first, count = first, fib, count + 1
  end
  p fib 
end

require 'rspec'

describe 'Fibbonacci' do
  it 'properly calculates the fibonacci value' do
    expect(nth_fibonacci 10).to eq(89)
  end
end

# def fibonacci num 
#   i = 0
#   array = [0,1]
#   while i < num
#     array[i+2] = array[i] + array[i+1]
#     i = i+1
#   end 
#   return array.last
# end 