# You will be given an array of values.

# For simplicity sake you can assume that all the numbers will be non-negative integers.

# The goal is to create a class that handles finding all the values in the array that are within a given range of each other.

# Return the final values in ascending order.

# For Example
# Given
# [5, 32, 5, 1, 31, 70, 30, 8]
# and you want to know all the values that fall within a difference of 2 of each other:

# Should Return
# [5,5,30,31,32]
# If an empty array is given, then an empty array should be returned regardless of the value passed in.

require 'rspec'

class GroupByDifference
  def initialize(numbers)
    @numbers = numbers.sort
  end
  
  def find(difference)
    return [] if @numbers.empty?
    index = 0
    answer = @numbers.each_with_object([]) do |item, arr|
      range = (@numbers[index]..(@numbers[index] + difference)).to_a
      if range.include?(@numbers[index+1])
        arr << @numbers[index]
      elsif ((range[0]-difference)..range[0]).to_a.include?(@numbers[index-1])
        arr << @numbers[index]
      end
      index += 1
    end
    answer
  end
end

# 2nd answer
class GroupByDifference
  def initialize(numbers)
    @numbers = numbers.sort
  end
  
  def find(difference)
    @numbers.select.with_index {|x, i|
       (i > 0 and @numbers[i-1] + difference >= x) or (i < @numbers.length - 1 and @numbers[i+1] <= difference + x)
    }
  end
end

numbers = [5, 32, 5, 1, 31, 70, 30, 8]
GroupByDifference.new(numbers).find(1)

describe 'Find All Array Values That Fall Within a Given Difference' do
  it 'handles 100' do
    numbers = [5, 32, 5, 1, 31, 70, 30, 8]
    expect(GroupByDifference.new(numbers).find(100)).to eq([1,5,5,8,30,31,32,70])
  end

  it 'handles small numbers' do
    numbers = [5, 32, 5, 1, 31, 70, 30, 8]
    expect(GroupByDifference.new(numbers).find(3)).to eq([5,5,8,30,31,32])
  end

  it 'handles small numbers' do
    numbers = [5, 32, 5, 1, 31, 70, 30, 8]
    expect(GroupByDifference.new(numbers).find(2)).to eq([5,5,30,31,32])
  end

  it 'handles small numbers' do
    numbers = [5, 32, 5, 1, 31, 70, 30, 8]
    expect(GroupByDifference.new(numbers).find(0)).to eq([5,5])
  end

  it 'handles an emptry array' do
    arr = []
    expect(GroupByDifference.new([]).find(10)).to eq([])
  end
end