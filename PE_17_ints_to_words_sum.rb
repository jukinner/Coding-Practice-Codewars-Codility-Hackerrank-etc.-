# Number letter counts
# Problem 17 
# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?


# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
require 'to_words'

def to_words(n)
  bank = (1..n).to_a
  words = []
  words = bank.map {|x| words << x.to_words.gsub(" ", "")}
  # p words[0][0].length
  i = 0
  total = 0 
  (n).times do 
    total = total + words[0][i].length
    i += 1
  end
  p total
  p i 
  # words = words.map {|r| r = r.length}
  # words
end

to_words(1000)