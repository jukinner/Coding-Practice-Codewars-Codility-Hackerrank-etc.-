# Exercise Description
# Implement a method that returns all of the potential products of two integers in Ruby up through a certain range.

# Sample Input
# 1..120000 # range
# 200 # number 1
# 73 # number 2
# Expected Output
# [14600, 29200, 43800, 58400, 73000, 87600, 102200, 116800]


require 'rspec'

def mod_checker (arr, num1, num2)
  x = num1
  empty = []
  while x <= arr.to_a.last
    if x % num2 == 0
      empty << x
      x += num1
    else
      x += num1
    end
  end
  p empty
end

describe 'Mod checker' do
  it 'returns the first value divisible by 12 and 16' do
    expect(mod_checker(1..200, 12, 16)).to eq([48, 96, 144, 192])
    expect(mod_checker(1..120000, 200, 73)).to eq([14600, 29200, 43800, 58400, 73000, 87600, 102200, 116800])
  end
end

# Jordan's Answer
def mod_checker arr, num1, num2
  arr.select do |mod|
    mod % num1 == 0 && mod % num2 == 0
  end
end