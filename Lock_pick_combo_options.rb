# March 3 - Building a Combination Lock Picker in Ruby
# In this guide you'll learn how to build a method that returns the potential number of combinations associated with building a lock picking method, including both how to count the number of permutations and generating the full set of options.
# Summary
# Build a method that helps give the full set of combinations associated with figuring out the numbers to a combination lock.

# Exercise Description
# Given an array of integers, build a method that returns either the count or the actual combinations of numbers it will take to pick a combination lock.

# Example Input
# To return the count by itself:

# lockpick [14, 9, 29]
# # 6
# And to return the combination values:

# lockpick [14, 9, 29], combinations: true
# # [[14, 9, 29], [14, 29, 9], [9, 14, 29], [9, 29, 14], [29, 14, 9], [29, 9, 14]]

require 'rspec'

def lockpick x, combinations: false
  if combinations == false
    p x.permutation.to_a.count
  else
    p x.permutation.to_a
  end
end

describe 'Lockpick' do
  it 'tells you how many guesses it could take to guess the combination when given three numbers' do
    values = [14, 9, 29]
    expect(lockpick values). to eq(6)
  end

  it 'tells you how many guesses it could take to guess the combination when given any count of numbers' do
    values = [14, 9, 29, 44, 2, 33]
    expect(lockpick values). to eq(720)
  end

  it 'tells you the potential combinations if combinations is marked true' do
    values = [14, 9, 29]
    expect(lockpick values, combinations: true). to eq([[14, 9, 29], [14, 29, 9], [9, 14, 29], [9, 29, 14], [29, 14, 9], [29, 9, 14]])
  end
end

# values = [14, 9, 29, 44, 2, 33]
# p values.permutation.to_a

