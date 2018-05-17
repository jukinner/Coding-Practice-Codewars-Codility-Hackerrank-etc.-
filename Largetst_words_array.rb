
# Summary
# Implement a method that finds the largest words in a Ruby array.

# Exercise Description
# Given a number and an array of strings, find the largest strings in an array.


require 'rspec'
# Main answer
def largest_words strings, num
  strings.sort_by { |word| word.length }.last(3).reverse
end
# longer answer
# def largest_words strings, num
#   selected_words = []
#   i = 1
#   num.times do 
#     selected_words << strings.sort_by { |word| word.length }[-i]
#     i += 1
#   end
#   selected_words
# end


# Jordan's Answer---his answer is better BECAUSE it does not change the original array. it takes out the answer without sorting the array and simply returns the answers int he order they were given by their sorted block reason (length in this case. )
def largest_words strings, num
  strings.max_by(num) do |str|
    str.length
end

def largest_words strings, num
  strings.max_by(num) { |x| x.length }
end

describe 'Largest words' do
  it 'returns the largest words from an array' do
    strings = %w{a group of words that are variable length}
    expect(largest_words strings, 3).to eq(["variable", "length", "words"])
  end
end


