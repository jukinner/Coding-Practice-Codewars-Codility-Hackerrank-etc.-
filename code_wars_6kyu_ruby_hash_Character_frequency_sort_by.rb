# Write a function that takes a piece of text in the form of a string and returns the letter frequency count for the text. This count excludes numbers, spaces and all punctuation marks. Upper and lower case versions of a character are equivalent and the result should all be in lowercase.

# The function should return a list of tuples (in Python and Haskell) or arrays (in other languages) sorted by the most frequent letters first. The Rust implementation should return an ordered BTreeMap. Letters with the same frequency are ordered alphabetically. For example:

#   letter_frequency('aaAabb dddDD hhcc')
# will return

#   [['d',5], ['a',4], ['b',2], ['c',2], ['h',2]]
# Letter frequency analysis is often used to analyse simple substitution cipher texts like those created by the Caesar cipher.


def letter_frequency(text)    
  answer = text.downcase.gsub(/[^a-z]/,"")
  .split("").each_with_object(Hash.new(0)) { |item, hash| hash[item] += 1 }
  .sort_by {|word, freq| [-freq, word] }.to_a
end