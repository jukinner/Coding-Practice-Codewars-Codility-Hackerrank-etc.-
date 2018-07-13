# Find Largest Word in Dictionary by Deleting Some Characters of Given String in Ruby
# In this guide, you will learn how to implement a method to find if a string is subsequence of another string or not and if so, return the longest word of the given string that is a subsequence.
# Summary
# Define a method that can figure out what is the largest dictionary word in a given string.

# Exercise Description
# Build out a method that can successfully take in a list of dictionary words and a given string of characters, figure out which of the listed words could possibly be made from the string given, and then print out the longest word that was found.

# Examples
#   dict = {"ale", "apple", "monkey", "plea"}   
#   str = "abpcplea"  
# # Output : apple 

require 'rspec'
# My attempt- did not work with devcampdevcamp
# def largest_hidden_word(words, word_to_clean)
#   chosen, difference = "", []
#   words.each do |x|
#     p difference = word_to_clean.chars - x.chars 
#     p remaining = word_to_clean.chars - difference
#     if remaining.join("").include?(x) && x.size >= chosen.size
#       p chosen = chosen + x
#     end
#   end
#   p chosen
# end
# alternative that works. much better
def largest_hidden_word words, word_to_clean
  words.each_with_object([]) do |word, arr|
    arr << word.split(//).keep_if do |c|
      word_to_clean.include? c
    end
  end.sort_by do |e|
    e.count
  end.last.join
end

describe 'Find largest word in dictionary by deleting some characters of given string' do
  it 'return apple for a string of abpcplea' do
    word_to_clean = 'abpcplea'
    words = %w{ale apple monkey plea}
    expect(largest_hidden_word(words, word_to_clean)).to eq('apple')
  end

  it 'return devcamp for a string of dbenvcadmep' do
    word_to_clean = 'dbenvcadmep'
    words = %w{devcamp devcampdevcamp notamatch devsomething}
    expect(largest_hidden_word(words, word_to_clean)).to eq('devcampdevcamp')
  end
end



