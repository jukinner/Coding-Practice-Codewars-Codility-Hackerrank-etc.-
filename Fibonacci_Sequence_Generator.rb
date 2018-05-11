# Create a method that generates the Fibonacci sequence.

# Exercise Description
# Build a method that returns an array of the Fibonacci sequence of a pre-defined number of values.

# Sample Process
# Definition: Characterized by the fact that every number after the first two is the sum of the two preceding ones.

# fibonacci 10
# Expected Output
# [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]

require 'rspec'

def fibonacci num 
  i = 0
  array = [0,1]
  while i < num
    array[i+2] = array[i] + array[i+1]
    i = i+1
  end 
  return array
end 

# Jordan's Answer
def fibonacci num
  (1..num).inject( [0, 1] ) { | fib | fib << fib.last(2).inject(:+) }
end


describe 'Fibbonacci' do
  it 'properly calculates the fibonacci value' do
    expect(fibonacci 10).to eq([0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89])
  end
end


# i = 0
# p array = [0,1]
# p array[0]
# p array[i+2] = array[i] + array[i+1]
# p array[2]

# fibonacci 10
