# Finding the Largest Word in a Ruby Array of Mixed Strings

# Implement a method that returns the longest string in an array of mixed strings.

# Exercise Description
# Build a method that returns the largest word in a Ruby array, even when it's filled with variable length strings.

# Sample Input
# ['A sentence', 'broken into several', 'array elements']
# Expected Output
# 'sentence'
# Real World Usage
# This is an important skill to understand when it comes to working with data that isn't formatted perfectly, which is common when working with machine learning algorithms.

require 'rspec'
# my answer
class Array
  def largest_word
    join(" ").split(" ").max_by(&:length)
  end
end

# jordan's answer
# class Array
#   def largest_word
#     flat.map(&:split).max_by(&:length)
#   end
# end



describe 'Word max' do
  it 'returns the longest word from an array' do
    arr = ['A sentence', 'broken into several', 'array elements']
    expect(arr.largest_word).to eq('sentence')
  end
end


arr = ['A sentence', 'broken into several', 'array elements']
# p arr.join(" ").split(" ").sort_by { |word| word.length && }
# p arr.join(" ").split(" ").max_by(&:length)

# p arr.flat_map(&:split)

# arr.largest_word