# Rebuild the include? Method in Ruby to Check for Array Values
# In this coding exercise we'll walk through how to rebuild Ruby's include? method to see if a value exists inside of an array.
# Summary
# Rebuild Ruby's include? method and add a method to the Array class that checks to see if a value exists within an array.

# Exercise Description
# In order to properly pass this coding exercise you'll need to open up Ruby's Array class and add a method called does_it_have? that takes in an argument and then have the method return true or false depending on whether the element passed in as the method argument is included in the array or not.

# Sample Process
# arr = [2, 5, 100, 4]
# arr.does_it_have? 5 # true
# arr.does_it_have? 20 # false

require 'rspec'
# first answer
class Array
  def does_it_have? num
    answer = []
    self.each { |x| answer << x if x == num }
    p answer.count > 0 ? true : false
  end
end

# alternate answer
class Array
  def does_it_have? element
    each do |i|
      return true if i == element
    end

    false
  end
end

describe 'Include? clone' do
  it 'returns true if a supplied element is included in an array' do
    arr = [2, 5, 100, 4]
    expect(arr.does_it_have? 5).to eq(true)
    expect(arr.does_it_have? 20).to eq(false)
  end
end

